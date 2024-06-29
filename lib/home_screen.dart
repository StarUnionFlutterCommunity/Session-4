import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _categories = [
    "All",
    "New",
    "Pending",
    "Approved",
    "Rejected",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Applications"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 20,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 34, left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "You have\n27 Applications 👍",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff0D0D26)),
            ),
            const SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  for (int i = 0; i < _categories.length; i++)
                    customButton(
                      text: _categories[i],
                      isSelected: selectedIndex == i,
                      onPressed: (){
                        setState(() {
                          selectedIndex = i;   
                        });
                      },
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      color: Colors.red,
                      height: 200,
                      width: 300,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      color: Colors.red,
                      height: 200,
                      width: 300,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      color: Colors.red,
                      height: 200,
                      width: 300,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      color: Colors.red,
                      height: 200,
                      width: 300,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      color: Colors.red,
                      height: 200,
                      width: 300,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      color: Colors.red,
                      height: 200,
                      width: 300,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      color: Colors.red,
                      height: 200,
                      width: 300,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customButton(
      {required String text, bool isSelected = false, Function()? onPressed}) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: OutlinedButton(
        style: isSelected
            ? OutlinedButton.styleFrom(
                backgroundColor: Color(0xff356899),
                foregroundColor: Colors.white,
                side: BorderSide(
                  color: Color(0xff356899),
                ),
              )
            : OutlinedButton.styleFrom(
                foregroundColor: Colors.grey,
              ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
