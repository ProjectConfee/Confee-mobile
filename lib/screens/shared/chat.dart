import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> _messages = [
    {
      'text': 'Hello! How are you?',
      'sender': 'Alice',
      'timestamp': '2024-07-27 10:00:00',
      'isSent': false,
    },
    {
      'text': 'I am good, thank you! How about you?',
      'sender': 'Me',
      'timestamp': '2024-07-27 10:01:00',
      'isSent': true,
    },
    {
      'text': 'I am doing well, thanks for asking!',
      'sender': 'Alice',
      'timestamp': '2024-07-27 10:02:00',
      'isSent': false,
    },
  ];

  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add({
          'text': _controller.text,
          'sender': 'Me',
          'timestamp': DateTime.now().toString(),
          'isSent': true,
        });
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF050C9B),
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/View_Event');
              },
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8), // Adjust spacing between icon and text
            Text(
              "Chat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        )

      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: _messages[index]['isSent']
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0), // Increased space between messages
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: _messages[index]['isSent']
                          ? Colors.blueAccent.withOpacity(0.7)
                          : Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _messages[index]['sender'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: _messages[index]['isSent']
                                ? Colors.white
                                : Colors.black,
                            fontSize: 20.0, // Larger font size for sender
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          _messages[index]['text'],
                          style: TextStyle(
                            color: _messages[index]['isSent']
                                ? Colors.white
                                : Colors.black,
                            fontSize: 18.0, // Larger font size for message text
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          _messages[index]['timestamp'],
                          style: TextStyle(
                            fontSize: 12.0, // Larger font size for timestamp
                            color: _messages[index]['isSent']
                                ? Colors.white70
                                : Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    style: TextStyle(fontSize: 16.0), // Larger font size for input text
                  ),
                ),
                SizedBox(width: 10.0),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                  color: Color(0xFF050C9B),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
