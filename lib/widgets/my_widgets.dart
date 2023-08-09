import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/utils/global.dart';

Widget marginTop(double height) {
  return SizedBox(
    height: Get.height * height,
  );
}

Widget marginRight(double width) {
  return SizedBox(
    width: Get.width * width,
  );
}

Widget myText(text, {double? size, color, bool? isBold}) {
  return Text(
    text,
    style: TextStyle(
        fontSize: size ?? 18,
        color: color ?? Colors.black,
        fontWeight: isBold != null && isBold == true
            ? FontWeight.w600
            : FontWeight.normal),
  );
}

Widget myTextFormField({title, hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      myText(title, size: 16),
      SizedBox(
        height: 40,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.help_outline,
              size: 16,
            ),
            suffixIconColor: grey,
            filled: true,
            fillColor: Color.fromARGB(255, 243, 242, 242),
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0.5,
                color: grey,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            hintText: hint,
            hintStyle: TextStyle(color: grey, fontSize: 15),
          ),
        ),
      ),
      marginTop(.03)
    ],
  );
}

Widget myFlatButton(text, {icon}) {
  return InkWell(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.only(top: Get.height * 0.02),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          width: Get.width,
          decoration: BoxDecoration(
              color: orange, borderRadius: BorderRadius.circular(5)),
          child: icon != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                      size: 18,
                      color: white,
                    ),
                    myText(text, color: white, size: 16)
                  ],
                )
              : Center(child: myText(text, color: white, size: 16))));
}

Widget myFlatButtonGrey(
  text,
) {
  return InkWell(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.only(bottom: Get.height * 0.01),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          // height: Get.height * 0.08,
          width: Get.width,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 233, 233, 233),
              borderRadius: BorderRadius.circular(5)),
          child: Center(child: myText(text, color: grey, size: 16))));
}

Widget horizontalTextButton(simpleText, buttonText) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      marginTop(0.1),
      myText(simpleText, size: 15),
      marginRight(.01),
      InkWell(onTap: () {}, child: myText(buttonText, size: 16, color: orange)),
    ],
  );
}

Widget myFlatButtonWithImage(text, {imageSrc, color}) {
  return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              width: Get.width,
              decoration: BoxDecoration(
                color: color ?? Color(0xFF4285F4),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(child: myText(text, color: white, size: 16)),
            ),
            Container(
              margin: EdgeInsets.only(top: 1, left: 1, bottom: 1),
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              height: 24,
              width: 24,
              child: Image.asset(
                imageSrc,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ));
}

Widget myTextButtonWithIcon(text, {icon}) {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.only(bottom: 16, top: 8),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 0.5,
                  color: const Color.fromARGB(255, 238, 222, 222)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          myText(text, size: 16, color: grey),
          Icon(
            icon ?? Icons.arrow_forward,
            color: grey,
            size: 20,
          )
        ],
      ),
    ),
  );
}

Widget MyTextButtonSmall(text, {color, function}) {
  return InkWell(
    onTap: function,
    child: Container(
      decoration: BoxDecoration(
          color: color.opacity(0.2) ?? Color.fromARGB(255, 234, 234, 234)),
      child: myText(text),
    ),
  );
}

Widget Header({imageUrl, function}) {
  return Container(
    padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
    height: 94,
    decoration: BoxDecoration(
      color: grey,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(imageUrl ?? 'assets/images/dhaka_live_white.png'),
        InkWell(
          onTap: function,
          child: Icon(
            Icons.notifications_active,
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}
