import 'package:flutter/material.dart';
import 'package:prueba_tecnica_juan/presentation/theme.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 13.0,
              spreadRadius: 5.0,
              color: AppColors.purpleLight.withOpacity(0.8),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: gradients,
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: AppColors.white38,
                      ),
                      Icon(
                        Icons.menu,
                        color: AppColors.white38,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: FittedBox(
                            child: Text(
                              'Designer',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .apply(color: AppColors.white),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 3,
                              width: 87,
                              color: AppColors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: FittedBox(
                            child: Text(
                              'Category',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: FittedBox(
                            child: Text(
                              'Attention',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
