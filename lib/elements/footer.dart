import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Color.fromARGB(255, 107, 186, 215),
      child: Column(
        children: [
          Text('Developed using Flutter',style: TextStyle(fontFamily: 'RobotoMono',fontSize: 10),),
          Text('This is made by Jasmine Batra ',style: TextStyle(fontFamily: 'RobotoMono',fontSize: 10),),
        ],
      ),
    );
  }
}