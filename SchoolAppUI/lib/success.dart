import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolappproject/homepage.dart';
import 'package:schoolappproject/verifyacc.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashScreen>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: Colors.white,
           body: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: <Widget>[
               Container(
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   border: Border.all(
                     color: Color(0xFF045DE9),
                     width: 15,
                   ),
                 ),
                 child: CircleAvatar(
                   backgroundColor: Colors.white,
                   radius: 100,
                   child: Icon(
                     FontAwesomeIcons.check,
                     color: Color(0xFF045DE9),
                     size: 90,
                   ),
                 ),
               ),
                 SizedBox(
                   height: 20,
                 ),
                 Text(
                   "Successfully verified",
                   style: GoogleFonts.nunitoSans(fontSize: 25,fontWeight:FontWeight.w700,color: Colors.black),
                   textAlign: TextAlign.center,
                 ),
           ],
          ),
       );
  }

  startTime() async {
    var duration = new Duration(milliseconds: 600);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => MyHomePage(),
    )
    );
  }
}