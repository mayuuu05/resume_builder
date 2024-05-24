import 'package:flutter/material.dart';

Drawer buildDrawer() {
  return Drawer(
    child: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Padding(padding: const EdgeInsets.only(
            right: 200
        ),
          child: Text('All Labels',style: TextStyle(color: Colors.grey.shade900,fontSize: 15),),
        ),
        ListTile(
          leading: Icon(Icons.star_border,size: 25,color: Colors.black,),
          title: Text('Starred',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
          )),
        ),
        Container(
          child: ListTile(
            leading: Icon(Icons.home,size: 25,color: Colors.black,),
            title: Text('Home',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15
            )),
          ),
        ),
        ListTile(
          leading: Icon(Icons.message,size: 25,color: Colors.black,),
          title: Text('Message',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
          )),
        ),
        ListTile(
          leading: Icon(Icons.autorenew,size: 25,color: Colors.black,),
          title: Text('Sync',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
          )),
        ),
        ListTile(
          leading: Icon(Icons.delete,size: 25,color: Colors.black,),
          title: Text('Trash',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
          )),
        ),
        Container(
          color: Colors.black26,
          child: ListTile(
            leading: Icon(Icons.settings,size: 25,color: Colors.black,),
            title: Text('Setting',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15
            )),
          ),
        ),

        ListTile(
          leading: Icon(Icons.report_gmailerrorred,size: 25,color: Colors.black,),
          title: Text('Spam',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
          )),
        ),
        ListTile(
          leading: Icon(Icons.mail,size: 25,color: Colors.black,),
          title: Text('MailBox',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
          )),
        ),

        Divider(
          color: Colors.grey,
        ),
        Padding(padding: const EdgeInsets.only(
            right: 180
        ),
          child: Text('Commnuicate',style: TextStyle(color: Colors.grey,fontSize: 15),),
        ),

        ListTile(
          leading: Icon(Icons.share,size: 25,color: Colors.black,),
          title: Text('Share',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
          )),
        ),
        ListTile(
          leading: Icon(Icons.rate_review_rounded,size: 25,color: Colors.black,),
          title: Text('Rate us',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
          )),
        ),
        Divider(
          color: Colors.grey,
        ),
        Padding(padding: const EdgeInsets.only(
            right: 230
        ),
          child: Text('Profile',style: TextStyle(color: Colors.grey,fontSize: 15),),
        ),
        ListTile(
          leading: Icon(Icons.logout,size: 25,color: Colors.black,),
          title: Text('LogOut',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
          )),
        ),
      ],
    ),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20)
        )
    ),
  );
}