import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class Clock_page extends StatefulWidget {
  const Clock_page({Key? key}) : super(key: key);

  @override
  _Clock_pageState createState() => _Clock_pageState();
}

class _Clock_pageState extends State<Clock_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.only(left: 25.0, top: 25.0, right: 25.0),
              child: Center(
                child: Container(
                  height: 300,
                  width: 300,
                  child: AnalogClock(
                    dateTime: DateTime.now(),
                    isKeepTime: true,
                    dialColor: Colors.grey[200],
                    dialBorderColor: Colors.blue[800],
                    dialBorderWidthFactor: 0.24,
                    markingColor: Colors.grey[200],
                    hourNumberColor: Colors.grey[200],
                    hourNumbers: const [
                      '1',
                      '2',
                      '3',
                      '4',
                      '5',
                      '6',
                      '7',
                      '8',
                      '9',
                      '10',
                      '11',
                      '12'
                    ],
                    hourNumberSizeFactor: 0.5,
                    hourNumberRadiusFactor: 1.48,
                    hourHandColor: Colors.grey[700],
                    hourHandWidthFactor: 1.2,
                    hourHandLengthFactor: 1.2,
                    minuteHandColor: Colors.grey[700],
                    minuteHandWidthFactor: 1.2,
                    minuteHandLengthFactor: 1.2,
                    secondHandColor: Colors.blue[700],
                    secondHandWidthFactor: 1.2,
                    secondHandLengthFactor: 1.0,
                    centerPointColor: Colors.blue[800],
                    centerPointWidthFactor: 1.2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 50),
                DigitalClock(
                  hourDigitDecoration: BoxDecoration(
                      color: Colors.yellow,
                      border: Border.all(color: Colors.blue, width: 2)),
                  minuteDigitDecoration: BoxDecoration(
                      color: Colors.yellow,
                      border: Border.all(color: Colors.red, width: 2)),
                  secondDigitDecoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(color: Colors.blue),
                      shape: BoxShape.circle),
                  secondDigitTextStyle: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Colors.white),
                ),
                const Text(
                  "ساعت",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Afghan',
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
//https://youtu.be/fchEcBc2D8A
//https://youtu.be/ScPrlcFkf5Q