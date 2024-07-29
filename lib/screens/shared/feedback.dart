import 'package:flutter/material.dart';
import 'bottom_bar.dart';

class EmojisSelectable extends StatefulWidget {
  final Function(String) onEmojiSelected;

  const EmojisSelectable({Key? key, required this.onEmojiSelected}) : super(key: key);

  @override
  _EmojisSelectableState createState() => _EmojisSelectableState();
}

class _EmojisSelectableState extends State<EmojisSelectable> {
  String selectedEmoji = ''; // Track the selected emoji

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectedEmoji = '😭';
                widget.onEmojiSelected(selectedEmoji);
              });
            },
            child: Text(
              '😭',
              style: TextStyle(
                fontSize: selectedEmoji == '😭' ? 48.0 : 28.0, // Increase size if selected
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedEmoji = '😢';
                widget.onEmojiSelected(selectedEmoji);
              });
            },
            child: Text(
              '😢',
              style: TextStyle(
                fontSize: selectedEmoji == '😢' ? 48.0 : 28.0,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedEmoji = '😊';
                widget.onEmojiSelected(selectedEmoji);
              });
            },
            child: Text(
              '😊',
              style: TextStyle(
                fontSize: selectedEmoji == '😊' ? 48.0 : 28.0,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedEmoji = '😃';
                widget.onEmojiSelected(selectedEmoji);
              });
            },
            child: Text(
              '😃',
              style: TextStyle(
                fontSize: selectedEmoji == '😃' ? 48.0 : 28.0,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedEmoji = '🤩';
                widget.onEmojiSelected(selectedEmoji);
              });
            },
            child: Text(
              '🤩',
              style: TextStyle(
                fontSize: selectedEmoji == '🤩' ? 48.0 : 28.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Feedbacks extends StatefulWidget {
  @override
  _FeedbacksState createState() => _FeedbacksState();
}

class _FeedbacksState extends State<Feedbacks> {
  String selectedEmoji = '';

  void handleEmojiSelected(String emoji) {
    setState(() {
      selectedEmoji = emoji;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(''), // Replace with your background image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
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
                                Navigator.pushReplacementNamed(context, '/schedule');
                              },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Feedbacks',
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
                            'Share Your Experience',
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
                      backgroundImage: AssetImage('assets/img/profile.webp'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 170,
            left: 20,
            right: 20,
            child: Container(
              height: 170,
              decoration: BoxDecoration(
                color: Color(0xFFDADADA),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 20.0),
                      child: Text(
                        'Share Your Feedback',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 0),
                      child: Text(
                        'Rate Your Experience',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  EmojisSelectable(
                    onEmojiSelected: handleEmojiSelected,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 20,
            right: 20,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                color: Color(0xFFDADADA),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write Your Comment ...',
                      hintStyle: TextStyle(fontSize: 18.0),
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                    ),
                    maxLines: 8,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 700,
              left: 120,
              right: 120,
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color(0xFF3572EF),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    'Submit',
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ) ,
                  ),
                ),
              )
          )
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}


