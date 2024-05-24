import 'package:flutter/material.dart';
import 'package:resume_app/utils/globals.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
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
          'Languages',
          style: TextStyle(color: Color(0xffFABA1B), fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                txtControllerList.length,
                    (index) =>
                    ListTile(
                      title: TextField(
                        cursorColor: Colors.black,
                        controller: txtControllerList[index],
                        decoration:  InputDecoration(
                            labelText: 'Language',
                            labelStyle: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 15
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38)
                            )
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            if (txtControllerList.length > 1) {
                              txtControllerList.removeAt(index);
                            }
                          });
                        },
                        icon: const Icon(
                            Icons.delete,
                            size: 30,
                            color: Colors.black
                        ),
                      ),
                    ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 549 ,
                  ),
                  child: Container(
                    height: height * 0.07,
                    width: width * 0.6-10,
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
            ]
          ),
        ),
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: () {
          setState(() {
            TextEditingController txtController = TextEditingController();
            txtControllerList.add(txtController);
          });
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Color(0xffFABA1B),
          size: 30,
        ),
      ),
    );
  }
}



