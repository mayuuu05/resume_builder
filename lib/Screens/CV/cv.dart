import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;
import 'package:printing/printing.dart';
import 'package:resume_app/utils/globals.dart';

class Pdf extends StatefulWidget {
  const Pdf({super.key});

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  @override
  Widget build(BuildContext context) {
    return PdfPreview(

      build: (format) => genterepdf(),
    );
  }
}

Future<Uint8List> genterepdf() async {
  final pdf = pd.Document();
  pdf.addPage(
    pd.Page(
      build: (context) {
        return pd.Column(
            children:[
              pd.Row(
                  children:[
                    pd.Container(
                        height: 700,
                        width: 220,
                        decoration: pd.BoxDecoration(
                          color: PdfColors.white,
                        ),
                        child: pd.Column(
                            children:[
                              pd.Text('Personal Details',style: pd.TextStyle(
                                fontSize: 20,
                              )),
                              pd.Text(first,style: pd.TextStyle(
                                fontSize: 30,
                              )),
                              pd.Text(last,style: pd.TextStyle(
                                fontSize: 20,
                              )),
                              pd.Text(first + " " + last),
                              pd.Text(first),
                              pd.Text(mail),
                              pd.Text(phone),
                              pd.Text(obj,style: pd.TextStyle(
                                fontSize: 22,
                              )),
                            ]
                        )
                    ),

                  ]
              )
            ]
        );
      },
    ),
  );
  // await Printing.layoutPdf(
  //     onLayout: (PdfPageFormat format) async => pdf.save());
  PdfPreview(
    build: (format) => pdf.save(),
  );
  return pdf.save();
}