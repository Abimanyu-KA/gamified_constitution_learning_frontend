import 'package:flutter/material.dart';

class ChatbotHelper extends StatefulWidget {
  @override
  _ChatbotHelperState createState() => _ChatbotHelperState();
}

class _ChatbotHelperState extends State<ChatbotHelper> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height:
          MediaQuery.of(context).size.height * 0.7, // 70% of the screen height
      child: Column(
        children: [
          Text(
            'Chat with AI Helper',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Ask a question...',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  if (_controller.text.isNotEmpty) {
                    setState(() {
                      _messages.add('User: ${_controller.text}');
                      // Mock response
                      _messages
                          .add('AI: This is the response to your question.');
                      _controller.clear();
                    });
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
