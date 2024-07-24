// // // qrscan_page.dart

// // import 'package:flutter/material.dart';
// // import 'package:qr_code_scanner/qr_code_scanner.dart';

// // class QRScanPage extends StatefulWidget {
// //   @override
// //   _QRScanPageState createState() => _QRScanPageState();
// // }

// // class _QRScanPageState extends State<QRScanPage> {
// //   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
// //   Barcode? result;
// //   QRViewController? controller;

// //   @override
// //   void reassemble() {
// //     super.reassemble();
// //     controller?.pauseCamera();
// //     controller?.resumeCamera();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Scan QR Code'),
// //       ),
// //       body: Column(
// //         children: <Widget>[
// //           Expanded(
// //             flex: 5,
// //             child: QRView(
// //               key: qrKey,
// //               onQRViewCreated: _onQRViewCreated,
// //             ),
// //           ),
// //           Expanded(
// //             flex: 1,
// //             child: Center(
// //               child: (result != null)
// //                   ? Text('Barcode Type: ${result!.format}   Data: ${result!.code}')
// //                   : Text('Scan a code'),
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }

// //   void _onQRViewCreated(QRViewController controller) {
// //     setState(() {
// //       this.controller = controller;
// //     });
// //     controller.scannedDataStream.listen((scanData) {
// //       setState(() {
// //         result = scanData;
// //       });
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     controller?.dispose();
// //     super.dispose();
// //   }
// // }
// // qrscan_page.dart

// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
// import 'home_page.dart'; // Import your home page file
// import 'profile_view.dart'; // Import ProfileViewPage
// import 'custom_bottom_navigation_bar.dart'; // Import the CustomBottomNavigationBar

// class QRScanPage extends StatefulWidget {
//   @override
//   _QRScanPageState createState() => _QRScanPageState();
// }

// class _QRScanPageState extends State<QRScanPage> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//   Barcode? result;
//   QRViewController? controller;
//   int _currentIndex = 1; // Default to Packages tab

//   @override
//   void reassemble() {
//     super.reassemble();
//     controller?.pauseCamera();
//     controller?.resumeCamera();
//   }

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
//         title: Text('Scan QR Code'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             flex: 5,
//             child: QRView(
//               key: qrKey,
//               onQRViewCreated: _onQRViewCreated,
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Center(
//               child: (result != null)
//                   ? Text('Barcode Type: ${result!.format}   Data: ${result!.code}')
//                   : Text('Scan a code'),
//             ),
//           )
//         ],
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onTap,
//       ),
//     );
//   }

//   void _onQRViewCreated(QRViewController controller) {
//     setState(() {
//       this.controller = controller;
//     });
//     controller.scannedDataStream.listen((scanData) {
//       setState(() {
//         result = scanData;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }


import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher
import 'home_page.dart'; // Import your home page file
import 'profile_view.dart'; // Import ProfileViewPage
import 'custom_bottom_navigation_bar.dart'; // Import the CustomBottomNavigationBar

class QRScanPage extends StatefulWidget {
  @override
  _QRScanPageState createState() => _QRScanPageState();
}

class _QRScanPageState extends State<QRScanPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
  int _currentIndex = 1; // Default to Packages tab

  @override
  void reassemble() {
    super.reassemble();
    controller?.pauseCamera();
    controller?.resumeCamera();
  }

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        // Navigate to the HomePage when the home icon is tapped
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (Route<dynamic> route) => false,
        );
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
        title: Text('Scan QR Code'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
              overlay: QrScannerOverlayShape(
                borderColor: Colors.red,
                borderRadius: 10,
                borderLength: 30,
                borderWidth: 10,
                cutOutSize: MediaQuery.of(context).size.width * 0.8,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: (result != null)
                  ? Text('Barcode Type: ${result!.format}   Data: ${result!.code}')
                  : Text('Scan a code'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
      // Handle the scanned data
      _handleScanResult(scanData);
    });
  }

  void _handleScanResult(Barcode scanData) async {
    final scannedData = scanData.code;
    if (scannedData != null && Uri.tryParse(scannedData)?.hasAbsolutePath == true) {
      // Launch URL if it is a valid URL
      if (await canLaunch(scannedData)) {
        await launch(scannedData);
      } else {
        // Handle the case when the URL cannot be launched
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not launch URL: $scannedData')),
        );
      }
    } else {
      // Handle non-URL QR codes
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Scanned data is not a valid URL: $scannedData')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
