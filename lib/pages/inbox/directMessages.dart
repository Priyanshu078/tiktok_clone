import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DirectMessages extends StatelessWidget {
  const DirectMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(CupertinoIcons.back),
                      ),
                    ),
                    Text(
                      "Direct Messages",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child:
                          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    )
                  ],
                ),
                Container(
                  height: 1,
                  color: Colors.black12,
                ),
                Expanded(
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.send,
                        size: 200,
                      ),
                      Text(
                        "Message your friends",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 75,
                      ),
                      Text("Share videos or start a conversation",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26))
                    ],
                  )),
                )
              ],
            ),
          ),
        ));
  }
}
