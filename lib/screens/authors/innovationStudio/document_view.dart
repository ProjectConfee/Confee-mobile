// import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

// class DocumentViewPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Document View'),
//         backgroundColor: Colors.blue[800],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             buildDocumentCard(context, 'aa.pdf'), // Card for aa.pdf
//             buildDocumentCard(context, 'dd.pdf'), // Card for dd.pdf
//             buildDocumentCard(context, 'kk.pdf'), // Card for kk.pdf
//             buildDocumentCard(context, 'k.pdf'),  // Card for k.pdf
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildDocumentCard(BuildContext context, String fileName) {
//     return Card(
//       elevation: 3,
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: ListTile(
//         leading: Icon(Icons.picture_as_pdf, color: Colors.red), // PDF icon
//         title: Text(fileName), // Display file name
//         onTap: () {
//           // Navigate to PDF view page for the selected document
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => PDFViewerPage(pdfFileName: fileName)),
//           );
//         },
//       ),
//     );
//   }
// }

// class PDFViewerPage extends StatelessWidget {
//   final String pdfFileName;

//   const PDFViewerPage({required this.pdfFileName});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('PDF Viewer'),
//         backgroundColor: Colors.blue[800],
//       ),
//       body: PDFView(
//         filePath: 'assets/pdfs/$pdfFileName', // Corrected path to the PDF file
//         autoSpacing: true, // Adjust spacing automatically
//         pageSnap: true, // Enable page snapping to boundaries
//         swipeHorizontal: true, // Enable horizontal swipe
//       ),
//     );
//   }
// }







import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DocumentViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Document View'),
        backgroundColor: Colors.blue[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildDocumentCard(context, 'aa.pdf'), // Card for aa.pdf
            buildDocumentCard(context, 'dd.pdf'), // Card for dd.pdf
            buildDocumentCard(context, 'kk.pdf'), // Card for kk.pdf
            buildDocumentCard(context, 'k.pdf'),  // Card for k.pdf
          ],
        ),
      ),
    );
  }

  Widget buildDocumentCard(BuildContext context, String fileName) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(Icons.picture_as_pdf, color: Colors.red), // PDF icon
        title: Text(fileName), // Display file name
        onTap: () {
          // Navigate to PDF view page for the selected document
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PDFViewerPage(pdfFileName: fileName)),
          );
        },
      ),
    );
  }
}

class PDFViewerPage extends StatelessWidget {
  final String pdfFileName;

  const PDFViewerPage({required this.pdfFileName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
        backgroundColor: Colors.blue[800],
      ),
      body: SfPdfViewer.asset(
        'asset/pdfs/$pdfFileName', // Corrected path to the PDF file
      ),
    );
  }
}
