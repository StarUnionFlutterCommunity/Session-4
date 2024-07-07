import 'package:flutter/material.dart';
import 'package:flutter_emoji_feedback/flutter_emoji_feedback.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
      ),
        body: Center(
      child: Column(
        children: [
          Text('Home 2', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go back to Home'),
          ),
          SizedBox(height: 20),
          EmojiFeedback(
          animDuration: const Duration(milliseconds: 300),
          curve: Curves.bounceIn,
        
          onChanged: (value) {
            print(value);
          },
        ),
        ],
      ),
    
    ));
  }
}
