import 'package:flutter/material.dart';


class NotRegisterEvent extends StatelessWidget {
  const NotRegisterEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
                "Event",
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
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/images/registerNow.png'
                ),

               const SizedBox(height: 80,),
                const Text('Not Registered Yet',style: TextStyle(fontSize: 16),),
                const Text('Please visit our website to register',style: TextStyle(fontSize: 16),),
              ],
            ),
          ),
        )
    );
  }
}
