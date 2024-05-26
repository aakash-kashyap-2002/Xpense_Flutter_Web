import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constants.dart';
import 'package:xpense_flutter_web/widgets/common_container.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() {
    return _Container3();
  }
}

class _Container3 extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer2(),
      desktop: desktopContainer2(),
    );
  }
}

//=========== MOBILE ===========
Widget mobileContainer2() {
  return commonContainerMobile(
    'ALWAYS-ONLINE',
    'Real-time \nsupport \nwith cloud',
    'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
    illustration1,
    false,
  );
}

//=========== DESKTOP ===========
Widget desktopContainer2() {
  return commonContainer(
    'ALWAYS-ONLINE',
    'Real-time \nsupport \nwith cloud',
    'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
    illustration1,
    false,
  );
}
