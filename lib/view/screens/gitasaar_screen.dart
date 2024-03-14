import 'package:bhagavad_geeta/utils/bhagvadgita.dart';
import 'package:flutter/material.dart';

class GitasaarScreen extends StatefulWidget {
  const GitasaarScreen({super.key});

  @override
  State<GitasaarScreen> createState() => _GitasaarScreenState();
}

class _GitasaarScreenState extends State<GitasaarScreen> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFADFAA),
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
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
                  SizedBox(
                    height: 400,
                    width: 450,
                    child: Image.asset(
                      'asset/img/bg1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: Image.asset(
                      'asset/img/logo.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      height: 5140,
                      width: 450,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Container(
                              height: 5100,
                              width: 430,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: List.generate(
                                    data[1]['bhaags'].length,
                                    (index) => buildContainer(index),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
  Widget buildContainer(int index) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border(bottom: BorderSide(width: 10))),
          child: Column(
            children: [
              Text(
                data[1]['bhaags'][index]['id'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: height / 55,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  data[1]['bhaags'][index]['name'],
                  style: TextStyle(
                    fontSize: height / 40,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                data[1]['bhaags'][index]['meaning'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: height / 53,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          )),
    );
  }
}