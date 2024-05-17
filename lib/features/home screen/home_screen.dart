import 'package:car_speed/features/home%20screen/bloc/car_bloc.dart';
import 'package:car_speed/resources/color_constants.dart';
import 'package:car_speed/resources/screen_configuration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/car_select_tile.dart';
import 'components/speed_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: ScreenUtil().screenWidth,
          child: BlocBuilder<CarBloc, CarState>(
            buildWhen: (p, c) => c != p && c is CarChangedST,
            builder: (context, state) {
              bool value = false;
              Color color = ClrConst.car1Color;
              int speed = 60;

              if (state is CarChangedST) {
                value = state.value;
                color = state.color;
                speed = state.speed;
              }
              return Padding(
                padding: EdgeInsets.only(top: SizeConfig().getHeight(50)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CarSelectTile(
                      color: color,
                      value: value,
                    ),
                    SpeedTile(
                      speed: speed,
                    ),
                    Container(
                      height: SizeConfig().getHeight(90),
                      color: color,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
