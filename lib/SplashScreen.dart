import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:story/Homepage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), ()=>Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>homepage()), (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("images/brain_126px.png",)),
          SizedBox(height: 10,),
          RichText(text: TextSpan(
            text: "বিজ্ঞানীদের  ",
            style: TextStyle(fontSize: 22,color: Color(0xff0d2032),fontFamily: 'BalooDa2-Medium',fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "জীবনী",
                style: TextStyle(fontSize: 22,color: Colors.blue,fontFamily: 'BalooDa2-Medium'),
              )
            ]
          ))

        ],
      ),
    );
  }
}
