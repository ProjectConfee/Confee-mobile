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







// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

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
//       body: SfPdfViewer.asset(
//         'asset/pdfs/$pdfFileName', // Corrected path to the PDF file
//       ),
//     );
//   }
// }


//add bottom nav bar 
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
// import 'custom_bottom_navigation_bar.dart';
// import 'home_page.dart';  // Ensure this import points to your HomePage file
// import 'profile_view.dart'; // Ensure this import points to your ProfileViewPage file

// class DocumentViewPage extends StatefulWidget {
//   @override
//   _DocumentViewPageState createState() => _DocumentViewPageState();
// }

// class _DocumentViewPageState extends State<DocumentViewPage> {
//   int _currentIndex = 1; // Default to Packages tab

//   void _onTap(int index) {
//     setState(() {
//       _currentIndex = index;
//     });

//     switch (index) {
//       case 0:
//         // Navigate to the HomePage when the home icon is tapped
//         Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(builder: (context) => HomePage()),
//           (Route<dynamic> route) => false,
//         );
//         break;
//       case 1:
//         // Stay on the current page
//         break;
//       case 2:
//         // Navigate to the ProfileViewPage when the profile icon is tapped
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => ProfileViewPage()),
//         );
//         break;
//     }
//   }

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
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onTap,
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
//       body: SfPdfViewer.asset(
//         'assets/pdfs/$pdfFileName', // Corrected path to the PDF file
//       ),
//     );
//   }
// }
 //add css
//  import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
// import 'custom_bottom_navigation_bar.dart';
// import 'home_page.dart';  // Ensure this import points to your HomePage file
// import 'profile_view.dart'; // Ensure this import points to your ProfileViewPage file

// class DocumentViewPage extends StatefulWidget {
//   @override
//   _DocumentViewPageState createState() => _DocumentViewPageState();
// }

// class _DocumentViewPageState extends State<DocumentViewPage> {
//   int _currentIndex = 1; // Default to Packages tab

//   void _onTap(int index) {
//     setState(() {
//       _currentIndex = index;
//     });

//     switch (index) {
//       case 0:
//         // Navigate to the HomePage when the home icon is tapped
//         Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(builder: (context) => HomePage()),
//           (Route<dynamic> route) => false,
//         );
//         break;
//       case 1:
//         // Stay on the current page
//         break;
//       case 2:
//         // Navigate to the ProfileViewPage when the profile icon is tapped
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => ProfileViewPage()),
//         );
//         break;
//     }
//   }

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
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onTap,
//       ),
//     );
//   }

//   Widget buildDocumentCard(BuildContext context, String fileName) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => PDFViewerPage(pdfFileName: fileName)),
//         );
//       },
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical: 10.0),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10.0),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               offset: Offset(0, 5),
//               blurRadius: 10.0,
//             ),
//           ],
//         ),
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(20.0),
//               child: Icon(
//                 Icons.picture_as_pdf,
//                 color: Colors.red,
//                 size: 40.0,
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               padding: EdgeInsets.all(15.0),
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(10.0),
//                   bottomRight: Radius.circular(10.0),
//                 ),
//               ),
//               child: Text(
//                 fileName,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.black87,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 16.0,
//                 ),
//               ),
//             ),
//           ],
//         ),
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
//       body: SfPdfViewer.asset(
//         'asset/pdfs/$pdfFileName', // Corrected path to the PDF file
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'custom_bottom_navigation_bar.dart';
import 'home_page.dart';  // Ensure this import points to your HomePage file
import 'profile_view.dart'; // Ensure this import points to your ProfileViewPage file

class DocumentViewPage extends StatefulWidget {
  @override
  _DocumentViewPageState createState() => _DocumentViewPageState();
}

class _DocumentViewPageState extends State<DocumentViewPage> {
  //int _currentIndex = 1; // Default to Packages tab

  void _onTap(int index) {
    setState(() {
     // _currentIndex = index;
    });

    switch (index) {
      case 0:
        // Navigate to the HomePage when the home icon is tapped
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage_Sponser()),
          (Route<dynamic> route) => false,
        );
        break;
      case 1:
        // Stay on the current page
        break;
      case 2:
        // Navigate to the ProfileViewPage when the profile icon is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileViewPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Document View',style: TextStyle(color: Colors.white)),
        backgroundColor:  Color(0xFF050C9B),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildDocumentCard(context, 'Document 1.pdf'), // Card for kk.pdf
            buildDocumentCard(context, 'Document 2.pdf'),
            buildDocumentCard(context, 'Document 3.pdf'), // Card for kk.pdf
            buildDocumentCard(context, 'Document 4.pdf'),
            // buildDocumentCard(context, 'aa.pdf'), // Card for aa.pdf
            // buildDocumentCard(context, 'dd.pdf'), // Card for dd.pdf
            // buildDocumentCard(context, 'kk.pdf'), // Card for kk.pdf
            // buildDocumentCard(context, 'k.pdf'),  // Card for k.pdf
          ],
        ),
      ),
      bottomNavigationBar: HomeBottomBar(
        //currentIndex: _currentIndex,
        //onTap: _onTap,
      ),
    );
  }

  Widget buildDocumentCard(BuildContext context, String fileName) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PDFViewerPage(pdfFileName: fileName)),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 5),
              blurRadius: 10.0,
            ),
          ],
          border: Border.all(color: Color.fromARGB(255, 57, 44, 244), width: 2), // Add red border
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.picture_as_pdf,
                color:  Color.fromARGB(255, 57, 44, 244),
                size: 40.0,
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Text(
                fileName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
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
        title: Text('PDF Viewer  ',style: TextStyle(color: Colors.white)),
        
        backgroundColor: Color(0xFF050C9B),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          }
        )
      ),
      body: SfPdfViewer.asset(
        'asset/pdfs/$pdfFileName', // Corrected path to the PDF file
      ),
    );
  }
}
