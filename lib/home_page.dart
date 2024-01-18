import 'package:assignment_whats_app_screen/second_message.dart';
import 'package:assignment_whats_app_screen/send_message.dart';
import 'package:flutter/material.dart';

import 'first_message.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.cover,
        )),
        child: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: FirstMessage(),
                    ),
                    SecondMessage(),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: SendMessage(),
            ),
          ],
        ),
      ),
    );
  }
}
