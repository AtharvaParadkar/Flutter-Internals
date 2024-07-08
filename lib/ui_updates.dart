// ignore_for_file: avoid_print

import "package:flutter/material.dart";
import "package:flutter_internals/demo_buttons.dart";

class UiUpdates extends StatelessWidget {
  const UiUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    print('UI Updates BUILD Called');
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Every Flutter developer should have a basic understanding of Flutter\'s internals!',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Do you understand how Flutter updates UIs?',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            DemoButtons()
          ],
        ),
      ),
    );
  }
}
