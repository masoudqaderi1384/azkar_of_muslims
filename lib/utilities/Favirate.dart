import 'package:azkar_of_muslims/utilities/gear.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var my_program =
    "اپلیکیشن ضیاء الاذکار یک برنامه کاربردی موبایل است که برای کمک به کاربران در انجام عبادات و ذکر خداوند و اجرای اعمال دینی طراحی شده است. این برنامه دارای امکاناتی همچون اوقات نماز، اذکار صبح و شام، دعاهای مسنون و سلاح مومن است.\nاطلاعات موجود در این اپلیکیشن از منابع قابل اعتماد و مستند مانند احادیث صحیح و منابع دینی استخراج شده است. این برنامه همچنین دارای امکاناتی مانند ساعت، قطب‌نما و تقویم اسلامی است که کاربران را در برنامه‌ریزی فعالیت‌هایشان کمک می‌کند.\nدر کل، این اپلیکیشن به عنوان یک راهکار کامل و کارآمد برای انجام عبادات و اجرای اعمال دینی برای کاربران علاقه‌مند به دین اسلام، بسیار مفید واقع می‌شود.";
var my_programer = "پوهنتون هرات یکی از دانشگاه‌های معتبر افغانستان است که در شهر هرات واقع شده است و از سال ۱۳۷۲ فعالیت خود را آغاز کرده است. دانشکده کامپیوتر ساینس این دانشگاه نیز یکی از دانشکده‌های بسیار مهم و پرطرفدار این دانشگاه است که دانشجویان را در زمینه علوم کامپیوتر آموزش می‌دهد.\nمسعود قادری نیز یکی از دانشجویان این دانشکده بوده و در رشته کامپیوتر ساینس تحصیل کرده است. او در طول دوره تحصیلی خود، به عنوان یک برنامه‌نویس و کارآفرین، فعالیت‌های بسیاری در زمینه فناوری اطلاعات انجام داده و در نهایت برنامه ضیاء الاذکار را طراحی کرده است که با استقبال بسیاری از کاربران مواجه شده است.";

class Favirate extends StatefulWidget {
  const Favirate({Key? key}) : super(key: key);

  @override
  State<Favirate> createState() => _FavirateState();
}

class _FavirateState extends State<Favirate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 25.0, top: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "تنظیمات",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Afghan',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12.0)),
                    padding: EdgeInsets.all(12.0),
                    child: FaIcon(FontAwesomeIcons.gear, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0)),
                ),
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius: BorderRadius.circular(10.0)),
                      height: 10,
                      width: 75,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                        child: ListView(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => About_Program()),
                            );
                          },
                          child: Gear(
                              name: "درباره برنامه",
                              icon: FontAwesomeIcons.paintRoller),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context) =>About_Programer()),);
                          },
                          child: Gear(
                              name: "درباره سازنده",
                              icon: FontAwesomeIcons.solidAddressCard),
                        ),
                        GestureDetector(onTap: (){
                          Navigator.pop(context);
                        },
                          child: Gear(
                              name: "خروج",
                              icon: FontAwesomeIcons.arrowRightFromBracket),
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class About_Program extends StatelessWidget {
  const About_Program({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_backspace_rounded),
        ),
      ),
      body: ListView(children: [
        Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  my_program,
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class About_Programer extends StatelessWidget {
  const About_Programer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_backspace_rounded),
        ),
      ),
      body: ListView(children: [
        Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  my_programer,
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}