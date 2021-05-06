import 'dart:async';

import 'package:bmi_app/sizes.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'sizes.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Timer _timer;
  var _weight = 0;
  var _age = 0;
  
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

                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Weight".toUpperCase(),
                              style: Theme.of(context).textTheme.caption
                            ),
              
                            const SizedBox(height: 0.0),
                            Text(
                              "$_weight",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            const SizedBox(height: 6.0),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.counterButtonColor,
                                    ), 

                                    width: 50,  
                                    height: 50,
                                    child: Center(
                                      child: Container(
                                        color: AppColors.whiteColor,
                                        width: 20,
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                  onTap: (){
                                    setState(() {
                                      if(_weight > 0 ) _weight--;
                                    });
                                  },

                                  onTapDown: (TapDownDetails details) {
                                    _timer = Timer.periodic(Duration(milliseconds: 100), (t) {
                                      setState(() {
                                        if(_weight > 0 )
                                        _weight--;
                                      });
                                        //print('value $_weight');
                                    });
                                  },

                                  onTapUp: (TapUpDetails details) {
                                    _timer.cancel();
                                  },
                                ),
                                                             
                                const SizedBox(width: 10.0),
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.counterButtonColor,
                                    ),
                                    width: 50,
                                    height: 50,
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: Sizes.dimens_30, 
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                  ),
                                  onTap: (){
                                    setState(() {
                                      _weight++;
                                    });
                                  },
                                  onTapDown: (TapDownDetails details) {
                                    _timer = Timer.periodic(Duration(milliseconds: 100), (t) {
                                      setState(() {
                                        _weight++;
                                      });
                                      //print('value $_weight');
                                    });
                                  },
                                  onTapUp: (TapUpDetails details) {
                                    _timer.cancel();
                                  },
                                  
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  
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

                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Age".toUpperCase(),
                              style: Theme.of(context).textTheme.caption
                            ),
              
                            const SizedBox(height: 0.0),
                            Text(
                              "$_age",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            const SizedBox(height: 6.0),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.counterButtonColor,
                                    ), 

                                    width: 50,  
                                    height: 50,
                                    child: Center(
                                      child: Container(
                                        color: AppColors.whiteColor,
                                        width: 20,
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                  onTap: (){
                                    setState(() {
                                      if(_age > 0 ) _age--;
                                    });
                                  },

                                  onTapDown: (TapDownDetails details) {
                                    _timer = Timer.periodic(Duration(milliseconds: 100), (t) {
                                      setState(() {
                                        if(_age > 0 )
                                        _weight--;
                                      });
                                        //print('value $_age');
                                    });
                                  },

                                  onTapUp: (TapUpDetails details) {
                                    _timer.cancel();
                                  },
                                ),
                                                             
                                const SizedBox(width: 10.0),
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.counterButtonColor,
                                    ),
                                    width: 50,
                                    height: 50,
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: Sizes.dimens_30, 
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                  ),
                                  onTap: (){
                                    setState(() {
                                      _age++;
                                    });
                                  },
                                  onTapDown: (TapDownDetails details) {
                                    _timer = Timer.periodic(Duration(milliseconds: 100), (t) {
                                      setState(() {
                                        _age++;
                                      });
                                      //print('value $_age');
                                    });
                                  },
                                  onTapUp: (TapUpDetails details) {
                                    _timer.cancel();
                                  },
                                  
                                ),
                              ],
                            ),
                          ],
                        ),
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
