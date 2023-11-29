import 'package:flutter/material.dart' show Color;

class Collection {
  final String title, description, iconSrc;
  final Color color;

  Collection({
    required this.title,
    this.description = 'Make your best Collection',
    this.iconSrc = "assets/icons/books.png",
    this.color = const Color(0xFF7553F6),
  });
}

final List<Collection> collection = [
  Collection(
    title: "Books",
  ),
  Collection(
    title: "Books",
    iconSrc: "assets/icons/code.svg",
    color: const Color(0xFF80A4FF),
  ),
];

final List<Collection> recentCourses = [
  Collection(title: "The Power of Language by Shin Do Hyun "),
  Collection(
    title: "BE by BTS",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/music.png",
  ),
  Collection(title: "Proof by BTS"),
  Collection(
    title: "Sky by me",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/books.png",
  ),
];
