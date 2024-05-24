import 'package:flutter/material.dart';
import 'package:resume_app/Screens/CvPage1/Objective/objective.dart';
import 'package:resume_app/utils/globals.dart';

class Educationpage extends StatefulWidget {
  const Educationpage({super.key});

  @override
  State<Educationpage> createState() => _EducationpageState();
}

class _EducationpageState extends State<Educationpage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xffFABA1B),
          ),
        ),
        title: Text(
          'Education',
          style: TextStyle(color: Color(0xffFABA1B), fontSize: 20),
        ),
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return 'Field Must be Filled';
                      }
                    },
                    cursorErrorColor: Colors.red,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.maps_home_work,color: Colors.black),
                        labelText: 'Institute',
                        labelStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 15
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black38)
                        )
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15,
                  ),
                  child: TextFormField(
                      validator: (value){
                        if(value!.isEmpty)
                        {
                          return 'Field Must be Filled';
                        }
                      },
                      cursorErrorColor: Colors.red,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.school,color: Colors.black),
                          labelText: 'Course/degree',
                          labelStyle: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 15
                          ),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38)
                          )
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: TextFormField(
                      validator: (value){
                        if(value!.isEmpty)
                        {
                          return 'Field Must be Filled';
                        }
                      },
                      cursorErrorColor: Colors.red,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.percent,color: Colors.black),
                          labelText: 'Mark/Percentage/CGPA',
                          labelStyle: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 15
                          ),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38)
                          )
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(

                  ),
                  child: Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15,
                              right: 10
                          ),
                          child: TextFormField(
                              validator: (value){
                                if(value!.isEmpty)
                                {
                                  return 'Field Must be Filled';
                                }
                              },
                              cursorErrorColor: Colors.red,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.calendar_today_rounded,color: Colors.black),
                                  labelText: 'Start Year',
                                  labelStyle: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 15
                                  ),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black38)
                                  )
                              )
                          ),

                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                          ),
                          child: TextFormField(
                              validator: (value){
                                if(value!.isEmpty)
                                {
                                  return 'Field Must be Filled';
                                }
                              },
                              cursorErrorColor: Colors.red,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.calendar_month,color: Colors.black),
                                  labelText: 'End Year',
                                  labelStyle: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 15
                                  ),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black38)
                                  )
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    bool response = formkey.currentState!.validate();
                    if(response)
                    {
                      ins = txtIns.text;
                      course = txtCourse.text;
                      per = txtPer.text;
                      start = txtStart.text;
                      end = txtEnd.text;
                      Navigator.of(context).pop();
                    }

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 340 ,
                    ),
                    child: Container(
                      height: height * 0.09,
                      width: width * 0.9,
                      decoration:  BoxDecoration(
                          color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: Color(0xffFABA1B),
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
