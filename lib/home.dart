import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension DuplicateRemoval<T> on List<T> {
  List<T> get removeAllDuplicates => [
        ...{...this}
      ];
}

class Home extends StatelessWidget {
  static const duplicateStrings = [
    'random',
    'strings',
    'list',
    'here',
    'random',
    'list'
  ];

  static const secondList = [
    'random',
    'strings',
    'list',
    'here',
    'strings',
    'here'
  ];

  void firstMethod() {
    final removeDuplicates = duplicateStrings.toSet().toList();
    print(removeDuplicates);
  }

  void secondMethod() {
    final removeDuplicates = [
      ...{...duplicateStrings}
    ];
    print(removeDuplicates);
  }

  void testOurExtension() {
    print(secondList.removeAllDuplicates);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'Removing Duplicates From List',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            testOurExtension();
          },
          child: Text('Tap here to print'),
        ),
      ),
    );
  }
}
