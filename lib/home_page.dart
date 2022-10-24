import 'package:flutter/material.dart';
import 'package:test_app/learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Image.network(
            'https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_1500x1500.png',
            width: 200,
            height: 100,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.all(20),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const LearnFlutterPage();
                  },
                ),
              );
            },
            child: const Text("Stolevi"),
          ),
          //const SizedBox(height: 10,),
          const Divider(
            color: Colors.black,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.all(20),
            ),
            onPressed: () {
              debugPrint("Stolice");
            },
            child: const Text("Stolice"),
          ),
        ]),
      ),
    );

    /*return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return const LearnFlutterPage();
            }),
          );
        },
        child: const Text("Stolevi"),
      ),
    );*/
  }
}
