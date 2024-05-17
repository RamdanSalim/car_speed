import 'package:car_speed/resources/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resources/screen_configuration.dart';
import '../bloc/car_bloc.dart';

class CarSelectTile extends StatelessWidget {
  final Color color;
  final bool value;

  const CarSelectTile({super.key, required this.color, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          CupertinoIcons.car_detailed,
          color: color,
          size: SizeConfig().getTextSize(50),
        ),
        SizedBox(
          height: SizeConfig().getHeight(20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '1',
              style: TextStyle(
                  fontSize: SizeConfig().getTextSize(20),
                  fontWeight: FontWeight.w700,
                  color: ClrConst.car1Color),
            ),
            SizedBox(
              width: SizeConfig().getWidth(10),
            ),
            CupertinoSwitch(
                activeColor: Colors.grey.withOpacity(0.3),
                thumbColor: color,
                value: value,
                onChanged: (val) {
                  context.read<CarBloc>().add(CarChangeET(isChanged: val));
                }),
            SizedBox(
              width: SizeConfig().getWidth(10),
            ),
            Text(
              '2',
              style: TextStyle(
                  fontSize: SizeConfig().getTextSize(20),
                  fontWeight: FontWeight.w700,
                  color: ClrConst.car2Color),
            ),
          ],
        ),
      ],
    );
  }
}
