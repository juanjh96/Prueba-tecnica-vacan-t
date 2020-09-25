import 'package:flutter/material.dart';
import 'package:prueba_tecnica_juan/presentation/home/home_widget/circle_avatar.dart';
import 'package:prueba_tecnica_juan/presentation/show_user/show_user_screen.dart';
import 'package:prueba_tecnica_juan/presentation/theme.dart';
import 'package:prueba_tecnica_juan/domain/model/user_model.dart';

class CardUser extends StatelessWidget {
  const CardUser({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;
  static RandomHexColor randon = RandomHexColor();

  @override
  Widget build(BuildContext context) {
    final gradient = randon.colorRandom();
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ShowUserScreen(user: user, gradient: gradient),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 9.0,
              spreadRadius: 3.0,
              color: gradient[1],
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: gradient,
          ),
        ),
        child: Stack(
          overflow: Overflow.clip,
          children: [
            Positioned(
              right: -100,
              bottom: -50,
              child: Center(
                child: ClipOval(
                  child: Container(
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.centerLeft,
                        stops: [0.7, 1.0],
                        colors: gradient,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatarCommon(user: user, gradient: gradient),
                  ),
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Text(
                              user.name,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              user.email,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              user.phone,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
