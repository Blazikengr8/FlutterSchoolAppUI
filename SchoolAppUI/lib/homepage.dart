import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolappproject/profile.dart';

import 'list.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          Home(),
          Search(),
          Notif(),
          Profile(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(30.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          child: Container(
            height: 70,
            color: Colors.white,
            child: TabBar(
              labelColor: Colors.cyan,
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black54, width: 0.0),
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
              ),
              //For Indicator Show and Customization
              indicatorColor: Colors.black54,
              tabs: <Widget>[
                Text(
                  "Home",
                  style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w700,color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Tab(
                  icon: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.notifications,
                    size: 30.0,
                  ),

                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    size: 30.0,
                  ),
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(child: Text('hello'),),
    );
  }
}

class Notif extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(child: Text('hello'),),
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
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
                        icon: Icon(FontAwesomeIcons.solidCalendarAlt),
                        iconSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Text(
                    "Monday",
                    style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w500,color: Colors.grey),
                  ),
                  Text(
                    "25 October",
                    style: GoogleFonts.nunitoSans(fontSize: 30,fontWeight:FontWeight.w800,color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                },
                child: Align(
                  alignment: Alignment.centerRight,
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
                      child: Hero(
                        tag: 'pfp',
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 35,

                          backgroundImage: NetworkImage('https://66.media.tumblr.com/7fcc9004ca80653ad7b3b391bdd5d48a/tumblr_pazijqwbg21wvht4oo1_640.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ListPage()));
              },
              child: Padding(
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
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Live Updates",
                style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.grey),
                textAlign: TextAlign.left,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                      child: Container(
                        height: 160,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                           begin: Alignment.bottomCenter,
                           end:Alignment.topCenter,
                           colors: [Colors.redAccent.withOpacity(0.8),Colors.red]
                          )
                        ),
                        child:Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                FontAwesomeIcons.calendar,
                                size: 35,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "90%",
                                style: GoogleFonts.nunitoSans(fontSize: 18,fontWeight:FontWeight.w700,color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Attendance",
                                style: GoogleFonts.nunitoSans(fontSize: 18,fontWeight:FontWeight.w400,color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 160,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end:Alignment.topCenter,
                              colors: [Colors.deepPurpleAccent.withOpacity(0.8),Colors.deepPurple]
                          )
                      ),
                      child:Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              FontAwesomeIcons.stickyNote,
                              size: 35,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "B-Grade",
                              style: GoogleFonts.nunitoSans(fontSize: 18,fontWeight:FontWeight.w700,color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Progress",
                              style: GoogleFonts.nunitoSans(fontSize: 18,fontWeight:FontWeight.w400,color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 160,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end:Alignment.topCenter,
                              colors: [Color(0xFFF3AF06).withOpacity(0.8),Color(0xFFFFD700)]
                          )
                      ),
                      child:Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              FontAwesomeIcons.moneyBill,
                              size: 35,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "No Due",
                              style: GoogleFonts.nunitoSans(fontSize: 18,fontWeight:FontWeight.w700,color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Fees",
                              style: GoogleFonts.nunitoSans(fontSize: 18,fontWeight:FontWeight.w400,color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Homework",
                style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.grey),
                textAlign: TextAlign.left,
              ),
            ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                )
                              ),
                              child: CircleAvatar(
                                 backgroundColor: Colors.white,
                                 radius: 20,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Learn Chapter 5 with one Essay",
                              style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "English / Today",
                              style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.grey),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              )
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Learn Chapter 5 with one Essay",
                          style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "English / Today",
                          style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.grey),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              )
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Learn Chapter 5 with one Essay",
                          style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "English / Today",
                          style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.grey),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              )
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Learn Chapter 5 with one Essay",
                          style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "English / Today",
                          style: GoogleFonts.nunitoSans(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.grey),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
              ],
            )
        ),
    );
  }
}