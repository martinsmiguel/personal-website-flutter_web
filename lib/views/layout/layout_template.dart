import 'package:flutter/material.dart';
import 'package:martinsmiguel/locator.dart';
import 'package:martinsmiguel/routing/route_names.dart';
import 'package:martinsmiguel/routing/router.dart';
import 'package:martinsmiguel/services/navigation_service.dart';
import 'package:martinsmiguel/widgets/centered_view/centered_view.dart';
import 'package:martinsmiguel/widgets/navigation_bar/navigation_bar.dart';
import 'package:martinsmiguel/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

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
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}