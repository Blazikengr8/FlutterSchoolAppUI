import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget{
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
                "My Account",
                style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w700,color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag:'pfp',
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage('https://66.media.tumblr.com/7fcc9004ca80653ad7b3b391bdd5d48a/tumblr_pazijqwbg21wvht4oo1_640.jpg'),
                  ),
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
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('General',style: GoogleFonts.nunitoSans(
                fontSize: 20, fontWeight: FontWeight.w500,color: Colors.grey),),
          ),
          Container(
            height: 400,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.person,color: Colors.black,),
                    title: Text('General',style: GoogleFonts.nunitoSans(
                        fontSize: 20, fontWeight: FontWeight.w700,color: Colors.black),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                  ),
                ListTile(
                  leading: Icon(Icons.info_outline,color: Colors.black,),
                  title: Text('About #school_app_project',style: GoogleFonts.nunitoSans(
                      fontSize: 20, fontWeight: FontWeight.w700,color: Colors.black),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
                ListTile(
                  leading: Icon(Icons.info_outline,color: Colors.black,),
                  title: Text('Terms & Conditions',style: GoogleFonts.nunitoSans(
                      fontSize: 20, fontWeight: FontWeight.w700,color: Colors.black),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
                ListTile(
                  leading: Icon(Icons.info_outline,color: Colors.black,),
                  title: Text('Terms & Conditions',style: GoogleFonts.nunitoSans(
                      fontSize: 20, fontWeight: FontWeight.w700,color: Colors.black),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
                ListTile(
                  leading: Icon(Icons.info_outline,color: Colors.black,),
                  title: Text('Privacy Policy',style: GoogleFonts.nunitoSans(
                      fontSize: 20, fontWeight: FontWeight.w700,color: Colors.black),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
                ListTile(
                  leading: Icon(Icons.question_answer_rounded,color: Colors.black,),
                  title: Text('Support',style: GoogleFonts.nunitoSans(
                      fontSize: 20, fontWeight: FontWeight.w700,color: Colors.black),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
                ListTile(
                  leading: Icon(Icons.logout,color: Colors.black,),
                  title: Text('Log Out',style: GoogleFonts.nunitoSans(
                      fontSize: 20, fontWeight: FontWeight.w700,color: Colors.black),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}