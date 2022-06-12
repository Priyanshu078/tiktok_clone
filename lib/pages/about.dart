import 'package:flutter/material.dart';

class About extends StatefulWidget {
  About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> with TickerProviderStateMixin {
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
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: IconButton(
                icon: Icon(Icons.person_add_alt_1),
                onPressed: () {},
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
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz_outlined),
              ),
            )
          ]),
          Container(
            height: 1,
            color: Colors.black12,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          CircleAvatar(
            radius: MediaQuery.of(context).size.height / 17,
            backgroundImage: AssetImage("assets/dummyimage.jpg"),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Text(
            "@priyanshupaliwal078",
            style: TextStyle(
                fontSize: 17,
                color: Colors.black87,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 24.0),
                child: Column(
                  children: [
                    Text(
                      "10",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: Column(
                  children: [
                    Text(
                      "10 M",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 8.0),
                child: Column(
                  children: [
                    Text(
                      "100 M",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Likes",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: MediaQuery.of(context).size.height / 17,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(color: Colors.black26),
                      shape: BoxShape.rectangle),
                  child: Center(
                    child: Text(
                      "Edit profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: MediaQuery.of(context).size.height / 17,
                  width: MediaQuery.of(context).size.height / 17,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(color: Colors.black26),
                      shape: BoxShape.rectangle),
                  child: Icon(
                    Icons.bookmark_outline,
                    size: 35,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Text(
            "Tap to add bio",
            style: TextStyle(
                color: Colors.black26,
                fontSize: 17,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Container(
            height: 1,
            color: Colors.black12,
          ),
          TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.black26,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            labelPadding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 6,
                right: MediaQuery.of(context).size.width / 6),
            tabs: [
              Tab(
                icon: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Icon(
                    Icons.apps,
                  ),
                ),
              ),
              Tab(
                icon: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Icon(Icons.favorite_outline),
                ),
              )
            ],
          ),
          Expanded(
              child: TabBarView(controller: _tabController, children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0),
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        child: Image.asset(
                          "assets/dummyimage.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      childAspectRatio: 1),
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        child: Image.asset(
                          "assets/dummyimage.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
            ),
          ]))
        ],
      ),
    ));
  }
}
