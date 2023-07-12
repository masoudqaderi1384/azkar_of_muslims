import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:permission_handler/permission_handler.dart';

class Compass extends StatefulWidget {
  const Compass({Key? key}) : super(key: key);

  @override
  State<Compass> createState() => _CompassState();
}

class _CompassState extends State<Compass> {
  bool _hasPermissions = false;

  @override
  void initState() {
    super.initState();

    _fetchPermissionStatus();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Builder(
          builder: (context) {
            if (_hasPermissions) {
              return _buildCompass();
            } else {
              return _buildPermissionSheet();
            }
          },
        ),
      ),
    );
  }

  Widget _buildCompass() {
    return StreamBuilder<CompassEvent>(
      stream: FlutterCompass.events,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error reading heading: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        double? direction = snapshot.data!.heading;

        // if direction is null, then device does not support this sensor
        // show error message
        if (direction == null) {
          return const Center(
            child: Text("Device does not have sensors !"),
          );
        }

        return NeuCircle(
          child: Transform.rotate(
            angle: (direction * (math.pi / 180) * -1),
            child: Image.asset(
              'assets/compass.png',
              color: Colors.blue[900],
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }

  Widget _buildPermissionSheet() {
    return Center(
      child: ElevatedButton(
        child: const Text('Request Permissions'),
        onPressed: () {
          Permission.locationWhenInUse.request().then((ignored) {
            _fetchPermissionStatus();
          });
        },
      ),
    );
  }

  void _fetchPermissionStatus() {
    Permission.locationWhenInUse.status.then((status) {
      if (mounted) {
        setState(() => _hasPermissions = status == PermissionStatus.granted);
      }
    });
  }
}
class NeuCircle extends StatelessWidget {
  final child;
  const NeuCircle({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      alignment: Alignment.center,
      margin: EdgeInsets.all(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade400,
              offset: Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
          BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.grey.shade100,
            Colors.grey.shade200,
            Colors.grey.shade300,
            Colors.grey.shade400,
          ],
          stops: [0.1, 0.3, 0.8, 1],
        ),
      ),
      child: child,
    );
  }
}