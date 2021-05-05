import 'package:bmi_app/sizes.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          // leading: IconButton(
          //   icon: Icon(Icons.accessible),
          //   onPressed: () => Scaffold.of(context).openDrawer(),
          // ),
          // leading: Icon(Icons.),
          centerTitle: true,
          elevation: Sizes.dimens_10,
          title: Text('BMI CALCULATOR'),
        ),
        drawer: Drawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    //male container
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: Sizes.dimens_10,
                          horizontal: Sizes.dimens_4),
                      decoration: BoxDecoration(
                        color: AppColors.cardColor,
                        borderRadius: BorderRadius.circular(Sizes.dimens_10),
                      ),
                    ),
                  ),
                  Expanded(
                    //female container
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: Sizes.dimens_10,
                          horizontal: Sizes.dimens_4),
                      decoration: BoxDecoration(
                        color: AppColors.cardColor,
                        borderRadius: BorderRadius.circular(Sizes.dimens_10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              //height container
              child: Container(
                margin: EdgeInsets.symmetric(
                    vertical: Sizes.dimens_10, horizontal: Sizes.dimens_4),
                decoration: BoxDecoration(
                  color: AppColors.cardColor,
                  borderRadius: BorderRadius.circular(Sizes.dimens_10),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    //weight container
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: Sizes.dimens_10,
                          horizontal: Sizes.dimens_4),
                      decoration: BoxDecoration(
                        color: AppColors.cardColor,
                        borderRadius: BorderRadius.circular(Sizes.dimens_10),
                      ),
                    ),
                  ),
                  Expanded(
                    //age container
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: Sizes.dimens_10,
                          horizontal: Sizes.dimens_4),
                      decoration: BoxDecoration(
                        color: AppColors.cardColor,
                        borderRadius: BorderRadius.circular(Sizes.dimens_10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //button container
            Container(
              margin: EdgeInsets.only(top: Sizes.dimens_10),
              width: double.infinity,
              height: Sizes.dimens_70,
              color: AppColors.globalButtonColor,
              child: Center(
                child: Text("CALCULATE YOUR BMI",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline4),
              ),
            ),
          ],
        ));
  }
}
