import 'package:flutter/material.dart';
import 'package:portfolio/dimensions.dart';

// prog lang
List descProgLang = [
  "Most Proficient Language, In depth knowlegde of Data Structures and Algorithms and Object Oriented Programming Concepts, Standard Template Libaries. Made TicTacToe using C++.",
  "I have Knowledge of Procedural language, Use of the language for coding practices is minimum in my case.",
  "Good concept built using Python, many of its libraries are used in Machine Learning and Artificial Intelligence, Built an AI Assistant using Python (Refer to Github for more reference).",
  "Made Many Apps and Web Apps for android using Flutter-Dart, Includes basic to advanced Level Apps. Some of them are: E-commerce App, Portfolio WebApp, BUILD (construction webApp) and many more...",
  "Most of my flutter apps have been integrated with firebase for their backend, authentication, storage, database is used in my apps.",
  "I use SQL and PL/SQL for database management, made a database management system for my shopping website in SQL and PL/SQL, used sequences, triggers, procedures etc.",
  "In progress, know basics of ML,AI.. experimenting linear regression, classifiers, web scraping. Also have Certificate of completion of Data science by Teachnook.",
  "RPA is automating tasks we do iteratively in our daily lives. Interned at RST Solutions Inc."
];
List imagesPL = [
  'cpp.jpg',
  'c.png',
  'python.png',
  'flutter.png',
  'firebase.png',
  'SQL.png',
  'ML.jpeg',
  'RPA.jpg'
];

final ScrollController gridcontroller=ScrollController();


class SkillsProgramming extends StatefulWidget {
  const SkillsProgramming({Key? key}) : super(key: key);

  @override
  State<SkillsProgramming> createState() => _SkillsProgrammingState();
}

class _SkillsProgrammingState extends State<SkillsProgramming> {
  @override
  Widget build(BuildContext context) {  
    var size= MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: double.infinity,
      color: Color(0xffC6DCE4),
      child: Scrollbar(
        controller: gridcontroller,
        showTrackOnHover: true,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
             maxCrossAxisExtent:size.height*0.5,
             mainAxisExtent: windowSize<size.width ? size.width*0.3 : size.width*0.9,
             childAspectRatio : 1.0,
        
            ),
            controller: gridcontroller,
            physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: imagesPL.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
        
              return Container(
                decoration: BoxDecoration(
                color: Color(0xffDAEAF1),
                borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                child: ListView(
                controller: ScrollController(),
                // physics: ScrollPhysics(),
                            
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/${imagesPL[index]}',
                          height: 100,
                        )),
                  Text.rich(
          TextSpan(text: '${descProgLang[index]}'),
         style: TextStyle(color: Color(0xff1B2430),fontSize:20,fontWeight: FontWeight.w600,fontFamily: 'RobotoMono')
        ),
                    // Text('${descProgLang[index]}',
                    // style: TextStyle(color: Color(0xff1B2430),fontSize:20,fontWeight: FontWeight.w600,fontFamily: 'RobotoMono')),
                  ],
                ),
              );
            }),
      ),
    );
  }
   @override
  void dispose() {
    gridcontroller.dispose();

    super.dispose();
  }
}
