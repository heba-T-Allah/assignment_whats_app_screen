
import 'package:flutter/material.dart';

class SecondMessage extends StatelessWidget {
  const SecondMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(color: Colors.white)),
              child: const Center(
                  child: Text(
                    "This is my second message",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
        ),
        const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    "assets/person2.jpg",
                  )),
            )),
      ],
    );
  }
}
