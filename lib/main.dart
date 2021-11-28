import 'package:asf_checklist/pages/analytics/views/analytics.dart';
import 'package:asf_checklist/pages/headcount/views/headcount.dart';
import 'package:asf_checklist/pages/home/views/home.dart';
import 'package:asf_checklist/pages/managesurvey/views/managesurvey.dart';
import 'package:asf_checklist/pages/survey/views/survey.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home/views/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter',
      theme: ThemeData(
      ),
      getPages: [
        GetPage(name: "/home", page:()=>Home()),
        GetPage(name: "/survey", page:()=>Survey()),
        GetPage(name: "/headcount", page:()=>HeadCount()),
        GetPage(name: "/analytics", page:()=>Analytics()),
        GetPage(name: "/managesurvey", page:()=>ManageSurvey())
      ],
      initialRoute: "/home",
    );
  }
}
