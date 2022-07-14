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
                      gradient: LinearGradient(colors: [Color(0xffF2D1D1),Color(0xffDAEAF1)]),
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
            backgroundImage: AssetImage("images/me.jpg"),
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
            style: TextStyle(color: Color(0xff1B2430), fontSize: 30,fontFamily: 'EduTASBeginner',fontWeight: FontWeight.w500),
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
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage('images/me.jpg'),fit: BoxFit.cover)),
         
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Text(
            "Hi There! I'm Jasmine Batra, a student pursuing Computer Science & Engineering from Thapar Institiute of Engineering & Technology,Patiala. Currently experimenting interest in Machine Learning & Robotics Process Automation.",
            softWrap: true,
            style: TextStyle(color:  Color(0xff1B2430), fontSize: 25,fontFamily: 'EduTASBeginner',fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  
  }
}
