import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica_juan/presentation/home/home_controller.dart';
import 'card_user.dart';

class BodyUserList extends StatelessWidget {
  const BodyUserList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Consumer<HomeController>(
        builder: (context, value, _) {
          switch (value.loginState) {
            case LoginState.complete:
              return ListView.builder(
                padding: const EdgeInsets.only(top: 13),
                itemCount: value.user.length,
                itemBuilder: (context, index) => CardUser(
                  user: value.user[index],
                ),
              );
              break;
            case LoginState.loading:
              return Center(child: CircularProgressIndicator());
              break;
            default:
              return Center(
                child: Text('Error'),
              );
              break;
          }
        },
      ),
    );
  }
}
