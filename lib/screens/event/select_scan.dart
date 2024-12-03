import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../utils/auth_headers.dart';
import '../../utils/constants.dart';

class SelectScan extends StatelessWidget {
  const SelectScan({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Select QR Scanner",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 28.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Card(
                color: Color(0xff7DC6FF),
                child: _SampleCard(cardName: 'Registration', icon: Icons.how_to_reg),
              ),
              SizedBox(height: 20),
              Card(
                color: Color(0xff5AB2FF),
                child: _SampleCard(cardName: 'Lunch', icon: Icons.lunch_dining),
              ),
              SizedBox(height: 20),
              Card(
                color: Color(0xff3498DB),
                child: _SampleCard(cardName: 'Refreshments', icon: Icons.free_breakfast),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SampleCard extends StatelessWidget {
  const _SampleCard({required this.cardName, required this.icon});
  final String cardName;
  final IconData icon;

  Future<void> _callScanEndpoint(BuildContext context, String ticketId, String cardName) async {
    final url = Uri.parse('${ApiConstants.baseUrl}/api/qr/scan'); // Replace with dynamic configuration

    final data = jsonEncode({
      'ticketId': ticketId,
      'cardName': cardName,
    });

    try {
      final headers = await getHeaders();
      final response = await http.post(url, headers: headers, body: data);

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        final message = responseBody['message'] ?? 'Success!';
        _showPopupDialog(context, message);
      } else {
        final error = jsonDecode(response.body)['message'] ?? 'Unknown error occurred.';
        _showPopupDialog(context, error);
      }
    } catch (e) {
      _showPopupDialog(context, 'Failed to connect to server. Please try again.');
    }
  }

  void _showPopupDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Notification'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }




  void _scanQRCode(BuildContext context, String cardName) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const QRViewExample()),
    );

    if (result != null) {
      await _callScanEndpoint(context, result, cardName);
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _scanQRCode(context, cardName),
      child: SizedBox(
        width: 300,
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Icon(
                icon,
                size: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                cardName,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class QRViewExample extends StatefulWidget {
  const QRViewExample({super.key});

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  late QRViewController controller;
  final GlobalKey qrKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scan QR Code')),
      body: QRView(
        key: qrKey,
        onQRViewCreated: (controller) {
          setState(() {
            this.controller = controller;
          });
          controller.scannedDataStream.listen((scanData) {
            controller.pauseCamera();
            Navigator.pop(context, scanData.code);
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}