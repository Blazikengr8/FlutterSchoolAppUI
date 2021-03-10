import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolappproject/homepage.dart';
import 'package:schoolappproject/phnopage.dart';
import 'package:schoolappproject/success.dart';
import 'package:schoolappproject/verifyacc.dart';

class OTPPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<OTPPage>{
  @override
  void initState() {
    // TODO: implement initState
    PhNoPageState.number='enter the otp sent to +91'+PhNoPageState.number;
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: [
        Positioned(
        top: 150,
        left: 40,
        child: Hero(
        tag: 'container',
        child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
        color: Color(0xFF045DE9),
    borderRadius: BorderRadius.circular(20),
    ),
    ),
    ),
    ),
    Positioned(
    top: 200,
    left: 40,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(
    height: 20,
    ),
    Hero(tag: 'Bold',
    child: new Material(
    color: Colors.transparent,
    child: Text('Verify your number', style: GoogleFonts.nunitoSans(
    fontSize: 25, fontWeight: FontWeight.w700),),
    ),
    ),
      Hero(tag: 'small',
        child: new Material(
         color: Colors.transparent,
         child: Text(PhNoPageState.number,
         style: GoogleFonts.nunitoSans(
          fontSize: 20, fontWeight: FontWeight.w100),),
           ),
          ),
          SizedBox(
            height: 50,
          ),
             Container(
              height: 80,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:EdgeInsets.all(10),
                    child: Container(
                      height:60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color:Color(0xFF045DE9),
                      ),
                      child:Center(child: Text('*',style: TextStyle(color:Colors.white,fontSize: 50,fontWeight: FontWeight.bold),))
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                        height:60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color:Color(0xFF045DE9),
                        ),
                        child:Center(child: Text('*',style: TextStyle(color:Colors.white,fontSize: 50,fontWeight: FontWeight.bold),))
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                        height:60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color:Color(0xFF81AEF4),
                        ),
                        child:Center(child: Text('_',style: TextStyle(color:Colors.white,fontSize: 50,fontWeight: FontWeight.bold),))
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                      child: Container(
                          height:60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color:Color(0xFF81AEF4),
                          ),
                          child:Center(child: Text('_',style: TextStyle(color:Colors.white,fontSize: 50,fontWeight: FontWeight.bold),))
                      ),
                    ),
                ],
              ),
            ),
      SizedBox(
        height: 15,
      ),
      Text('Having trouble? Request a new OTP in 00:30', style: GoogleFonts.nunitoSans(
          fontSize: 15, fontWeight: FontWeight.w400),),
         ],
        ),
       ),
      ],
     ),
    );
  }

  startTime() async {
    var duration = new Duration(milliseconds: 1000);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => SplashScreen(),
    )
    );
  }
}