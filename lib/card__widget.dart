import 'package:bmi_app/sizes.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

// ignore: camel_case_types
class CardWidget extends StatelessWidget {
  // final Color cardColor;
  final Widget cardChild;
  final Function() onPress;
  CardWidget({required this.cardChild, required this.onPress});
  // cardWidget({
  //   Key? key, Widget child
  // }) : super(key: key, child:child);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: Sizes.dimens_10,
          horizontal: Sizes.dimens_6,
        ),
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(
            Sizes.dimens_10,
          ),
        ),
        child: cardChild,
      ),
    );
  }
}
