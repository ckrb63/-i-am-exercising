import 'package:flutter/material.dart';
import 'package:i_am_exercising/models/exercise.dart';

//바벨 : 0, 덤벨 : 1, 머신 : 2

final exerciseData = [
  Exercise(
    name: '벤치 프레스',
    part: '가슴',
    categoryIndex: 0,
    image: Image.asset(
      'assets/images/exercises/벤치 프레스.png',
    ),
  ),
  Exercise(
    name: '인클라인 벤치 프레스',
    part: '가슴',
    categoryIndex: 0,
    image: Image.asset('assets/images/exercises/인클라인 벤치 프레스.png'),
  ),
];
