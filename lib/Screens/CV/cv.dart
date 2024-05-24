import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume_app/utils/globals.dart';

import '../CvPage1/profilePage/profile.dart';



class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
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
      body: PdfPreview(
        build: (format) => genterepdf(),
      ),
    );
  }
}

Future<Uint8List> genterepdf() async {
  final pdf = pw.Document();
  final image = pw.MemoryImage(fileImage!.readAsBytesSync());
  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return [
          pw.Container(
            height: 725,
            width: double.infinity,
            decoration: pw.BoxDecoration(color: PdfColors.white),
            child: pw.Column(
                children: [
                  pw.Padding(
                    padding: pw.EdgeInsets.only(right: 0),
                    child: pw.Row(
                      children: [
                        pw.Container(
                          height: 170,
                          width: 170,
                          decoration: pw.BoxDecoration(
                            color: PdfColor.fromHex('28364b'),
                            shape: pw.BoxShape.circle,
                            border: pw.Border.all(
                              color: PdfColors.white,
                              width: 9,
                            ),
                          ),
                          child: pw.Container(
                            height: 100,
                            width: 100,
                            decoration: pw.BoxDecoration(
                                color: PdfColors.white,

                            ),
                            child: pw.ClipRRect(
                                child: pw.Image(image, fit: pw.BoxFit.cover)),
                          ),
                        ),
                        pw.SizedBox(
                          width: 20
                        ),
                        pw.Column(
                          children: [
                            pw.Padding(
                              padding: pw.EdgeInsets.only(
                                  right: 220,
                                  top: 2
                              ),
                              child: pw.Text('PROFILE', style: pw.TextStyle(
                                  color: PdfColors.black,
                                  fontSize: 20,
                                  decoration: pw.TextDecoration.underline,
                                  decorationThickness: 2,
                                  decorationColor: PdfColors.yellow),
                              ),

                            ),
                            pw.SizedBox(
                              height: 20
                            ),
                            pw.Padding(
                              padding: pw.EdgeInsets.all(0.0),
                              child: pw.Container(
                                height: 100,
                                width: 320,
                                decoration: pw.BoxDecoration(

                                ),
                                child: pw.Padding(
                                  padding: pw.EdgeInsets.all(15.0),
                                  child: pw.Text(
                                    'Seeking a challenging position in IT field where I can utilize my experience to contribute to the success of the company.',
                                    style: pw.TextStyle(
                                        fontSize: 15,
                                      color: PdfColors.black
                                    ),),
                                ),
                              ),
                            ),
                          ]
                        )
                      ]
                    )
                  ),
                  pw.Container(
                    height: 80,
                    width: 900,
                    decoration: pw.BoxDecoration(
                      color: PdfColors.yellow
                      ,
                    ),
                    alignment: pw.Alignment.center,
                    child: pw.Row(
                      children: [
                        pw.Container(
                          height: 40,
                          width: 240,
                          decoration: pw.BoxDecoration(
                            color: PdfColors.black,
                          ),
                          alignment: pw.Alignment.center,
                          child: pw.Text('Company Manager', style: pw.TextStyle(
                              color: PdfColors.white, fontSize: 15,
                              fontWeight: pw.FontWeight.bold
                          ),
                          ),
                        ),
                        pw.SizedBox(width: 30,),
                        pw.Text('Mayuri Purohit', style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 20,
                            color: PdfColors.black
                        ),)
                      ],
                    ),
                  ),

                  pw.Row(
                    children: [
                      pw.Container(
                        height: 150,
                        width: 180,
                        decoration: pw.BoxDecoration(
                          color: PdfColor.fromHex('858585'),
                        ),
                        child: pw.Padding(
                          padding: pw.EdgeInsets.all(20.0),
                          child: pw.Column(
                            children: [
                              pw.Text('CONTECT', style: pw.TextStyle(color: PdfColors
                                  .white, fontSize: 20,fontWeight: pw.FontWeight.bold),),
                              pw.SizedBox(height: 15,),
                              pw.Column(
                                children: [ pw.Text('Surat ,Gujarat',
                                  style: pw.TextStyle(
                                    color: PdfColors.white, fontSize: 12,),),
                                  pw.SizedBox(height: 5),
                                  pw.Text('  1234 5678 9231', style: pw.TextStyle(
                                    color: PdfColors.white, fontSize: 12,),),
                                  pw.SizedBox(height: 5),
                                  pw.Text('    mayu@gmail.com', style: pw.TextStyle(
                                    color: PdfColors.white, fontSize: 12,),),


                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.all(8.0),
                        child: pw.Column(
                          children: [
                            pw.Text(
                                '      Skills : ', style: pw.TextStyle(color: PdfColors
                                .black, fontSize: 20,fontWeight: pw.FontWeight.bold)),
                            pw.SizedBox(height: 15,),
                            pw.Text('           C language',
                                style: pw.TextStyle(color: PdfColors.black,
                                  fontSize: 12,)),
                            pw.SizedBox(height: 5,),
                            pw.Text('C++',
                                style: pw.TextStyle(color: PdfColors.black,
                                  fontSize: 12,)),
                            pw.SizedBox(height: 5,),
                            pw.Text('Dart',
                                style: pw.TextStyle(color: PdfColors.black,
                                  fontSize: 12,)),
                            pw.SizedBox(height: 5,),
                            pw.Text('    Flutter',
                                style: pw.TextStyle(color: PdfColors.black,
                                  fontSize: 12,)),
                          ],
                        ),
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.all(8.0),
                        child: pw.Column(
                          children: [
                            pw.Text(
                                '      Languages : ', style: pw.TextStyle(color: PdfColors
                                .black, fontSize: 20,fontWeight: pw.FontWeight.bold)),
                            pw.SizedBox(height: 15,),
                            pw.Text('    English',
                                style: pw.TextStyle(color: PdfColors.black,
                                  fontSize: 12,)),
                            pw.SizedBox(height: 5,),
                            pw.Text('Hindi',
                                style: pw.TextStyle(color: PdfColors.black,
                                  fontSize: 12,)),
                            pw.SizedBox(height: 5,),
                            pw.Text('    Gujarati',
                                style: pw.TextStyle(color: PdfColors.black,
                                  fontSize: 12,)),
                            pw.SizedBox(height: 5,),
                            pw.Text('    Marathi ',
                                style: pw.TextStyle(color: PdfColors.black,
                                  fontSize: 12,)),
                            pw.Text('    ',
                                style: pw.TextStyle(color: PdfColors.black,
                                  fontSize: 12,)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  pw.Row(
                    children: [
                      pw.Container(
                        height: 160,
                        width: 180,
                        decoration: pw.BoxDecoration(
                          color: PdfColor.fromHex('404040'),
                        ),
                        child: pw.Padding(
                          padding: pw.EdgeInsets.all(17.0),
                          child: pw.Column(
                            children: [
                              pw.Text(
                                  'EXPERIENCE', style: pw.TextStyle(color: PdfColors
                                  .white, fontSize: 20,fontWeight: pw.FontWeight.bold)),
                              pw.SizedBox(height: 15,),
                              pw.Text(' Company  : Mypuro',
                                  style: pw.TextStyle(color: PdfColors.white,
                                    fontSize: 12,)),
                              pw.SizedBox(height: 5,),
                              pw.Text('Designation  : Surat',
                                  style: pw.TextStyle(color: PdfColors.white,
                                    fontSize: 12,)),
                              pw.SizedBox(height: 5,),
                              pw.Text('Starting Year : 2020',
                                  style: pw.TextStyle(color: PdfColors.white,
                                    fontSize: 12,)),
                              pw.SizedBox(height: 5,),
                              pw.Text('Ending Year  : 2024',
                                  style: pw.TextStyle(color: PdfColors.white,
                                    fontSize: 12,)),

                            ],
                          ),
                        ),
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.all(8.0),
                        child: pw.Column(
                          children: [
                            pw.Text(
                                '      Reference : ', style: pw.TextStyle(color: PdfColors
                                .black, fontSize: 20,fontWeight: pw.FontWeight.bold)),
                            pw.SizedBox(height: 15,),
                            pw.Text('         Reference Name            :   Akhil Sorvadiya',
                                style: pw.TextStyle(color: PdfColors.black,
                                  fontSize: 12,)),
                            pw.SizedBox(height: 5,),
                            pw.Text('           Job Title                          :   Flutter developer',
                                style: pw.TextStyle(color: PdfColors.black,
                                  fontSize: 12,)),
                            pw.SizedBox(height: 5,),
                            pw.Text('   Phone number               :   123456789 ',
                                style: pw.TextStyle(color: PdfColors.black,
                                  fontSize: 12,)),
                            pw.SizedBox(height: 5,),
                            pw.Text('           Email Address               :   abc@gmail.com ',
                                style: pw.TextStyle(color: PdfColors.black,
                                  fontSize: 12,)),
                            pw.Text('    ',
                                style: pw.TextStyle(color: PdfColors.black,
                                  fontSize: 12,)),
                          ],
                        ),
                      ),
                    ],
                  ),

                  pw.Row(
                    children: [
                      pw.Container(
                        height:160,
                        width: 180,
                        decoration: pw.BoxDecoration(
                            color: PdfColors.black
                        ),
                        child: pw.Padding(
                          padding: pw.EdgeInsets.all(17.0),
                          child: pw.Column(
                            children: [
                              pw.Column(
                                children: [pw.Text('Education',
                                    style: pw.TextStyle(color: PdfColors.white, fontSize: 20,fontWeight: pw.FontWeight.bold)),
                                  pw.SizedBox(height: 15), pw.Row(
                                    children: [
                                      pw.Text('         RNW-8', style: pw.TextStyle(
                                        color: PdfColors.white, fontSize: 10,),),
                                      pw.Text('         2020-2024',
                                        style: pw.TextStyle(color: PdfColors.white, fontSize: 10,),),
                                    ],
                                  ), pw.Text('Flutter                        ',
                                    style: pw.TextStyle(color: PdfColors.white, fontSize: 10,),),
                                  pw.Text('   Modules                        ',
                                    style: pw.TextStyle(color: PdfColors.white, fontSize: 10,),),
                                ],
                              ), pw.SizedBox(height: 10), pw.Column(
                                children: [
                                  pw.Row(
                                    children: [
                                      pw.Text('         VIS', style: pw.TextStyle(color: PdfColors.white,
                                        fontSize: 10,),),
                                      pw.Text('               2020-2024', style: pw.TextStyle(color: PdfColors
                                          .white, fontSize: 10,),),
                                    ],
                                  ),
                                  pw.Text('   12th pass                       ',
                                    style: pw.TextStyle(color: PdfColors.white, fontSize: 10,),),
                                  pw.Text('  Subject                         ',
                                    style: pw.TextStyle(color: PdfColors.white, fontSize: 10,),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.all(8.0),
                        child: pw.Column(
                          children: [
                            pw.Text(
                                ' Projects Details : ', style: pw.TextStyle(color: PdfColors
                                .black, fontSize: 20,fontWeight: pw.FontWeight.bold)),
                            pw.SizedBox(height: 15,),
                           pw.Padding(
                             padding: pw.EdgeInsets.only(
                               left: 20,
                               right: 30
                             ),
                             child:  pw.Text(
                                 "Lorem Ipsum is simply dummy text of the printing and typesetting \nindustry. Lorem Ipsum has been the standard dummy text ever since \nthe 1500s, when an unknown printer took a galley of type and \nscrambled it to make a type specimen book. It has survived not only \nfive centuries, but also the leap into electronic and more Lorem Ipsum", style: pw.TextStyle(color: PdfColors
                                 .black, fontSize: 10)),
                           )


                          ],
                        ),
                      ),
                    ],
                  ),
                ]
            ),
          ),
        ];
      },
    ),
  );
  PdfPreview(
    build: (format) => pdf.save(),
  );
  return pdf.save();
}



