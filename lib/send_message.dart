
import 'package:flutter/material.dart';

class SendMessage extends StatelessWidget {
  const SendMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 70,
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 18),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide(color: Colors.white)),
                    prefixIcon: Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Type a message",
                      style: TextStyle(color: Colors.white),
                    ),
                    suffixIcon: Icon(
                      Icons.attach_file,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    border: Border.all(color: Colors.white)),
                child: const Center(
                  child: Icon(
                    Icons.keyboard_voice_sharp,
                    color: Colors.white,
                  ),
                ),
              ),

            )),
      ],
    );
  }
}
