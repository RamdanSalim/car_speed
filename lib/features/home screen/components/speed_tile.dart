import 'package:car_speed/resources/color_constants.dart';
import 'package:car_speed/resources/screen_configuration.dart';
import 'package:car_speed/resources/string_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SpeedTile extends StatelessWidget {
  final int speed;

  const SpeedTile({super.key, required this.speed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig().getHeight(300),
      child: Stack(
        alignment: Alignment.center,
        children: [
          speed > 100
              ? Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: const Offset(0, 0),
                        blurRadius: 10,
                        spreadRadius: 10)
                  ], color: ClrConst.errorColor, shape: BoxShape.circle),
                  height: SizeConfig().getHeight(300),
                )
              : const SizedBox(),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: speed < 100
                          ? Colors.grey.withOpacity(0.2)
                          : Colors.transparent,
                      offset: const Offset(0, 0),
                      blurRadius: 10,
                      spreadRadius: 10),
                ], color: Colors.white, shape: BoxShape.circle),
                height: SizeConfig().getHeight(250),
                child: Center(
                  child: Text(
                    speed.toString(),
                    style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              bottom: SizeConfig().getHeight(50),
              child: const Text(
                StrConst.speedMetric,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ))
        ],
      ),
    );
  }
}
