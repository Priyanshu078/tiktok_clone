import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  Inbox({Key? key}) : super(key: key);

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  String dropdownvalue = "priyanshu";

  var items = [
    "priyanshu",
    "priyanshu1",
    "priyanshu2",
    "priyanshu3",
    "priyanshu4"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
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
                      onPressed: () {},
                      icon: Icon(Icons.send),
                      color: Colors.white,
                    ),
                  ),
                  DropdownButton(
                    // Initial Value
                    value: dropdownvalue,

                    underline: Container(),

                    // Down Arrow Icon
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      size: 25,
                    ),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                              fontWeight: FontWeight.w700),
                        ),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.send)),
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
                      Icons.inbox,
                      size: 200,
                    ),
                    Text(
                      "Notifications aren't available",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 75,
                    ),
                    Text("Notifications about your account will appear here",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26))
                  ],
                )),
              )
            ],
          ),
        ));
  }
}
