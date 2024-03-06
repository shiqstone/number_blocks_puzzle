import 'package:flutter/material.dart';
import 'package:number_blocks_puzzle/puzzle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final title = 'Number Blocks Puzzle';
    return NbPuzzleApp();
  }
}

