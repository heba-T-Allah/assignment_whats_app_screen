import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      appBar: AppBar(
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
      ),
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
                      child: Row(
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
                      ),
                    ),
                    Row(
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
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Row(
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
                              contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
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
                        // CircleAvatar(
                        //     radius: 40,
                        //     backgroundImage: AssetImage(
                        //       "assets/person2.jpg",
                        //     )),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
