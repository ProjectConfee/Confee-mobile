//  import 'package:flutter/material.dart';
// import 'dart:convert'; // For JSON handling
// import 'package:http/http.dart' as http; // For HTTP requests

// class StallMapPage extends StatefulWidget {
//   const StallMapPage({Key? key}) : super(key: key);

//   @override
//   _StallMapPageState createState() => _StallMapPageState();
// }

// class _StallMapPageState extends State<StallMapPage> {
//   List<Stall> mainStalls = [];
//   List<Stall> subStalls = [];
//   bool isLoading = true;
//   String baseUrl = 'http://localhost:8080/api/stall'; // Update this with your actual backend URL

//   @override
//   void initState() {
//     super.initState();
//     fetchStalls();
//   }

//   // Function to fetch all stalls from the backend API
//   Future<void> fetchStalls() async {
//     try {
//       final response = await http.get(Uri.parse('$baseUrl/all'));
//       if (response.statusCode == 200) {
//         List<dynamic> stallData = jsonDecode(response.body);
//         setState(() {
//           mainStalls = stallData
//               .map((data) => Stall.fromJson(data))
//               .where((stall) => stall.stallType == 'main')
//               .toList();
//           subStalls = stallData
//               .map((data) => Stall.fromJson(data))
//               .where((stall) => stall.stallType == 'sub')
//               .toList();
//           isLoading = false;
//         });
//       } else {
//         throw Exception('Failed to load stalls');
//       }
//     } catch (error) {
//       print(error);
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Stall Map', style: TextStyle(color: Colors.white)),
//         backgroundColor: Color(0xFF050C9B),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: isLoading
//           ? Center(child: CircularProgressIndicator()) // Loading indicator
//           : SingleChildScrollView(
//               child: Column(
//                 children: [
//                   SizedBox(height: 20),
//                   Text(
//                     'Main Stalls',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 20),
//                   _buildStallSection(mainStalls),
//                   SizedBox(height: 40),
//                   Text(
//                     'Sub Stalls',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 20),
//                   _buildStallSection(subStalls),
//                   SizedBox(height: 40),
//                 ],
//               ),
//             ),
//     );
//   }

//   Widget _buildStallSection(List<Stall> stalls) {
//     List<Widget> rows = [];
//     int stallNumber = 1;
//     for (int i = 0; i < (stalls.length / 3).ceil(); i++) {
//       List<Widget> rowStalls = [];
//       for (int j = 0; j < 3; j++) {
//         if (stallNumber <= stalls.length) {
//           rowStalls.add(_buildShopBox(stalls[stallNumber - 1]));
//         } else {
//           rowStalls.add(Expanded(child: Container()));
//         }
//         stallNumber++;
//       }
//       rows.add(Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: rowStalls,
//       ));
//       rows.add(SizedBox(height: 10));
//     }
//     return Column(children: rows);
//   }

//   Widget _buildShopBox(Stall stall) {
//     return Expanded(
//       child: Container(
//         height: 120,
//         margin: EdgeInsets.symmetric(horizontal: 5),
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.blue, width: 2),
//           borderRadius: BorderRadius.circular(8),
//           color: Colors.white,
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   '${stall.stallName}', // Display the stall name
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 4),
//                 Text(
//                   'Sponsor ID: ${stall.sponsorId}', // Display the sponsor ID
//                   style: TextStyle(fontSize: 14, color: Colors.grey[600]),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Stall class to parse data from backend
// class Stall {
//   final String stallId;
//   final String stallType;
//   final String stallNumber;
//   final String stallName;
//   final String sponsorId; // Added sponsorId field

//   Stall({
//     required this.stallId,
//     required this.stallType,
//     required this.stallNumber,
//     required this.stallName,
//     required this.sponsorId, // Initialize sponsorId
//   });

//   // Factory constructor to create Stall object from JSON
//   factory Stall.fromJson(Map<String, dynamic> json) {
//     return Stall(
//       stallId: json['stallId'].toString(),
//       stallType: json['stallType'],
//       stallNumber: json['stallNumber'],
//       stallName: '${json['stallType']} ${json['stallNumber']}',
//       sponsorId: json['sponsorId'], // Parse sponsorId
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'dart:convert'; // For JSON handling
import 'package:http/http.dart' as http; // For HTTP requests

class StallMapPage extends StatefulWidget {
  const StallMapPage({Key? key}) : super(key: key);

  @override
  _StallMapPageState createState() => _StallMapPageState();
}

class _StallMapPageState extends State<StallMapPage> {
  List<Stall> mainStalls = [];
  List<Stall> subStalls = [];
  bool isLoading = true;
  static const String baseUrl = 'http://localhost:8080/api/stall'; // Update this with your backend URL

  @override
  void initState() {
    super.initState();
    fetchStalls();
  }

  Future<void> fetchStalls() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/all'));
      if (response.statusCode == 200) {
        List<dynamic> stallData = jsonDecode(response.body);
        setState(() {
          mainStalls = stallData
              .map((data) => Stall.fromJson(data))
              .where((stall) => stall.stallType == 'main')
              .toList();
          subStalls = stallData
              .map((data) => Stall.fromJson(data))
              .where((stall) => stall.stallType == 'sub')
              .toList();
          isLoading = false;
        });
      } else {
        _showErrorSnackbar('Failed to load stalls');
      }
    } catch (error) {
      _showErrorSnackbar('Error fetching stalls: $error');
      setState(() {
        isLoading = false;
      });
    }
  }

  void _showErrorSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message, style: TextStyle(color: Colors.white))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stall Map', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF050C9B),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle('Main Stalls'),
                  _buildStallGrid(mainStalls),
                  const SizedBox(height: 20),
                  _buildSectionTitle('Sub Stalls'),
                  _buildStallGrid(subStalls),
                  const SizedBox(height: 40),
                ],
              ),
            ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF050C9B)),
      ),
    );
  }

  Widget _buildStallGrid(List<Stall> stalls) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Adjust based on screen size
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: stalls.length,
        itemBuilder: (context, index) {
          return StallCard(stall: stalls[index]);
        },
      ),
    );
  }
}

// Reusable StallCard Widget
class StallCard extends StatelessWidget {
  final Stall stall;

  const StallCard({Key? key, required this.stall}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [Colors.lightBlueAccent, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                stall.stallName,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF050C9B)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'Sponsor ID: ${stall.sponsorId}',
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Stall Model
class Stall {
  final String stallId;
  final String stallType;
  final String stallNumber;
  final String stallName;
  final String sponsorId;

  Stall({
    required this.stallId,
    required this.stallType,
    required this.stallNumber,
    required this.stallName,
    required this.sponsorId,
  });

  factory Stall.fromJson(Map<String, dynamic> json) {
    return Stall(
      stallId: json['stallId'].toString(),
      stallType: json['stallType'],
      stallNumber: json['stallNumber'],
      stallName: '${json['stallType']} ${json['stallNumber']}',
      sponsorId: json['sponsorId'],
    );
  }
}
 