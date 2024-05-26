import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constants.dart';
import 'package:xpense_flutter_web/utils/styles.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});
  @override
  State<Navbar> createState() => _Navbar();
}

class _Navbar extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileNavbar(),
      desktop: desktopNavbar(),
    );
  }
}

//========================= MOBILE ============================
Widget mobileNavbar(){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.menu),
        navLogo(),
      ],
    ),
  );
}

//========================= DESKTOP ============================
Widget desktopNavbar(){
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    ),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navLogo(),
        Row(
          children: [
            navButton('Features'),
            navButton('About us'),
            navButton('Pricing'),
            navButton('Feedback'),
          ],
        ),
        Container(
          height: 45,
          child: ElevatedButton(
            style: borderButtonStyle,
            onPressed: (){}, 
            child: Text(
              'Request a Demo',
              style: TextStyle(color: AppColors.primary),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget navButton(String text){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    child: TextButton(
      onPressed: (){}, 
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    ),
  );
}

Widget navLogo(){
  return Container(
    width: 150,
    decoration: const BoxDecoration(
      image: DecorationImage(image: AssetImage(logo),fit: BoxFit.fitWidth)
    ),
  );
}