import 'package:flutter/material.dart';
import 'package:martinsmiguel/views/home/home_content_desktop.dart';
import 'package:martinsmiguel/views/home/home_content_mobile.dart';
import 'package:martinsmiguel/widgets/centered_view/centered_view.dart';
import 'package:martinsmiguel/widgets/navigation_bar/navigation_bar.dart';
import 'package:martinsmiguel/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile 
        ? NavigationDrawer()
        : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}