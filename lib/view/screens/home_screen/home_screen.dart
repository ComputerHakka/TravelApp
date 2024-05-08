import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  children: [
                    const Icon(Icons.search),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: TextField(),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: TextField(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text('Музыкально Отлететь'),
          ],
        ),
      ),
    );
  }
}

// child: const Row(
//                   children: [
//                     Icon(Icons.search),
//                     Column(
//                       children: [
//                         TextField(),
//                         TextField(),
//                       ],
//                     ),
//                   ],
//                 ),
