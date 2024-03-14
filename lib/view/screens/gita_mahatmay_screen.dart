import 'package:flutter/material.dart';
import '../../utils/gitamahatmay.dart';

class GitaMahatmayScreen extends StatefulWidget {
  const GitaMahatmayScreen({super.key});

  @override
  State<GitaMahatmayScreen> createState() => _GitaMahatmayScreenState();
}

class _GitaMahatmayScreenState extends State<GitaMahatmayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFADFAA),
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'श्रीमद भगवद गीता',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 280,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(250, 50),
                        bottomRight: Radius.elliptical(250, 50),
                      ),
                      gradient: LinearGradient(
                          colors: [
                            Colors.orangeAccent,
                            Colors.orangeAccent,
                            Color(0xffFADFAA),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                children: [
                  SizedBox(
                    height: 190,
                    child: Image.asset(
                      'asset/img/logo.png',
                    ),
                  ),
                  Container(
                    height: 2980,
                    width: 450,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: SingleChildScrollView(
                            child: Container(
                              height: 2940,
                              width: 430,
                              decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Text(
                                      'गीता माहात्म्य',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  ...List.generate(
                                    19,
                                    (index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 9),
                                      child: Text(
                                        mahatmaylist[index],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 21,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Divider(
                                    thickness: 10,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
