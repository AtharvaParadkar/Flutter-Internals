// ignore_for_file: avoid_print

import "package:flutter/material.dart";

class UiUpdates extends StatefulWidget {
  const UiUpdates({super.key});

  @override
  State<UiUpdates> createState() => _UiUpdatesState();
}

class _UiUpdatesState extends State<UiUpdates> {
  var _isUnderstood = false;
  @override
  Widget build(BuildContext context) {
    print('UI Updates BUILD Called');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Every Flutter developer should have a basic understanding of Flutter\'s internals!',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Do you understand how Flutter updates UIs?',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _isUnderstood = true;
                    });
                  },
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: () {
                    _isUnderstood = false;
                  },
                  child: const Text('No'),
                ),
              ],
            ),
            if (_isUnderstood) const Text('Awesome!'),
          ],
        ),
      ),
    );
  }
}
