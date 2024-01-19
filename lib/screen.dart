import 'package:flutter/material.dart';
import 'package:my_shoes/insert.dart';
import 'package:my_shoes/home.dart';

// ignore: camel_case_types
class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

// ignore: camel_case_types
class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.purple[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            icon: const Icon(
              Icons.menu_rounded,
              size: 30,
              color: Colors.black,
            )),
        title: const Text(
          'COMMON PROJECTS',
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          const Text(
            '2',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DataPass(),
                  ),
                );
              },
              icon: const Icon(
                Icons.checkroom_sharp,
                color: Colors.black,
                size: 30,
              )),
        ],
      ),
      body: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Map> myProducts =
      List.generate(51, (index) => {"id": index, "name": "Prod $index"});
  // .toList();

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // implement GridView.builder
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 280,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
                
            itemCount: myProducts.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)),
                
                child: Text(
                  myProducts[index]["name"],
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              );
            }),
      ),
    );
  }
}

    // );
  // }
// }

