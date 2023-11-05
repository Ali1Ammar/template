import 'package:flutter/material.dart';
import 'package:starter/src/core/design/animation/animated_hide.dart';
import 'package:starter/src/core/design/theme/space.dart';
import 'package:starter/src/core/design/widget/logo.dart';
import 'package:starter/src/core/utils/extensions/context.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final optionMenu = [
      (
        name: "Setting",
        icon: Icons.settings,
        onPressed: () {},
      ),
      (
        name: "Logout",
        icon: Icons.logout,
        onPressed: () {},
      )
    ];

    return DecoratedSliver(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      sliver: SliverAppBar(
        pinned: false,
        floating: false,
        elevation: 10,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(AppSpace.radius))),
        leading: AnimatedHide(
          show: !context.isTablet(),
          child: const Padding(
            padding: EdgeInsets.all(4.0),
            child: AppLogo(size: 100),
          ),
        ),
        title: const Text("Warsha"),
        actions: [
          IconButton(
            icon: const Icon(Icons.warning),
            onPressed: () {
              //
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              //
            },
          ),
          PopupMenuButton<VoidCallback>(
              icon: const Icon(Icons.more_vert),
              offset: const Offset(0, 40),
              itemBuilder: (_) => optionMenu
                  .map((e) => PopupMenuItem(
                        value: e.onPressed,
                        child: ListTile(
                          leading: Icon(e.icon),
                          title: Text(e.name),
                        ),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
