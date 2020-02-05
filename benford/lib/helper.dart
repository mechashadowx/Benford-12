import 'package:benford/Details.dart';
import 'package:flutter/material.dart';
import 'Data.dart';

final black = Color(0xFF000000);
final red = Color(0xFFC33C3C);
final gray = Color(0xFF939393);

final definition =
    'The law of anomalous numbers, or the first-digit law, is an observation about the frequency distribution of leading digits in many real-life sets of numerical data. The law states that in many naturally occurring collections of numbers, the leading significant digit is likely to be small.For example, in sets that obey the law, the number 1 appears as the leading significant digit about 30% of the time, while 9 appears as the leading significant digit less than 5% of the time.';
final startPagetitle = 'Try the law on some data.....';

final List<Data> data = [
  Data(
    cardTitle: 'Population',
    content: [
      'free data WTF1',
      'free data WTF2',
      'free data WTF3',
      'free data WTF4',
    ],
    details: {
      'free data WTF1': Details(
        title: 'free data WTF1',
        desc: 'test test test',
        link: 'nothing',
      ),
      'free data WTF2': Details(
        title: 'free data WTF2',
        desc: 'test test test',
        link: 'nothing',
      ),
      'free data WTF3': Details(
        title: 'free data WTF3',
        desc: 'test test test',
        link: 'nothing',
      ),
      'free data WTF4': Details(
        title: 'free data WTF4',
        desc: 'test test test',
        link: 'nothing',
      ),
    },
    open: false,
  ),
  Data(
    cardTitle: 'YouTube',
    content: [],
    details: {},
    open: false,
  ),
  Data(
    cardTitle: 'Facebook',
    content: [],
    details: {},
    open: false,
  ),
];
