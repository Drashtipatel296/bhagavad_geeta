import 'package:flutter/material.dart';

import '../../utils/gitaaarti.dart';

class AaratiScreen extends StatefulWidget {
  const AaratiScreen({super.key});

  @override
  State<AaratiScreen> createState() => _AaratiScreenState();
}

class _AaratiScreenState extends State<AaratiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFADFAA),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
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
                    height: 500,
                    width: 450,
                    child: Image.asset('asset/img/bg1.png',fit: BoxFit.cover,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  SizedBox(
                    height: 175,
                    child: Image.asset(
                      'asset/img/logo.png',
                    ),
                  ),
                  Container(
                    height: 665,
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
                            height: 635,
                            width: 430,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    'गीता आरती',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                ...List.generate(
                                  17,
                                  (index) => Text(
                                    arti[index],
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                                const SizedBox(height: 5,),
                                const Divider(thickness: 10,color: Colors.black,),
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
      ),
    );
  }
}
