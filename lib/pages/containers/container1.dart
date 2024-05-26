import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1();
}

class _Container1 extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer1(),
      desktop: desktopContainer(),
    );
  }
}

//================= MOBILE ======================================
Widget mobileContainer1() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: w! / 1.2,
          width: w! / 1.2,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(illustration1), fit: BoxFit.contain)),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Track your \nExpenses to \nSave Money',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: w!/10, fontWeight: FontWeight.bold, height: 1),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Helps you to organize \nyour income and expenses',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 45,
          child: ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primary)),
              onPressed: () {},
              icon: const Icon(Icons.arrow_drop_down),
              label: const Text('Try a Demo')),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '— Web, iOs and Android',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
        )
      ],
    ),
  );
}

//================= DESKTOP =====================================
Widget desktopContainer() {
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: w! / 10,
      vertical: 20,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your \nExpenses to \nSave Money',
                  style: TextStyle(
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Helps you to organize your income and expenses',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 60),
                Row(
                  children: [
                    Container(
                      height: 50,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            AppColors.primary,
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              side: BorderSide(color: AppColors.primary),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_drop_down),
                        label: const Text('Try a Demo'),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      '— Web, iOs and Android',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 500,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          ),
        ),
      ],
    ),
  );
}
