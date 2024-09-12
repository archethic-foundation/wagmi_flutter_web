import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  const Space({required this.space, super.key});

  factory Space.small() => const Space(space: 12);
  factory Space.medium() => const Space(space: 24);
  factory Space.large() => const Space(space: 48);

  final double space;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(dimension: space);
  }
}
