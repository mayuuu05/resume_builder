import 'package:flutter/material.dart';
import 'package:resume_app/Screens/CvPage1/Objective/objective.dart';
import 'package:resume_app/utils/globals.dart';

class ReferencePage extends StatefulWidget {
  const ReferencePage({super.key});

  @override
  State<ReferencePage> createState() => _ReferencePageState();
}

class _ReferencePageState extends State<ReferencePage> {
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
          'Reference',
          style: TextStyle(color: Color(0xffFABA1B), fontSize: 20),
        ),
      ),
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child:  Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20
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
                      prefixIcon: Icon(Icons.person,color: Colors.black),
                      labelText: 'Reference Name',
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
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20
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
                      prefixIcon: Icon(Icons.keyboard_command_key_outlined,color: Colors.black),
                      labelText: 'Job title',
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
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20
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
                        prefixIcon: Icon(Icons.maps_home_work,color: Colors.black),
                        labelText: 'Company Name',
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
                    left: 20,
                    right: 20
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
                        prefixIcon: Icon(Icons.email,color: Colors.black),
                        labelText: 'Email Address',
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
                    left: 20,
                    right: 20
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
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.call,color: Colors.black),
                        labelText: 'Phone number',
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
              GestureDetector(
                onTap: () {
                  bool response = formkey.currentState!.validate();
                  if(response)
                  {
                    reference = txtReference.text;
                    jobTitle = txtJobTitle.text;
                    comName = txtCoName.text;
                    email = txtEmailAdd.text;
                    pho = txtPh.text;
                    Navigator.of(context).pop();
                  }

                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 270 ,
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
    );
  }
}
