import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ListPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:Border.all(
                        width: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 35,
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.arrowLeft),
                        iconSize: 25,
                        color: Colors.black,
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child:
                  Text(
                    "Notice Board",
                    style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w700,color: Colors.black),
                  ),
              ),
          ],
        ),
      ),
      body:ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return  Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.lightBlue,Colors.lightBlue,Colors.lightBlue.withOpacity(0.5)]
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            "Holi Holiday",
                            style: GoogleFonts.nunitoSans(fontSize: 25,fontWeight:FontWeight.w800,color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 80,),
                          Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Holiday",
                                style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0,0,0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 270,
                          child: Text(
                            "Activate every muscle group to get the results you've always wanted.",
                            style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.white),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 15,0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "15th March 2021",
                          style: GoogleFonts.nunitoSans(fontSize: 18,fontWeight:FontWeight.w400,color: Colors.white),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }

}