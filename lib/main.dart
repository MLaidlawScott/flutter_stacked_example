import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked_arch/app/locator.dart';
import 'package:stacked_arch/app/router.gr.dart';
import 'package:stacked_arch/ui/views/future_example/future_example_view.dart';
import 'package:stacked_arch/ui/views/partial_builds/partial_builds_view.dart';
import 'package:stacked_arch/ui/views/reactive_example/reactive_example_view.dart';
import 'package:stacked_arch/ui/views/stream_example/stream_example_view.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: ExtendedNavigator.builder<Router>(
      //   router: Router(),
      //   // initialRoute: Routes.startupView,
      //   navigatorKey: locator<NavigationService>().navigatorKey,
      // ),
      //
      // home: PartialBuildsView(),
      //
      // home: ReactiveExampleView(),
      //
      // home: FutureExampleView(),
      //
      home: StreamExampleView(),
      title: "Stacked Demo",
    );
  }
}
