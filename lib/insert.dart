import 'package:flutter/material.dart';
import 'package:my_shoes/Shoe_data.dart';

class DataPass extends StatelessWidget {
  const DataPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddUser(),
                              ),
                            );
                          },
                          icon: const Text('insert',style: TextStyle(fontSize: 40),) ,
                          iconSize: 300,
                          ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Text(
                  "Back",
                  style: TextStyle(fontSize: 40),
                ),
                iconSize: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
