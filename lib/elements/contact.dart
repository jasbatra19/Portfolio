import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
     var size= MediaQuery.of(context).size;
    return Container(
      height: 150,
      width: double.infinity,
      color: Color(0xffC6DCE4),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "For projects/Collab :",
              style: TextStyle(
                color: Color(0xff354259),
                  fontSize: 20,
                  fontFamily: 'Courgette',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold),
                  softWrap: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => launch(
                    "https://www.instagram.com/jasbatra01/"),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: SvgPicture.asset('images/svg/instagram.svg',height: 50,width: 50,)),
              ),
              InkWell(
                onTap: ()=>launch('https://www.linkedin.com/in/jasmine-batra-a11ba41bb/'),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: SvgPicture.asset('images/svg/linkedin.svg',height: 50,width: 50,color: Color.fromARGB(255, 24, 70, 145),)),
              ),
              InkWell(
                onTap: ()=>launch('https://github.com/jasbatra19'),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: SvgPicture.asset('images/svg/github.svg',height: 50,width: 50,)),
              ),
            ],
          ),
          InkWell(
             onTap: () => launch(emailLaunchUri.toString()),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.mail,color: Color.fromARGB(255, 35, 37, 38),),Text('jasbatra01@gmail.com',style: TextStyle(backgroundColor: Color.fromARGB(255, 212, 224, 228),color: Colors.black),)],
             ),
          )
        ],
      ),
    );
  }
}


