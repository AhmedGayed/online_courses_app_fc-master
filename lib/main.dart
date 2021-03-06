import 'package:flutter/material.dart';
import 'package:online_courses_app/ui/list_courses.dart';

import 'data/courses_api.dart';

void main() {
  runApp(MyApp());

  G().getToken();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dev School',
      theme: ThemeData(
        fontFamily: 'Cairo',
           primarySwatch: Colors.blue,
      ),
      home: CoursesList()
    );
  }
}