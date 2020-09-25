import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_controller.dart';
import 'home_widget/body_list_user.dart';
import 'home_widget/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen._();

  static Widget init() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeController>(
          create: (_) => HomeController()..getUser(),
          child: HomeScreen._(),
        ),
      ],
      child: HomeScreen._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppbar(),
          BodyUserList(),
        ],
      ),
    );
  }
}
