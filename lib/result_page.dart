import 'package:bmi_app/sizes.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: Sizes.dimens_10,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: Sizes.dimens_20, horizontal: Sizes.dimens_30),
              child: Text(
                "Your Result",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: Sizes.dimens_20, horizontal: Sizes.dimens_30),
                padding: EdgeInsets.symmetric(vertical: Sizes.dimens_30, horizontal: Sizes.dimens_50),
                decoration: BoxDecoration(
                  color: AppColors.cardColor,
                  // color: Colors.grey,
                  borderRadius: BorderRadius.circular(Sizes.dimens_10),
                ),
                child: Column(
                  children: [
                    Text(
                      "NORMAL",
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: AppColors.greenColor),
                    ),
                    Text(
                      "22.1",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      "Normal BMI range:",
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: AppColors.bluegreyColor),
                    ),
                    Text("18,5 - 25 kg/m2",
                        style: Theme.of(context).textTheme.headline2),
                    SizedBox(
                      height: Sizes.dimens_30,
                    ),
                    Text("You have a normal body weight. Good job!",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline2),
                    Expanded(
                      child: Material(
                        color: AppColors.buttonColor,
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text('Save Result'.toUpperCase(),
                              style: Theme.of(context).textTheme.headline2),
                          minWidth: double.infinity,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: Sizes.dimens_10),
              width: double.infinity,
              height: Sizes.dimens_70,
              color: AppColors.globalButtonColor,
              child: Center(
                child: Text(
                  "RE-CALCULATE YOUR BMI",
                  textAlign: TextAlign.center,
                  style:Theme.of(context).textTheme.headline4
                ),
              ),
            ),
          ],
        ));
  }
}
