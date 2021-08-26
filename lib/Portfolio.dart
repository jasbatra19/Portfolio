import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}

final Uri emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'jasbatra01@gmail.com',
  query: encodeQueryParameters(
      <String, String>{'subject': 'Example Subject & Symbols are allowed!'}),
);

class PortFolio extends StatefulWidget {
  const PortFolio({Key? key}) : super(key: key);

  @override
  _PortFolioState createState() => _PortFolioState();
}

class _PortFolioState extends State<PortFolio>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? animation;
  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 1800), vsync: this);
    animation =
        new CurvedAnimation(parent: controller!, curve: Curves.bounceInOut)
          ..addListener(() {
            setState(() {});
          });

    controller!.forward();
  }

  Widget build(BuildContext context) {
    double elevation = 4.0;
    double scale = 1.0;
    Offset translate = Offset(0, 0);
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    // height: size.height * 0.2,
                    // width: size.width,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            " Jasmine Batra | Developer | Undergraduate",
                            textScaleFactor: animation!.value * 1.5,
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 8.0,
                                    color: Colors.black54,
                                    offset: Offset(5.0, 5.0),
                                  ),
                                ],
                                color: Colors.black,
                                fontSize: 35,
                                fontFamily: "Courgette"),
                          ),
                        ),
                        Container(
                          height: size.height * 0.2,
                          child: Image.asset(
                            "images/code.jpg",
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple.withOpacity(0.3)),
                    child: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "</coder> ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Center(
                            child: CircleAvatar(
                              radius: 80,
                              backgroundImage: AssetImage("images/jasmine.jpg"),
                            ),
                          ),
                          Text(
                            " </designer>",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: size.width,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Computer Science Student and Tech Lover,at Thapar Institute of Engineering & Technology,Schooling from -> Sacred Heart Convent School,Sarabha Nagar,Ludhiana",
                      style: TextStyle(
                          fontFamily: "Courgette",
                          fontSize: 20,
                          color: Colors.purple.shade400),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Skills and progress",
                          style: TextStyle(
                              color: Colors.pink.shade500,
                              fontFamily: "Courgette",
                              fontSize: 30),
                        ),
                      ),

                      //-----------------------------
                      //------------------------
                      //-------------------
                      FittedBox(
                        child: Container(
                          margin:
                              EdgeInsets.only(left: 20, right: 20, bottom: 20),
                          decoration: BoxDecoration(
                              color: Colors.pink.shade50,
                              borderRadius: BorderRadius.circular(20)),
                          height: size.height * 0.3,
                          width: size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.pink.shade50,
                                margin: EdgeInsets.all(10),
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  "images/cpp.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: size.height * 0.2,
                                  width: size.width * 0.1,
                                  padding: EdgeInsets.all(20),
                                  color: Colors.pink.shade50,
                                  child: Text(
                                    "I am proficient in C++,I have made TICTACTOE game in C++.I have gold badge in HackerRank",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.pink.shade50,
                              borderRadius: BorderRadius.circular(20)),
                          height: size.height * 0.3,
                          width: size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.pink.shade50,
                                margin: EdgeInsets.all(10),
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  "images/c.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: size.height * 0.2,
                                  width: size.width * 0.1,
                                  padding: EdgeInsets.all(20),
                                  color: Colors.pink.shade50,
                                  child: Text(
                                    "I also have knowledge of C Programming Language",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.pink.shade50,
                              borderRadius: BorderRadius.circular(20)),
                          height: size.height * 0.3,
                          width: size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.pink.shade50,
                                margin: EdgeInsets.all(10),
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  "images/flutter.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: size.height * 0.2,
                                  width: size.width * 0.1,
                                  padding: EdgeInsets.all(20),
                                  color: Colors.pink.shade50,
                                  child: Text(
                                    "I am well acquinted with flutter and dart for building apps and web pages.I have also done lots of projects",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.pink.shade50,
                              borderRadius: BorderRadius.circular(20)),
                          height: size.height * 0.3,
                          width: size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.pink.shade50,
                                margin: EdgeInsets.all(10),
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  "images/java.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: size.height * 0.2,
                                  width: size.width * 0.1,
                                  padding: EdgeInsets.all(20),
                                  color: Colors.pink.shade50,
                                  child: Text(
                                    "Basics of java learnt at school level.Familiar with the syntax and basics.",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.pink.shade50,
                              borderRadius: BorderRadius.circular(20)),
                          height: size.height * 0.3,
                          width: size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.pink.shade50,
                                margin: EdgeInsets.all(10),
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  "images/mysql.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: size.height * 0.2,
                                  width: size.width * 0.1,
                                  padding: EdgeInsets.all(20),
                                  color: Colors.pink.shade50,
                                  child: Text(
                                    "Basics of MySQL for Database Management learnt at school-level.",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    child: Container(
                      color: Colors.black,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "For projects/collab :",
                            style: TextStyle(
                                color: Colors.amber,
                                fontFamily: "Courgette",
                                fontSize: 25),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onHover: (value) {
                                  if (value) {
                                    setState(() {
                                      elevation = 20.0;
                                      scale = 2.0;
                                      translate = Offset(20, 20);
                                    });
                                  } else {
                                    setState(() {
                                      elevation = 4.0;
                                      scale = 1.0;
                                      translate = Offset(0, 0);
                                    });
                                  }
                                },
                                onTap: () => launch(
                                    "https://www.instagram.com/jasbatra01/"),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  width: 100,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset("images/insta.jpeg")),
                                ),
                              ),
                              InkWell(
                                onHover: (value) {
                                  if (value) {
                                    setState(() {
                                      elevation = 20.0;
                                      scale = 2.0;
                                      translate = Offset(20, 20);
                                    });
                                  } else {
                                    setState(() {
                                      elevation = 4.0;
                                      scale = 1.0;
                                      translate = Offset(0, 0);
                                    });
                                  }
                                },
                                onTap: () => launch(
                                    "https://www.linkedin.com/in/jasmine-batra-a11ba41bb/"),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  width: 100,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset("images/link.jpeg")),
                                ),
                              ),
                              InkWell(
                                onHover: (value) {
                                  if (value) {
                                    setState(() {
                                      elevation = 20.0;
                                      scale = 2.0;
                                      translate = Offset(20, 20);
                                    });
                                  } else {
                                    setState(() {
                                      elevation = 4.0;
                                      scale = 1.0;
                                      translate = Offset(0, 0);
                                    });
                                  }
                                },
                                onTap: () =>
                                    launch("https://github.com/jasbatra19"),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  width: 100,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset("images/github.jpeg")),
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                              onHover: (value) {
                                if (value) {
                                  setState(() {
                                    elevation = 20.0;
                                    scale = 2.0;
                                    translate = Offset(20, 20);
                                  });
                                } else {
                                  setState(() {
                                    elevation = 4.0;
                                    scale = 1.0;
                                    translate = Offset(0, 0);
                                  });
                                }
                              },
                              onTap: () => launch(emailLaunchUri.toString()),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.email_rounded,
                                    size: 30,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    " jasbatra01@gmail.com",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.amber,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              )),
                          //------------------------
                          Wrap(
                            children: [
                              //photos of my project
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
}
