
import 'package:flutter/material.dart';

class FirstMessage extends StatelessWidget {
  const FirstMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    "assets/person1.jpg",
                  )),
            )),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(color: Colors.white)),
              child: const Center(
                  child: Text(
                    "This is my first message",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
