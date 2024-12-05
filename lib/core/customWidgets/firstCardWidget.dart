// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_string_interpolations, unused_local_variable, sized_box_for_whitespace, must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:weather_app/model/firstCardLastRow.dart';
import 'package:weather_app/model/secondForcastModel.dart';

import '../../controll/weather_cubit.dart';

///////////////////////////////////////
class CustomFirstScreenCard extends StatelessWidget {
  final BuildContext context;
  final RealWeatheerModel model;
  final WeatherCubit cubit;
  final double bottomLeft;
  final double bottomRight;
  final double topLeft;
  final double topRight;
  final double height;

  CustomFirstScreenCard(
    this.context,
    this.model, 
      this.cubit,
    {
    this.bottomLeft = 40,
    this.bottomRight = 40,
    this.topLeft = 0,
    this.topRight = 0,
    this.height = 330,
  });

  @override
  Widget build(BuildContext context) {
    List<FirstCardLastRowModel> firstCardList = [
      FirstCardLastRowModel(
        Icons.wind_power_outlined,
        '${model.current!.windDegree!}',
        'Wind',
      ),
      FirstCardLastRowModel(
        Icons.heat_pump_rounded,
        '${model.current!.humidity!}',
        'Humidity',
      ),
      FirstCardLastRowModel(
        Icons.visibility,
        '${model.current!.visKm!}',
        'Visibility',
      ),
    ];
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 134, 157, 172),
            Color.fromARGB(255, 96, 109, 119),
            Color.fromARGB(255, 76, 81, 87),
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(bottomLeft),
          bottomRight: Radius.circular(bottomRight),
          topRight: Radius.circular(topRight),
          topLeft: Radius.circular(topLeft),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${model.location!.name!}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${model.current!.tempC!}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                Text(
                  ' ْ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '${model.current!.condition!.text!}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            //icon_url = data["forecast"]["forecastday"][0]["day"]["condition"]["icon"]
          
           CachedNetworkImage(
            imageUrl: "https:${model.current!.condition!.icon!}",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
                    
          ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Icon(
                        firstCardList[index].icon!,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${firstCardList[index].speed!}km/h',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        firstCardList[index].name!,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
