import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constants.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() {
    return _Container2();
  }
}

class _Container2 extends State<Container2> {
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
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(color: AppColors.primary),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 20),
          child: Container(
            height: 195,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(dashboard), fit: BoxFit.contain)),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              companyLogo(fb),
              companyLogo(google),
              companyLogo(cocacola),
              companyLogo(samsung)
            ],
          ),
        )
      ],
    ),
  );
}

//=========== DESKTOP ===========
Widget desktopContainer2() {
  return Container(
    height: 900,
    width: double.infinity,
    decoration: BoxDecoration(color: AppColors.primary),
    child: Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                top: -20,
                right: -20,
                child: Container(
                  height: 320,
                  width: 320,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vector1), fit: BoxFit.contain)),
                ),
              ),
              Positioned(
                left: -20,
                bottom: -20,
                child: Container(
                  height: 320,
                  width: 320,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(vector2), fit: BoxFit.contain),
                  ),
                ),
              ),
              Positioned(
                left: 43,
                right: 43,
                bottom: 0,
                child: Container(
                  height: 620,
                  width: 450,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(dashboard)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              companyLogo(fb),
              companyLogo(google),
              companyLogo(cocacola),
              companyLogo(samsung),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget companyLogo(String img) {
  return Container(
    height: 80,
    width: 120,
    margin: const EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(img), fit: BoxFit.contain),
    ),
  );
}
