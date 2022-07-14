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
  
    var size = MediaQuery.of(context).size;
    return  Container(
                    padding: EdgeInsets.all(5),
                    color:Color(0xffFFEFEF),
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
                                    blurRadius: 20.0,
                                    color: Color(0xff525E75),
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
                                color: Color(0xff1B2430),
                                fontWeight: FontWeight.w500,
                                fontSize: MediaQuery.of(context).size.width*0.03,
                                fontFamily: "Courgette"),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),),
                          height: size.height * 0.2,
                          child: Image.asset(
                            "images/code.jpg",
                            fit: BoxFit.fill,
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