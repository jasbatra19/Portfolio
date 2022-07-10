import 'package:flutter/material.dart';

// prog lang
List progLangs = ['C++', 'C', 'Python', 'Flutter-Dart','Firebase','SQL','Machine Learning', 'Robotics Process Automation'];
List descProgLang = [
  "Most Proficient Language,In depth knowlegde of Data Structures and Algorithms and Object Oriented Programming Concepts,Standard Template Libaries. Made TicTacToe using C++",
  "I have Knowledge of Procedural language,Use of the language for coding practices is minimum in my case.",
  "Good concept built using Python,many of its libraries are used in Machine Learning and Artificial Intelligence, Built an AI Assistant using Python (Refer to Github for more reference).",
  "Made Many Apps and Web Apps for android using Flutter-Dart.Includes basic to advanced Level Apps.Some of them are: E-commerce App, Portfolio WebApp,BUILD(construction webApp) and many more...","Most of my flutter apps have been integrated with firebase for their backend, authentication,storage,database is used in my apps.","I use SQL and PL/SQL for database management,made a database management system for my shopping website in SQL and PL/SQL, used sequences,triggers,procedures etc.","In progress,know basics of ML,AI.. experimenting linear regression,classifiers,web scraping.Also have Certificate of completion of Data science by Teachnook.","RPA is automating tasks we do iteratively in our daily lives.Interned at RST Solutions Inc."
];
List imagesPL = ['cpp.jpg', 'c.png', 'python.png','flutter.png','firebase.png','SQL.png','ML.jpeg','RPA.jpg'];




class SkillsProgramming extends StatefulWidget {
  const SkillsProgramming({Key? key}) : super(key: key);

  @override
  State<SkillsProgramming> createState() => _SkillsProgrammingState();
}

class _SkillsProgrammingState extends State<SkillsProgramming> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          itemCount: progLangs.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.all(5),
              color: Color.fromARGB(255, 116, 179, 200),
              margin: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'images/${imagesPL[index]}',
                        height: 100,
                      )),
                  Text('${progLangs[index]}',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                  Expanded(
                    // padding: EdgeInsets.all(10),
                    child: Text('${descProgLang[index]}',softWrap: true,
                    style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500))),
                ],
              ),
            );
          }),
    );
  }
}

class SkillsAppDev extends StatefulWidget {
  const SkillsAppDev({Key? key}) : super(key: key);

  @override
  State<SkillsAppDev> createState() => _SkillsAppDevState();
}

class _SkillsAppDevState extends State<SkillsAppDev> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          itemCount: progLangs.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Color.fromARGB(255, 116, 179, 200),
              margin: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'images/${imagesPL[index]}',
                        height: 100,
                      )),
                  Text('${progLangs[index]}'),
                  Text('${descProgLang}'),
                ],
              ),
            );
          }),
    );
  }
}
