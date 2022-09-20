import 'package:flutter/material.dart';

class CrewPageBody extends StatelessWidget {
  const CrewPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.home),
          ),
        ),
      ],
    );
  }
}
