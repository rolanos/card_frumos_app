import 'package:card_frumos_app/view/app/menu/bottom_navigaton_container.dart';
import 'package:card_frumos_app/view/widget/app_bar.dart';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class MenuScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const MenuScreen({super.key, required this.navigationShell});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: const AppbarRow(),
      bottomNavigationBar:
          BottomNavigationContainer(navigationShell: widget.navigationShell),
      body: widget.navigationShell,
    );
  }
}
