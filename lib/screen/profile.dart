import 'package:flutter/material.dart';
import 'login.dart';

class News extends StatefulWidget {

  final String username;

  const News({super.key, required this.username});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
   
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 

        leading: IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Loginpage(),
                    ),
                  );
                },
        ),
        title: Text("Welcome, ${widget.username}!"),
      ));
  }
}