import 'package:flutter/material.dart';
import 'package:practice/constants/constants.dart';
import 'package:practice/widgets/appbar.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Darkcolor,
      appBar: AppB(),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 250.0,
                      height: 70.0,
                      child: Card(
                        elevation: 5.0,
                        color: GreyColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                sh1,
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Visibility(
                                visible: iconvisibale,
                                child: Icon(
                                  Icons.arrow_right_alt_sharp,
                                  size: 50.0,
                                  color: blackcolor,
                                ),
                              ),
                              Text(
                                sh2,
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 160.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 5.0,
                        primary: GreyColor,
                        minimumSize: Size(100.0, 35.0),
                      ),
                      onPressed: () {
                        // to match the list.length with the number of  players
                        for (var x = 0; x < Play.playerNo.length; x++) {
                          if (Play.playerNo[x] == '') {
                            Play.playerNo.length = playernumber;
                          }
                        }
                        iconvisibale = true;
                        // to repaet players name by random in main page
                        Timer.periodic(Duration(milliseconds: 300), (timer) {
                          time--;
                          if (time > 0 && time <= 10) {
                            showplayer1 =
                                Random().nextInt(Play.playerNo.length + 1);
                            showplayer2 =
                                Random().nextInt(Play.playerNo.length + 1);

                            sh1 = Play.playerNo.elementAt(showplayer1);
                            sh2 = Play.playerNo.elementAt(showplayer2);
                          } else if (time == 0) {
                            timer.cancel();
                            time = 10;
                          }
                        });
                      },
                      child: Text(
                        'Start Game',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: ambercolor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 140.0,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: GreyColor,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              AddPlayerPage(context, GetAdd(context));
                            },
                            child: Text(
                              'Add',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              AddPlayerPage(context, GetAdd(context));
                            },
                            child: Icon(
                              Icons.add,
                              size: 35.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    Visibility(
                      visible: visibale1,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              text1,
                              style: TextStyle(
                                color: ambercolor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(
                              thickness: 3.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: visibale2,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              text2,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(
                              thickness: 3.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: visibale3,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              text3,
                              style: TextStyle(
                                color: ambercolor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(
                              thickness: 3.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: visibale4,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              text4,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(
                              thickness: 3.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: visibale5,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              text5,
                              style: TextStyle(
                                color: ambercolor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(
                              thickness: 3.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: visibale6,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              text6,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(
                              thickness: 3.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: visibale7,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              text7,
                              style: TextStyle(
                                color: ambercolor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(
                              thickness: 3.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: visibale8,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              text8,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(
                              thickness: 3.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: visibale9,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              text9,
                              style: TextStyle(
                                color: ambercolor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(
                              thickness: 3.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: visibale10,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              text10,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(
                              thickness: 3.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          GetReset();
                        });
                      },
                      child: Icon(
                        Icons.restart_alt_sharp,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: ambercolor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget GetAdd(BuildContext context) {
    return Scaffold(
      backgroundColor: Darkcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 400.0,
                  height: 200.0,
                  child: Card(
                    color: GreyColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: TextField(
                            style: TextStyle(
                              fontSize: 20.0,
                              color: blackcolor,
                              fontWeight: FontWeight.bold,
                            ),
                            controller: playercontorl,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: ' Add player',
                              hintStyle: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: blackcolor,
                              ),
                            ),
                          ),
                          width: 150.0,
                          height: 30.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: ambercolor,
                          ),
                          onPressed: () {
                            setState(() {
                              GetPLyarName();
                            });
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.done_all_sharp,
                            size: 40.0,
                            color: Darkcolor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
