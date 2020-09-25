import 'package:flutter/material.dart';
import 'package:prueba_tecnica_juan/domain/model/user_model.dart';
import 'package:prueba_tecnica_juan/presentation/home/home_widget/circle_avatar.dart';
import 'package:prueba_tecnica_juan/presentation/theme.dart';

class ShowUserScreen extends StatelessWidget {
  const ShowUserScreen({Key key, @required this.user, @required this.gradient})
      : super(key: key);

  final User user;
  final gradient;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.all(30),
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
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppColors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CircleAvatarCommon(
                  user: user,
                  gradient: gradient,
                  radius: 50,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .apply(color: Colors.white),
                    ),
                    Text(
                      user.name,
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'username: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .apply(color: Colors.white),
                      ),
                      Text(
                        user.username,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'email: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .apply(color: Colors.white),
                      ),
                      Text(
                        user.email,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'address street: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .apply(color: Colors.white),
                      ),
                      Text(
                        user.address.street,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'suite: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .apply(color: Colors.white),
                      ),
                      Text(
                        user.address.suite,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'city: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .apply(color: Colors.white),
                      ),
                      Text(
                        user.address.city,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'zipcode: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .apply(color: Colors.white),
                      ),
                      Text(
                        user.address.zipcode,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'phone: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .apply(color: Colors.white),
                      ),
                      Text(
                        user.phone,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'website: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .apply(color: Colors.white),
                      ),
                      Text(
                        user.website,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'company name: ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .apply(color: Colors.white),
                      ),
                      Text(
                        user.company.name,
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: FittedBox(
                          child: Text(
                            'company catchPhrase: ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .apply(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: FittedBox(
                          child: Text(
                            user.company.catchPhrase,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: FittedBox(
                          child: Text(
                            'company bs: ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .apply(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: FittedBox(
                          child: Text(
                            user.company.bs,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
