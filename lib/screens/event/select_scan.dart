import 'package:flutter/material.dart';

class SelectScan extends StatelessWidget {
  const SelectScan({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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
              icon: const Icon(Icons.arrow_back,color: Colors.black,size: 28.0,),
              onPressed: () {
                Navigator.pop(context); // Navigate back when arrow back is pressed
              },
            ),
          ),
          body: const Padding(
            padding: EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                    color: Color(0xff7DC6FF),
                    child: _SampleCard(cardName: 'Registration',icon:Icons.how_to_reg)),
                SizedBox(height: 20),
                Card(
                    color: Color(0xff5AB2FF),
                    child: _SampleCard(cardName: 'Lunch',icon:Icons.lunch_dining)),
                SizedBox(height: 20),
                Card(
                    color: Color(0xff3498DB),
                    child: _SampleCard(cardName: 'Refreshments',icon:Icons.free_breakfast)),
              ],
            ),
          ),
        ),
    );
  }
}

class _SampleCard extends StatelessWidget {
  const _SampleCard({required this.cardName, required  this.icon});
  final String cardName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(

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
            child:
              Text(cardName,style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),

          )
        ],
        // child: Text(
        //   cardName,
        //   style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Customize text style
        // ),
      ),
    );
  }
}

