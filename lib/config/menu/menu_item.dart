import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({required this.title,
      required this.subTitle,
      required this.link,
      required this.icon
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Dashboard',
      subTitle: 'Panel de acceso a las colmenas',
      link: '/dashboard',
      icon: Icons.hive_sharp)
];
