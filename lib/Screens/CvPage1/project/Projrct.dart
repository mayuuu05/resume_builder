import 'package:flutter/material.dart';
import 'package:resume_app/Screens/CvPage1/Objective/objective.dart';
import 'package:resume_app/utils/globals.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
          'Projects',
          style: TextStyle(color: Color(0xffFABA1B), fontSize: 20),
        ),
      ),
      body:Form(
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
                        prefixIcon: Icon(Icons.title_rounded,color: Colors.black),
                        labelText: 'Title',
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
                        prefixIcon: Icon(Icons.messenger,color: Colors.black),
                        labelText: 'Details',
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
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
                      )
                  ),
                ),


                GestureDetector(
                  onTap: () {
                    bool response = formkey.currentState!.validate();
                    if(response)
                    {
                      title = txtTitle.text;
                      det = txtDet.text;
                      Navigator.of(context).pop();
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 390 ,
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
