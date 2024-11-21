// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, unused_local_variable
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/controll/weather_cubit.dart';

import '../../model/secondForcastModel.dart';

class SelectedFutureDay extends StatelessWidget {
  Forecastday indexData;
  String day;
  SelectedFutureDay({
    Key? key,
    required this.day,
    required this.indexData,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        //-------------------------
        var cubit = WeatherCubit.get(context);
        TextStyle screenStyle = TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        );
        //---------------------
        return Scaffold(
          appBar: AppBar(
            title: Text(day),
          ),
          body: Center(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 100, 135, 175),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    CachedNetworkImage(
                      imageUrl: 'https:${indexData.day!.condition!.icon}',
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'The Day Is \t ${indexData.day!.condition!.text!}',
                      style: screenStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('The Averege day temp is : ', style: screenStyle),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        '${indexData.day!.avgtempC!}',
                        style: screenStyle,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('The Averege humidity  is :  ', style: screenStyle),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        '${indexData.day!.avghumidity!}',
                        style: screenStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
