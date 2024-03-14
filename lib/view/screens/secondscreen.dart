import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffFADFAA),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'श्रीमद भगवद गीता',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Stack(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 500,
                  width: 450,
                  child: Image.asset('asset/img/bg1.png',fit: BoxFit.cover,),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Column(
              children: [
                SizedBox(
                  height: height * 00.2,
                  child: Image.asset('asset/img/logo.png'),
                ),
                Container(
                  height: 450,
                  width: 420,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/third');
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: 35),
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
                                Image.asset('asset/img/sec1.png'),
                                SizedBox(width: 75),
                                Text(
                                  'भगवद गीता',
                                  style: TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/saar');
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
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
                              Image.asset('asset/img/sec2.png', height: 72),
                              SizedBox(width: 90),
                              Text(
                                'गीता सार',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/mahatmay');
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
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
                              Image.asset('asset/img/sec3.png', height: 79),
                              SizedBox(width: 70),
                              Text(
                                'गीता माहात्म्य',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/aarati');
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
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
                              Image.asset('asset/img/sec4.png', height: 79),
                              SizedBox(width: 75),
                              Text(
                                'गीता आरती',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w500),
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
        ],
      ),
    );
  }
}
