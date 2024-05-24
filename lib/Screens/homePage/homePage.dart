import 'package:flutter/material.dart';
import 'package:resume_app/utils/globals.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
GlobalKey<FormState> formkey = GlobalKey();
class _HomePageState extends State<HomePage> {
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('CV maker',style: TextStyle(
            color: Color(0xffFABA1B),
            fontSize: 20
          ),),
        ),
        body: Form(
          key: formkey,
          child: Container(
            height: height*5,
            width: width*5,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/2.jpeg"),fit: BoxFit.cover)
            ),
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: height*0.09*5,
                width: width*0.5*2,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/cat.png',height: height*0.09*1.5,),
                    Text('Create New CV',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 22
                    ),),
                    Text('Create a professional and modern \n          new CV in few minutes.',style: TextStyle(
                        color: Color(0xffFABA1B),
                        fontSize: 17
                    ),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFABA1B),
                      ),
                      onPressed: (){
          
                      showDialog(
                        barrierColor: Colors.black38,
                          context: context,
                          builder: (BuildContext context){
                        return AlertDialog(
                          title: Text("Enter CV Name",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),),
                          content: TextFormField(
                            controller: txtCVname,
                            validator: (value){
                              if(value!.isEmpty)
                              {
                                return 'Please enter a CV name';
                              }
                              },
                            // onChanged: (value) {
                            //   cvName=value;
                            // },
                            cursorErrorColor: Colors.red,
                            cursorColor: Colors.black87,
                            decoration: InputDecoration(
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            border: OutlineInputBorder(
                            ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black38,
                                ),
                              ),
                              hintText: ' CV Name',
                            ),
                          ),
                          actions: [
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Cancle",style: TextStyle(fontSize: 15,color: Colors.black),)),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                bool response = formkey.currentState!.validate();
                                if(response)
                                {
                                  cvName = txtCVname.text;
                                  // refJob = txtRefjob.text;
                                  // refCompany = txtRefCompany.text;
                                  // refEmail = txtRefEmail.text;
                                  // refPhone = txtRefPhone.text;
                                  Navigator.of(context).pushNamed('/page1');
                                }

                              },
                                child: Text("Save",style: TextStyle(fontSize: 15,color: Colors.black),))
                          ],
                        );
                      });
                    },
                      child:  Text('Create',style: TextStyle(
                          color: Colors.black,
                          fontSize: 17
                      ),),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ),
    );
  }
}
