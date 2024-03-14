import 'package:bhagavad_geeta/view/screens/shlokscreen.dart';
import 'package:flutter/material.dart';
import '../../utils/bhagvadgita.dart';

class BhagavadGeeta extends StatefulWidget {
  const BhagavadGeeta({super.key});

  @override
  State<BhagavadGeeta> createState() => _BhagavadGeetaState();
}

class _BhagavadGeetaState extends State<BhagavadGeeta> {

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
                    child: Image.asset('asset/img/bg1.png',fit: BoxFit.cover,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 190,
                    child: Image.asset(
                      'asset/img/logo.png',
                    ),
                  ),
                  Container(
                    height: 1766,
                    width: 420,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                              onTap: () {
                                shlokIndex = 0;
                                Navigator.of(context).pushNamed('/shlok');
                              },
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'asset/img/sec1.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 65),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            data[index]['Bhaags'][0]['id'],
                                            style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            data[index]['Bhaags'][0]['name'],
                                            style: const TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 1;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'asset/img/sec2.png',height: 73,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 90),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data[index]['Bhaags'][1]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          data[index]['Bhaags'][1]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 2;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'asset/img/sec3.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 90),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            data[index]['Bhaags'][2]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            data[index]['Bhaags'][2]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 3;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'asset/img/sec4.png',height: 85,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 40),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data[index]['Bhaags'][3]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          data[index]['Bhaags'][3]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 4;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'asset/img/sec1.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 65),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            data[index]['Bhaags'][4]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            data[index]['Bhaags'][4]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 5;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'asset/img/sec2.png',height: 72,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 65),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data[index]['Bhaags'][5]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          data[index]['Bhaags'][5]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 6;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'asset/img/sec3.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 65),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            data[index]['Bhaags'][6]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            data[index]['Bhaags'][6]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 7;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'asset/img/sec4.png',height: 85,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 65),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data[index]['Bhaags'][7]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          data[index]['Bhaags'][7]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 8;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'asset/img/sec1.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 40),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            data[index]['Bhaags'][8]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            data[index]['Bhaags'][8]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 9;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'asset/img/sec4.png',height: 85,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 85),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data[index]['Bhaags'][9]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          data[index]['Bhaags'][9]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 10;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'asset/img/sec3.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 55),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            data[index]['Bhaags'][10]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            data[index]['Bhaags'][10]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 11;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'asset/img/sec4.png',height: 85,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 90),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data[index]['Bhaags'][11]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          data[index]['Bhaags'][11]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 12;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'asset/img/sec3.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 45),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            data[index]['Bhaags'][12]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            data[index]['Bhaags'][12]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 13;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'asset/img/sec4.png',height: 85,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 55),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data[index]['Bhaags'][13]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          data[index]['Bhaags'][13]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 14;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'asset/img/sec3.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 75),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            data[index]['Bhaags'][14]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            data[index]['Bhaags'][14]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 15;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'asset/img/sec4.png',height: 85,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 30),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data[index]['Bhaags'][15]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          data[index]['Bhaags'][15]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 16;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'asset/img/sec3.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 45),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            data[index]['Bhaags'][16]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            data[index]['Bhaags'][16]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              shlokIndex = 17;
                              Navigator.of(context).pushNamed('/shlok');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'asset/img/sec4.png',height: 85,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 55),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data[index]['Bhaags'][17]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          data[index]['Bhaags'][17]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
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
}
