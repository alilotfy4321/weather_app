// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/controll/weather_cubit.dart';
import 'package:weather_app/model/secondForcastModel.dart';

class ReportSeconPart extends StatelessWidget {
  ReportSeconPart(this.color, this.model, this.cubit, {super.key});
  var color;
  RealWeatheerModel model;
  WeatherCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 20,
        bottom: 10,
        left: 20,
      ),
      width: double.maxFinite,
      height: 150,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Text(
                '${model.current!.tempC!} ْ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: CachedNetworkImage(
                imageUrl: 'http:${model.current!.condition!.icon!}',
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                '${model.current!.condition!.text!}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
