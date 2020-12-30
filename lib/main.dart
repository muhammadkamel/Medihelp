import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MediHelp',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffF9FAFF),
          body: Container(
              child: Column(
            children: [
              Container(
                height: 90,
                alignment: Alignment.center,
                // color: Color(0xfffefefe),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Icon(
                        Icons.menu,
                        size: 30,
                      ),
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(13),
                        child: Icon(
                          Icons.notifications,
                          size: 30,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 20,
                              offset: Offset(
                                0.0,
                                10.0,
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),

              // Welcome title
              Container(
                alignment: Alignment.centerLeft,
                // color: Colors.orange,
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome to the Medihelp'),
                    SizedBox(height: 10),
                    Text(
                      'Muhammad!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // List view horizontal
              Container(
                alignment: Alignment.center,
                height: 110,
                child: Align(
                  alignment: Alignment.center,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 90,
                        // height: 100,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(14),
                          ),
                          border: Border.all(
                            width: 2,
                            color: Colors.blue,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 73,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14),
                                ),
                                color: Color(0xff99DEFB),
                              ),
                            ),
                            Center(
                              child: Text(
                                'First',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
