import 'package:flutter/material.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constants.dart';

Widget commonContainer(
    String s1, String s2, String s3, String image, bool imageLeft) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: w! / 10,
      vertical: 30,
    ),
    child: Row(
      children: [
        //1st Column...
        imageLeft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.contain)),
                ),
              )
            : Container(),
        //2nd Column...
        Expanded(
          child: Column(
            crossAxisAlignment:
                imageLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                s1.toUpperCase(),
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                s2,
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: w! / 20,
                  height: 1.1,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                s3,
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: AppColors.primary,
                ),
                label: Text(
                  'Learn more',
                  style: TextStyle(color: AppColors.primary),
                ),
              )
            ],
          ),
        ),
        //3rd Column...
        !imageLeft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.contain)),
                ),
              )
            : Container(),
      ],
    ),
  );
}

Widget commonContainerMobile(String s1, s2, s3, image, bool imageLeft) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          s1.toUpperCase(),
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          s2,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: w! / 10,
              height: 1.1,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          s3,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: AppColors.primary,
            ),
            label: Text(
              'Learn more',
              style: TextStyle(color: AppColors.primary),
            )),
      ],
    ),
  );
}
