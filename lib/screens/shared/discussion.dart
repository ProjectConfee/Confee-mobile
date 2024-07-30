import 'package:flutter/material.dart';
import 'bottom_bar.dart';

class Discussion extends StatelessWidget {
  const Discussion({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    void showDetailsDialog(BuildContext context, String question, List<String> replies) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            title: Text(
              'Discussion Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    question,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  ...replies.map((reply) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(reply),
                  )),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    }

    void showInputDialog(BuildContext context) {
      final TextEditingController questionController = TextEditingController();

      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            title: Text(
              'New Discussion',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: questionController,
                  // Align text to the start
                  decoration: InputDecoration(
                    labelText: 'Question',
                    hintText: 'Enter your question',
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),

                  maxLines: 6,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  String question = questionController.text;
                  // Handle the input data here, e.g., save it to a list or send it to a server
                },
                child: Text('Submit'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel'),
              ),
            ],
          );
        },
      );
    }


    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 130,
              color: Color(0xFF050C9B),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10.0, top: 20.0),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap:(){
                            Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Discussion',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Padding(
                        padding: EdgeInsets.only(left: 34.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Discuss with the Community',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('asset/images/profile.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 130,
            child: Scrollbar(
              controller: scrollController,
              thickness: 10.0, // Adjust the thickness here
              radius: Radius.circular(10.0), // Adjust the radius here
              thumbVisibility: true,
              child: SingleChildScrollView(
                controller: scrollController,
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: List.generate(5, (index) {
                    return GestureDetector(
                      onTap: () {
                        showDetailsDialog(
                          context,
                          'This is the full version of the question which I have', // Replace with the full question
                          List.generate(10, (replyIndex) => 'Reply ${replyIndex + 1}'), // Replace with actual replies
                        );
                      },
                      child: Card(
                        color: Color(0xFFDADADA), // Grey color box
                        margin: EdgeInsets.only(bottom: 20.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(height: 20,),
                                      CircleAvatar(
                                        backgroundImage: AssetImage('asset/images/profile.png'), // Replace with the profile image path
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Viranga', // Replace with the username
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Text(
                                      'This is the content of the question which I have This is the content of the question which I ',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 2.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 128.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.reply),
                                        SizedBox(width: 5), // Add a small gap between the icon and text
                                        Text(
                                          '10 replies', // Replace with actual number of replies
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '2 hours ago', // Replace with actual time
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showInputDialog(context);
        },
        backgroundColor: Color(0xFFADDBED),
        child: Icon(
          Icons.add,
          size: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
