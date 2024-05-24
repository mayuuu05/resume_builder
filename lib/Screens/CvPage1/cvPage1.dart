import 'package:flutter/material.dart';
import 'package:resume_app/Screens/CvPage1/drawer/drawer.dart';
import 'package:resume_app/utils/globals.dart';

class CVPage1 extends StatefulWidget {
  const CVPage1({super.key});

  @override
  State<CVPage1> createState() => _CVPage1State();
}

class _CVPage1State extends State<CVPage1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(

        drawer: buildDrawer(),
        appBar: AppBar(
          centerTitle: true,

          backgroundColor: Colors.black,
          title: Text(
            cvName,
            style: TextStyle(color: Color(0xffFABA1B), fontSize: 20),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap:() {
                              Navigator.of(context).pushNamed('/profile');
                            },
                            child: Container(
                                height: height * 0.1 + 10,
                                width: width * 5,
                                decoration: BoxDecoration(
                                    color: Color(0xffFABA1B),
                                    borderRadius: BorderRadius.circular(15)),
                                alignment: Alignment.centerLeft,
                                child: ListTile(
                                  leading: Container(
                                    height: height * 0.09,
                                    width: width * 0.09 + 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/cat.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                  title: Text('Personal profile',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black)),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                  ),
                                )),
                          ),
                          GestureDetector(
                            onTap:() {
                              Navigator.of(context).pushNamed('/ob');
                            },
                            child: Container(
                                margin: EdgeInsets.only(top: 20),
                                height: height * 0.1 + 10,
                                width: width * 5,
                                decoration: BoxDecoration(
                                    color: Color(0xffFABA1B),
                                    borderRadius: BorderRadius.circular(15)),
                                alignment: Alignment.centerLeft,
                                child: ListTile(
                                  leading: Container(
                                    height: height * 0.09,
                                    width: width * 0.09 + 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/cat.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                  title: Text('Objective',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black)),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                  ),
                                )),
                          ),
                          GestureDetector(
                            onTap:() {
                              Navigator.of(context).pushNamed('/edu');
                            },
                            child: Container(
                                margin: EdgeInsets.only(top: 20),
                                height: height * 0.1 + 10,
                                width: width * 5,
                                decoration: BoxDecoration(
                                    color: Color(0xffFABA1B),
                                    borderRadius: BorderRadius.circular(15)),
                                alignment: Alignment.centerLeft,
                                child: ListTile(
                                  leading: Container(
                                    height: height * 0.09,
                                    width: width * 0.09 + 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/cat.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                  title: Text('Education',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black)),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                  ),
                                )),
                          ),


                          GestureDetector(
                            onTap:() {
                              Navigator.of(context).pushNamed('/exp');
                            },
                            child: Container(
                                margin: EdgeInsets.only(top: 20),
                                height: height * 0.1 + 10,
                                width: width * 5,
                                decoration: BoxDecoration(
                                    color: Color(0xffFABA1B),
                                    borderRadius: BorderRadius.circular(15)),
                                alignment: Alignment.centerLeft,
                                child: ListTile(
                                  leading: Container(
                                    height: height * 0.09,
                                    width: width * 0.09 + 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/cat.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                  title: Text('Experiences',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black)),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                  ),
                                )),
                          ),
                          GestureDetector(
                            onTap:() {
                              Navigator.of(context).pushNamed('/refer');
                            },
                            child: Container(
                                margin: EdgeInsets.only(top: 20),
                                height: height * 0.1 + 10,
                                width: width * 5,
                                decoration: BoxDecoration(
                                    color: Color(0xffFABA1B),
                                    borderRadius: BorderRadius.circular(15)),
                                alignment: Alignment.centerLeft,
                                child: ListTile(
                                  leading: Container(
                                    height: height * 0.09,
                                    width: width * 0.09 + 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/cat.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                  title: Text('Reference',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black)),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                  ),
                                )),
                          ),
                          GestureDetector(
                            onTap:() {
                              Navigator.of(context).pushNamed('/project');
                            },
                            child: Container(
                                margin: EdgeInsets.only(top: 20),
                                height: height * 0.1 + 10,
                                width: width * 5,
                                decoration: BoxDecoration(
                                    color: Color(0xffFABA1B),
                                    borderRadius: BorderRadius.circular(15)),
                                alignment: Alignment.centerLeft,
                                child: ListTile(
                                  leading: Container(
                                    height: height * 0.09,
                                    width: width * 0.09 + 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/cat.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                  title: Text('Projects',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black)),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                  ),
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/skill');
                            },
                            child: Container(
                                margin: EdgeInsets.only(top: 20),
                                height: height * 0.1 + 10,
                                width: width * 5,
                                decoration: BoxDecoration(
                                    color: Color(0xffFABA1B),
                                    borderRadius: BorderRadius.circular(15)),
                                alignment: Alignment.centerLeft,
                                child: ListTile(
                                  leading: Container(
                                    height: height * 0.09,
                                    width: width * 0.09 + 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/cat.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                  title: Text('Skills',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black)),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                  ),
                                )),
                          ),

                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/language');
                            },
                            child: Container(
                                margin: EdgeInsets.only(top: 20),
                                height: height * 0.1 + 10,
                                width: width * 5,
                                decoration: BoxDecoration(
                                    color: Color(0xffFABA1B),
                                    borderRadius: BorderRadius.circular(15)),
                                alignment: Alignment.centerLeft,
                                child: ListTile(
                                  leading: Container(
                                    height: height * 0.09,
                                    width: width * 0.09 + 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/cat.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                  title: Text('Languages',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black)),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                  ),
                                )),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed('/cv');
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 10
                ),
                child: Container(
                  height: height * 0.09,
                  width: width * 0.9,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                  alignment: Alignment.center,
                  child: Text(
                    'Generate',
                    style: TextStyle(
                        color: Color(0xffFABA1B),
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ));
  }


}
