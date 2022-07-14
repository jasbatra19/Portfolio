import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/dimensions.dart';
import 'package:portfolio/elements/aboutme.dart';

class NavBar extends StatefulWidget {
    final GlobalKey contactKey;
   final GlobalKey skillsKey;
   final GlobalKey homeKey;
  final ScrollController scrollController;
  
 GlobalKey<ScaffoldState> drawerKey = GlobalKey();
   NavBar({Key? key, required this.homeKey,required this.contactKey,required this.skillsKey,required this.scrollController,required this.drawerKey}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}


class _NavBarState extends State<NavBar> {
  
    void scrollToWidgetByKey(GlobalKey key) {
    RenderBox box = key.currentContext?.findRenderObject() as RenderBox;
    setState(() {});
    Offset position = box.localToGlobal(Offset.zero);
    double y = position.dy; //this is global position
    widget.scrollController.animateTo(y,
        duration: const Duration(milliseconds: 800), curve: Curves.easeInOut);
  }
  @override
  Widget build(BuildContext context) {
    return
    windowSize<MediaQuery.of(context).size.width?
    Container(
      height: 50,

      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: ()=>scrollToWidgetByKey(widget.homeKey),
            child: SvgPicture.asset('images/svg/jasmine.svg',height: 30,)
          ),
          InkWell(
              onTap: () => scrollToWidgetByKey(widget.homeKey),
              child: Text("ABOUT",style: TextStyle(color: Color(0xff525E75),fontFamily: 'RobotoMono',fontWeight: FontWeight.bold),)),
          InkWell(
            onTap: () => scrollToWidgetByKey(widget.skillsKey),
            child: Text("SKILLS",style: TextStyle(color: Color(0xff525E75),fontFamily: 'RobotoMono',fontWeight: FontWeight.bold),)),
          InkWell(
            onTap: ()=>scrollToWidgetByKey(widget.contactKey),
            child: Text("CONTACT",style: TextStyle(color: Color(0xff525E75),fontFamily: 'RobotoMono',fontWeight: FontWeight.bold),)),
        ],
      ),
    ):
    Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('images/svg/jasmine.svg',height: 30,),
          IconButton(onPressed: (){
            widget.drawerKey.currentState!.openDrawer();
          }, icon: Icon(Icons.clear_all_sharp,size: 30,))
        ],
      ),
    );
  }
  
}
