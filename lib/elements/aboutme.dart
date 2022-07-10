import 'package:flutter/material.dart';
import 'package:portfolio/dimensions.dart';

// wrapper
class LayoutAboutMe extends StatelessWidget {
  const LayoutAboutMe({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
                    padding: EdgeInsets.all(20),
                    width: size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Color.fromARGB(255, 114, 115, 180),Colors.pink.shade100]),
                        color: Color.fromARGB(255, 3, 38, 90)),
                        child: MediaQuery.of(context).size.width>windowSize ? AboutMe():AboutMeMobile()
                  );
  }
}

// desktop view
class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("images/jasmine.jpg"),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 1,
          child: Text(
            "Hi There! I'm Jasmine Batra, a student pursuing Computer Science & Engineering from Thapar Institiute of Engineering & Technology,Patiala. Currently experimenting interest in Machine Learning & Robotics Process Automation.",
            softWrap: true,
            style: TextStyle(color: Colors.black87, fontSize: 30),
          ),
        )
      ],
    );
  }
}

// mobile view

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage("images/jasmine.jpg"),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Text(
            "Hi There! I'm Jasmine Batra, a student pursuing Computer Science & Engineering from Thapar Institiute of Engineering & Technology,Patiala. Currently experimenting interest in Machine Learning & Robotics Process Automation.",
            softWrap: true,
            style: TextStyle(color: Colors.black87, fontSize: 28),
          ),
        )
      ],
    );
  
  }
}
