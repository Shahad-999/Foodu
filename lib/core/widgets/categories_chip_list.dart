import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';

class CategoriesChipList extends StatefulWidget {
  const CategoriesChipList({super.key});

  @override
  State<CategoriesChipList> createState() => _CategoriesChipListState();
}

class _CategoriesChipListState extends State<CategoriesChipList> {
  final List<String> _list = [
    'All',
    'Burger',
    'Pizza',
    'Noodles',
    'Drinks',
    'Desert'
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        const SizedBox(width: 24),
        ChipList(
          listOfChipNames: _list,
          activeBgColorList: [Theme.of(context).colorScheme.primary],
          inactiveBgColorList: [Theme.of(context).colorScheme.background],
          activeTextColorList: const [Colors.white],
          inactiveTextColorList: [Theme.of(context).colorScheme.primary],
          listOfChipIndicesCurrentlySeclected: [0],
          inactiveBorderColorList: [Theme.of(context).colorScheme.primary],
          activeBorderColorList: const [Colors.transparent],
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 24),
      ],
    );
  }
}
