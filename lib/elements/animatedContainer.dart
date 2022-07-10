import 'package:flutter/material.dart';

class AnimationContainer extends StatefulWidget {
  const AnimationContainer({ Key? key }) : super(key: key);

  @override
  State<AnimationContainer> createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer> 
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
    //   double elevation = 4.0;
    // double scale = 0.5;
    // Offset translate = Offset(0, 0);
    var size = MediaQuery.of(context).size;
    return  Container(
                    padding: EdgeInsets.all(5),
                    // height: size.height * 0.2,
                    // width: size.width,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            " Jasmine Batra | Developer | Undergraduate",
                            textScaleFactor: animation!.value * 1.5,maxLines: 2,softWrap: true,
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.black54,
                                    offset: Offset(5.0, 5.0),
                                  ),
                                ],
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: MediaQuery.of(context).size.width*0.03,
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
                  );
  }
   @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
}