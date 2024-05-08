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
            Container(
              width: double.infinity,
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _TravelCell(),
                  _TravelCell(),
                  _TravelCell(),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Показать все места'),
            ),
          ],
        ),
      ),
    );
  }
}

class _TravelCell extends StatelessWidget {
  const _TravelCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 170,
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
          ),
          const Text('Die Antwoord'),
          const Text('Die Antwoord'),
          Row(
            children: [
              Icon(Icons.airline_seat_legroom_normal_sharp),
              Text('Die Antwoord'),
            ],
          ),
        ],
      ),
    );
  }
}
