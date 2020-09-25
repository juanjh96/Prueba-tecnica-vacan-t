import 'package:flutter/material.dart';
import 'package:prueba_tecnica_juan/domain/model/user_model.dart';
import 'package:prueba_tecnica_juan/presentation/theme.dart';

class CircleAvatarCommon extends StatelessWidget {
  const CircleAvatarCommon({
    Key key,
    @required this.user,
    @required this.gradient,
    this.radius,
  }) : super(key: key);

  final User user;
  final List<Color> gradient;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: AppColors.white38,
      child: Text(
        user.name.substring(0, 1),
        style: Theme.of(context).textTheme.bodyText1.apply(
              color: gradient[1],
            ),
      ),
    );
  }
}
