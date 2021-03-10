import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolappproject/otppage.dart';
import 'package:schoolappproject/success.dart';

class Verifyacc extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new VerifyaccState();
  }

}

class VerifyaccState extends State<Verifyacc> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                      child: Text('Choose the account', style: GoogleFonts.nunitoSans(
                          fontSize: 25, fontWeight: FontWeight.w700),),
                    )),
                Hero(tag: 'small',
                    child: new Material(
                      color: Colors.transparent,
                      child: Text('confirm your id',
                        style: GoogleFonts.nunitoSans(
                            fontSize: 30, fontWeight: FontWeight.w100),),
                    )),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage('https://66.media.tumblr.com/7fcc9004ca80653ad7b3b391bdd5d48a/tumblr_pazijqwbg21wvht4oo1_640.jpg'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Prathiba Yadav',style: GoogleFonts.nunitoSans(
                              fontSize: 25, fontWeight: FontWeight.w500),),
                           Container(
                              height: 25,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Color(0xFF045DE9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                             child:Center(
                               child: Text('Class VIII A',
                                 style: GoogleFonts.nunitoSans(
                                     fontSize: 12, fontWeight: FontWeight.w700,color: Colors.white),),
                             ),
                            ),
                        ],
                      ),
                      SizedBox(width: 30,),
                       Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width:1,
                            )
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius:40,
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black,
                              size: 40,

                            ),
                          ),
                        ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 300,
                ),
                    Text('By continuing, you agree to the #school_app_project',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 15,fontWeight: FontWeight.w100,color: Colors.blueGrey),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 60,),
                        Text('Terms of Service', style: GoogleFonts.nunitoSans(
                            fontSize: 15,fontWeight: FontWeight.w100,color: Colors.blue),),
                        Text(' & ',
                          style: GoogleFonts.nunitoSans(
                              fontSize: 15, fontWeight: FontWeight.w100,color: Colors.blueGrey),),
                        Text(' Privacy Policy.', style: GoogleFonts.nunitoSans(
                            fontSize: 15, fontWeight: FontWeight.w100,color: Colors.blue),),

                      ],
                    ),
                SizedBox(
                  height: 20,
                ),
                Hero(
                  tag: 'BottomButton',
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPPage()));
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
                                  'Accept & Continue  ',
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