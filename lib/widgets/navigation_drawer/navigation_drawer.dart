import 'package:flutter/material.dart';
import 'package:martinsmiguel/routing/route_names.dart';

import 'drawer_item.dart';
import 'navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          // BONUS: Combine  the UI for this widget with the NavBarItem and make it Responsive.
          // The UI for the current 
          DrawerItem('Episodes', Icons.videocam, EpisodesRoute),
          DrawerItem('About', Icons.help, AboutRoute),
        ],
      ),
    );
  }
}