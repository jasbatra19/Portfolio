import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/dimensions.dart';
import 'package:portfolio/elements/NavBar.dart';
import 'package:portfolio/elements/aboutme.dart';
import 'package:portfolio/elements/animatedContainer.dart';
import 'package:portfolio/elements/contact.dart';
import 'package:portfolio/elements/footer.dart';
import 'package:portfolio/elements/skills.dart';

class PortFolio extends StatefulWidget {
  const PortFolio({Key? key}) : super(key: key);

  @override
  _PortFolioState createState() => _PortFolioState();
}

class _PortFolioState extends State<PortFolio> {
  late final GlobalKey contactKey;
  late final GlobalKey skillsKey;
  late final GlobalKey homeKey;
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  late final ScrollController scrollController;
  final ScrollController drawerController = ScrollController();
  @override
  void initState() {
    contactKey = GlobalKey();
    skillsKey = GlobalKey();
    homeKey = GlobalKey();
    scrollController = ScrollController();   
  }
  
  void scrollToWidgetByKey(GlobalKey key) {
     RenderBox box = key.currentContext!.findRenderObject() as RenderBox;
     Offset position = box.localToGlobal(Offset.zero); //this is global position
     double y = position.dy;
    print(y);
    scrollController.animateTo(y,
        duration: const Duration(milliseconds: 100), curve: Curves.easeInOut);
  
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: drawerKey,
        backgroundColor: Color(0xffC6DCE4),
        drawer: Container(
          width: size.width * 0.5,
          child: Drawer(
                  backgroundColor: Color(0xffC6DCE4),
            child: ListView(
              padding: EdgeInsets.all(10),
              controller: drawerController,
              
              children: [
                Container(
                  height: 100,
                  padding: EdgeInsets.all(5),
                    color:Color(0xffFFEFEF),
                    child: SvgPicture.asset('images/svg/jasmine.svg'),
                ),

                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      scrollToWidgetByKey(homeKey);
                    },
                    child: Container(
                        padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(10),
                      child: Text(
                        
                        "ABOUT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff525E75),
                            
                            fontFamily: 'RobotoMono',fontSize: 20,
                            
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      scrollToWidgetByKey(skillsKey);
                    },
                    child: Container(
                        padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "SKILLS",textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff525E75),
                            fontFamily: 'RobotoMono',fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      scrollToWidgetByKey(skillsKey);
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "CONTACT",textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff525E75),
                            fontFamily: 'RobotoMono',fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            ),
          ),
        ),
        body: Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: ListView(
              controller: scrollController,
              children: [
                NavBar(
                  scrollController: scrollController,
                  contactKey: contactKey,
                  homeKey: homeKey,
                  skillsKey: skillsKey,
                  drawerKey: drawerKey,
                ),
                AnimationContainer(),
                LayoutAboutMe(key: homeKey),
                SkillsProgramming(
                  key: skillsKey,
                ),
                Contact(
                  key: contactKey,
                ),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    drawerController.dispose();
    super.dispose();
  }
}
