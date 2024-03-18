import 'package:flutter/material.dart';

import '../../utils/bhagvadgita.dart';

class ShlokScreen extends StatefulWidget {
  const ShlokScreen({super.key});

  @override
  State<ShlokScreen> createState() => _ShlokScreenState();
}

int shlokIndex = 0;

class _ShlokScreenState extends State<ShlokScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFADFAA),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          'श्रीमद भगवत गीता',
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
                    height: 500,
                    width: 450,
                    child: Image.asset(
                      'asset/img/bg1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: SizedBox(
                    height: 180,
                    child: Image.asset(
                      'asset/img/logo.png',
                    ),
                  ),
                ),
                Container(
                  height: 10590,
                  width: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          height: 10560,
                          width: 450,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: List.generate(
                              data[0]['Bhaags'][shlokIndex]['shloks'].length,
                              (index) => buildContainer(index),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Container buildContainer(int index) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
    decoration: const BoxDecoration(
      color: Colors.orangeAccent,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    child: Column(
      children: [
        if (index == 0)
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text(
              data[0]['Bhaags'][shlokIndex]['id'],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF2E2E2E),
              ),
            ),
          ),
        if (index == 0)
          Text(
            data[0]['Bhaags'][shlokIndex]['name'],
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xFF2E2E2E),
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            data[0]['Bhaags'][shlokIndex]['shloks'][index]['shlok'],
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xFF2E2E2E),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            data[0]['Bhaags'][shlokIndex]['shloks'][index]['meaning'],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xFF2E2E2E),
            ),
          ),
        ),
        Container(
          height: 40,
          width: 455,
          decoration: const BoxDecoration(
            color: Color(0xFF2F2D32),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Copy',
                style: TextStyle(
                    color: Color(0xFFFDB316),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Share',
                style: TextStyle(
                    color: Color(0xFFFDB316),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
