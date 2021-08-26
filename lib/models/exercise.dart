import 'package:flutter/material.dart';

class Exercise {
  final String name;
  final String part;
  final int categoryIndex;
  final Widget image;

  const Exercise({
    required this.name,
    required this.part,
    required this.categoryIndex,
    required this.image,
  });
}
