import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavbarIcons {
  final IconData selected, unselected;
  const BottomNavbarIcons({required this.selected, required this.unselected});
}

List<BottomNavbarIcons> bottomIcons = [
  BottomNavbarIcons(
      selected: Icons.home_filled, unselected: Icons.home_outlined),
  BottomNavbarIcons(
      selected: CupertinoIcons.chat_bubble_text_fill,
      unselected: CupertinoIcons.chat_bubble_text),
  BottomNavbarIcons(
      selected: CupertinoIcons.compass_fill,
      unselected: CupertinoIcons.compass),
  BottomNavbarIcons(
      selected: Icons.person_rounded, unselected: Icons.person_outline_rounded)
];
