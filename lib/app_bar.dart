
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget  {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff03141e),
      leading: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      actions: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.video_call_rounded,
            color: Colors.white,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.phone,
            color: Colors.white,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ),
      ],
      title: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
                backgroundImage: AssetImage("assets/person.jpg")),
          ),
          Text(
            "Person",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
