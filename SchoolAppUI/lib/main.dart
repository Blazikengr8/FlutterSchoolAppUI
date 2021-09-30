import 'package:flutter/material.dart';
import 'package:schoolappproject/phnopage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(primaryColor: Color(0xFF045DE9),canvasColor: Color(0xFF045DE9)),
    home:PhNoPage(),
    );
  }

}