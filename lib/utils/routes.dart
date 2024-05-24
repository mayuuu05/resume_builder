import 'package:flutter/material.dart';
import 'package:resume_app/Screens/CV/cv.dart';
import 'package:resume_app/Screens/CvPage1/EducationPage/Reference/reference.dart';
import 'package:resume_app/Screens/CvPage1/EducationPage/education.dart';
import 'package:resume_app/Screens/CvPage1/Experience/experirnce.dart';
import 'package:resume_app/Screens/CvPage1/Objective/objective.dart';
import 'package:resume_app/Screens/CvPage1/Skills/skills.dart';
import 'package:resume_app/Screens/CvPage1/cvPage1.dart';
import 'package:resume_app/Screens/CvPage1/languages.dart';
import 'package:resume_app/Screens/CvPage1/profilePage/profile.dart';
import 'package:resume_app/Screens/CvPage1/project/Projrct.dart';
import 'package:resume_app/Screens/SplashScreen/splashScreen.dart';
import 'package:resume_app/Screens/homePage/homePage.dart';
import 'package:resume_app/Screens/introScreen/intro.dart';

class Approutes{
  static Map<String, Widget Function(BuildContext)> routes ={
    '/': (context) => const SplashScreen(),
    '/intro': (context) => const IntroScreen(),
    '/home': (context) => const HomePage(),
    '/page1': (context) => const CVPage1(),
    '/profile': (context) => const ProfilePage(),
    '/edu': (context) => const Educationpage(),
    '/ob': (context) => const ObjPage(),
    '/refer': (context) => const ReferencePage(),
    '/exp': (context) => const Experience(),
    '/project': (context) => const Projects(),
    '/cv': (context) => const Pdf(),
    '/language': (context) => const LanguagePage(),
    '/skill': (context) => const Skill(),

  };
}