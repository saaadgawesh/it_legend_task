import 'package:flutter/material.dart';

class account extends StatelessWidget {
  const account({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Row(children: [Icon(Icons.arrow_back)]),
            ),
          ],
        ),
      ],
    );
  }
}
