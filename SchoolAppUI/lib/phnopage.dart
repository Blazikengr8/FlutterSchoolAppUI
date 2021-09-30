import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolappproject/verifyacc.dart';

class PhNoPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PhNoPageState();
  }



}

class PhNoPageState extends State<PhNoPage>{


  static var number=''; String _chosenValue;
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return  Scaffold(
           body: Stack(
            children: [
            Positioned(
              top:150,
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
              top: 220,
              left: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Hero(tag:'Bold',child: new Material(color:Colors.transparent,child: Text('Welcome!',style: GoogleFonts.nunitoSans(fontSize: 50,fontWeight:FontWeight.w700 ),))),
                  Hero(tag:'small',child:new Material(color:Colors.transparent,child: Text('enter your registered no.',style: GoogleFonts.nunitoSans(fontSize: 30,fontWeight:FontWeight.w100 ),))),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 104,
                        decoration: BoxDecoration(
                        color: Color(0xFF045DE9),
                        borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              focusColor:Color(0xFF045DE9),
                              value: _chosenValue,
                              //elevation: 5,
                              style: TextStyle(color: Color(0xFF045DE9)),
                              iconEnabledColor:Colors.white,
                              items: [
                                ' 🇮🇳 +91',
                                ' 🇪🇸 +34',
                                ' 🇵🇰 +92',
                                ' 🇧🇩 +880',
                                ' 🇮🇷 +98',
                                ' 🇨🇦 +1',
                                ' 🇺🇸 +1',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Center(child: Text(value,style:TextStyle(color:Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                                );
                              }).toList(),
                              hint:Center(
                                child: Text(
                                  " 🇮🇳 +91",
                                  style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w500,color: Colors.white),
                                    textAlign: TextAlign.center,
                                ),
                              ),
                              onChanged: (String value) {
                                setState(() {
                                  _chosenValue = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      SizedBox(
                        width: 200,
                        child: TextField(
                          style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w500,color: Colors.black),
                          onChanged: (text){
                            number=text;
                          },
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Hero(
                    tag: 'BottomButton',
                    child: Row(
                      children: [
                         GestureDetector(
                           onTap: (){},
                           child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                     height: 60,
                                     width: 60,
                                     decoration: BoxDecoration(
                                       color: Color(0xFF045DE9),
                                       borderRadius: BorderRadius.circular(10),
                                     ),
                               child: Icon(
                                 Icons.arrow_back,
                                 color: Colors.white,
                               ),
                              ),
                            ),
                         ),
                        GestureDetector(
                          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Verifyacc()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              height: 60,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Color(0xFF045DE9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Next  ',
                                    style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w700,color: Colors.white ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      );
    }
  }
