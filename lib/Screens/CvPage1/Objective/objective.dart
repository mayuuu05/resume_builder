import 'package:flutter/material.dart';
import 'package:resume_app/utils/globals.dart';

class ObjPage extends StatefulWidget {
  const ObjPage({super.key});

  @override
  State<ObjPage> createState() => _ObjPageState();
}
GlobalKey<FormState> formkey = GlobalKey();
class _ObjPageState extends State<ObjPage> {
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
          'Objective',
          style: TextStyle(color: Color(0xffFABA1B), fontSize: 20),
        ),
      ),
      body:  Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
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
                      prefixIcon: Icon(Icons.description,color: Colors.black),
                      labelText: 'Objective',
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
                      contentPadding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
                    )
                ),
              ),
              GestureDetector(
                onTap: () {
                  bool response = formkey.currentState!.validate();
                  if(response)
                  {
                    obj = txtObj.text;

                    Navigator.of(context).pop();
                  }

                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 380 ,
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
