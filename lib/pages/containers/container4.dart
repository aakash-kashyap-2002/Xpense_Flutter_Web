import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/constants.dart';
import 'package:xpense_flutter_web/widgets/common_container.dart';

class Container4 extends StatefulWidget {
  const Container4({Key? key}) : super(key: key);

  @override
  _Container4State createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer4(),
      desktop: DesktopContainer4(),
    );
  }

  //================ MOBILE ===============

  Widget MobileContainer4() {
    return commonContainerMobile(
        'FREE SOME COST',
        'Save cost \nfor you \nand family',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustration2,
        true);
  }

  //============== DESKTOP =============

  Widget DesktopContainer4() {
    return commonContainer(
        'FREE SOME COST',
        'Save cost \nfor you \nand family',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
        illustration2,
        true);
  }
}