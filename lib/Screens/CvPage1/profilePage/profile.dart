import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/globals.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
GlobalKey<FormState> formkey = GlobalKey();
ImagePicker imagePicker = ImagePicker();
File? fileImage;

class _ProfilePageState extends State<ProfilePage> {
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
          'Personal Information',
          style: TextStyle(color: Color(0xffFABA1B), fontSize: 20),
        ),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          height: height*0.09+50,
                          width: width*0.5+20,
                          decoration: BoxDecoration(
                            // color: Colors.black38,
                            shape: BoxShape.circle,
                            image: (fileImage != null)
                                ? DecorationImage(
                                fit: BoxFit.cover, image: FileImage(fileImage!))
                                : null,
                          ),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.account_circle,
                            size: 125,
                            color: Colors.black38,
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () async {
                              XFile? xFileImage =
                              await imagePicker.pickImage(source: ImageSource.camera);
                              setState(() {
                                fileImage = File(xFileImage!.path);
                              });
                            },
                            child: Text(
                              'Camera',
                              style: TextStyle(color: Colors.black, fontSize: 15),
                            )),
                        TextButton(
                            onPressed: () async {
                              XFile? xFileImage = await imagePicker.pickImage(
                                  source: ImageSource.gallery);
                              setState(() {
                                fileImage = File(xFileImage!.path);
                              });
                            },
                            child: Text(
                              'Gallery',
                              style: TextStyle(color: Colors.black, fontSize: 15),
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20
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
                                      prefixIcon: Icon(Icons.person,color: Colors.black,),
                                        labelText: 'First Name',
                                        labelStyle: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontSize: 15,
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
                                    ),
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
                                          labelText: 'Last Name',
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
                                prefixIcon: Icon(Icons.location_on_sharp,color: Colors.black),
                                labelText: 'Address',
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
                                contentPadding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
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
                        Padding(
                          padding: const EdgeInsets.only( top: 20,right: 240,bottom: 10),
                          child: Text(
                            'Gender  : ',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        RadioListTile(
                          value: 'male',
                          activeColor: Colors.black,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender=value!;
                            });
                          },
                          title: Text('Male',style: TextStyle(
                              fontSize: 17
                          ),),
                        ),
                        RadioListTile(
                          value: 'female',
                          activeColor: Colors.black,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender=value!;
                            });
                          },
                          title: Text('Female',style: TextStyle(
                              fontSize: 17
                          ),),
                        ),
                        RadioListTile(
                          value: 'others',
                          activeColor: Colors.black,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender=value!;
                            });
                          },
                          title: Text('Others',style: TextStyle(
                              fontSize: 17
                          ),),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                bool response = formkey.currentState!.validate();
                if(response)
                {
                  first = txtFirst.text;
                  last = txtLast.text;
                  add = txtAdd.text;
                  mail = txtMail.text;
                  phone = txtPhone.text;
                  Navigator.of(context).pop();
                }

              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 15,
                  right: 10,
                ),
                child: Container(
                  height: height * 0.09,
                  width: width * 0.9,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      )),
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
    );
  }
}


