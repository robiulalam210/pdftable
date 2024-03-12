import 'package:flutter/services.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf/widgets.dart' as pw;

import 'mobile.dart';

class PdfInvoice {
  static Future billDetails(
       String pdfName, context) async {
    print(",,,$pdfName");
    final pw.Document pdf = pw.Document();

    pdf.addPage(pw.MultiPage(
      build: (context) => [
        pw.SizedBox(height: 5),
        pw.Container(
          color: PdfColors.grey,
          padding: const pw.EdgeInsets.all(0.0),
          child: pw.Table(
            border: pw.TableBorder.all(),
            children: [
              pw.TableRow(
                children: [
                  pw.Container(
                    width: 30,
                    padding: const pw.EdgeInsets.all(4.0),
                    child: pw.Center(
                        child: pw.Text(
                            "Details STATEMENT"

                            ,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold))),
                  ),
                ],
              ),
            ],
          ),
        ),
        pw.Container(
          color: PdfColors.grey,
          padding: const pw.EdgeInsets.all(0.0),
          child: pw.Table(
            border: pw.TableBorder.all(),
            children: [
              pw.TableRow(
                children: [
                  pw.Container(
                    width: 30,
                    padding: const pw.EdgeInsets.all(4.0),
                    child: pw.Center(
                        child: pw.Text(
                            "rr")),
                  ),
                ],
              ),
            ],
          ),
        ),
        pw.Container(
          color: PdfColors.grey,
          padding: const pw.EdgeInsets.all(0.0),
          child: pw.Table(
            border: pw.TableBorder.all(),
            children: [
              pw.TableRow(
                children: [
                  pw.Container(
                    width: 40,
                    padding: const pw.EdgeInsets.all(4.0),
                    child: pw.Center(child: pw.Text('Code')),
                  ),
                  pw.Container(
                    width: 40,
                    padding: const pw.EdgeInsets.all(4.0),
                    child: pw.Center(child: pw.Text('Name')),
                  ),
                  pw.Container(
                      padding: const pw.EdgeInsets.all(4.0),
                      child: pw.Center(child: pw.Text('Per Unit')),
                      width: 30),
                  pw.Container(
                    width: 30,
                    padding: const pw.EdgeInsets.all(4.0),
                    child: pw.Center(child: pw.Text('Qty')),
                  ),
                  pw.Container(
                    width: 40,
                    padding: const pw.EdgeInsets.all(4.0),
                    child: pw.Center(child: pw.Text('Subtotal')),
                  ),
                ],
              ),
            ],
          ),
        ),
        pw.Container(
          padding: const pw.EdgeInsets.only(left: 0, right: 0),
         // margin: const pw.EdgeInsets.only(left: 6, right: 6),
          child: pw.ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {


                // Header row
                return pw.Column(
                  children: [


                    pw.Container(
                      color: PdfColors.grey,
                      padding: const pw.EdgeInsets.all(0.0),
                      child: pw.Table(
                        border: pw.TableBorder.all(),
                        children: [
                          pw.TableRow(
                            children: [
                              pw.Container(
                                width: 40,
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Center(child: pw.Text('10$index')),
                              ),
                              pw.Container(
                                width: 40,
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Center(child: pw.Text('Robi$index')),
                              ),
                              pw.Container(
                                  padding: const pw.EdgeInsets.all(4.0),
                                  child: pw.Center(child: pw.Text('55')),
                                  width: 30),
                              pw.Container(
                                width: 30,
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Center(child: pw.Text('4')),
                              ),
                              pw.Container(
                                width: 40,
                                padding: const pw.EdgeInsets.all(4.0),
                                child: pw.Center(child: pw.Text('44')),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                  ],
                );


    },
          ),
        ),

        pw.Container(
          padding: const pw.EdgeInsets.all(0.0),
          child: pw.Table(
            border: const TableBorder(
              top: BorderSide(),
              bottom: BorderSide(),
              left: BorderSide(),
              right: BorderSide(),
              horizontalInside: BorderSide(),
              verticalInside: BorderSide.none,
            ),
            children: [
              pw.TableRow(
                children: [
                  pw.Container(
                    width: 30,
                    padding: const pw.EdgeInsets.all(4.0),
                    child: pw.Center(
                        child: pw.Text(
                          "Total",
                        )),
                  ),
                  pw.Container(width: 30, child: Container()),
                  pw.Container(width: 30, child: Container()),
                  pw.Container(width: 30, child: Container()),
                  pw.Container(
                    width: 30,
                    padding: const pw.EdgeInsets.all(4.0),
                    child: pw.Center(
                        child: pw.Text(
                          'BDT 66',
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ));

    List<int> bytes = await pdf.save();
    return saveAndLaunchFile(bytes, "details_statement");
  }


}
