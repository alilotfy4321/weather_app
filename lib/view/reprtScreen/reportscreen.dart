// ignore_for_file: prefer_const_constructors, unnecessary_new, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/view/reprtScreen/reportFirstPart.dart';
import 'package:weather_app/view/reprtScreen/reportSecondPart.dart';
import 'package:weather_app/view/reprtScreen/reportSunRiseSet.dart';

import '../../controll/weather_cubit.dart';
import '../../model/reportTempModel.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        var cubit = WeatherCubit.get(context);
        var model = cubit.weatherData;
        //-----------------------------------------max mini avg degrees--
        List<ReportTempModel> tempMxAvgMinDegrees = [
          ReportTempModel(
            'MaxtempC\n\t\tالعظمي',
            '${model!.forecast!.forecastday![0].day!.maxtempC!}',
          ),
          ReportTempModel(
            'AvgTempC\n\t\tالمتوسطه',
            '${model.forecast!.forecastday![0].day!.avgtempC!}',
          ),
          ReportTempModel(
            'MintempC\n\t\tالصغري',
            '${((model.forecast!.forecastday![0].day!.avgtempC!-3).roundToDouble())}',//
          ),
        ];
        //-----------------------------------------sun rise sun set--
        List<ReportTempModel> sunRiseSet = [
          ReportTempModel(
            'Sun Rise\n\t\tشروق الشمس ',
            '${model.forecast!.forecastday![0].astro!.sunrise}',

          ),
          ReportTempModel(
           'Sun Set\n\t\t غروب الشمس',
          '${model.forecast!.forecastday![0].astro!.sunset}',
          ),
        ];

        //-----------------------------------------sun rise sun set--
        List<ReportTempModel> moonRiseSet = [
          ReportTempModel(
            'Moon Rise\n\t\tشروق القمر',
            '${model.forecast!.forecastday![0].astro!.moonset}'
          ),
            ReportTempModel(
            'Moon Rise\n\t\tغروب القمر',
            '${model.forecast!.forecastday![0].astro!.moonrise}'
          ),
        ];
        //--------------------------------------------------------------------------
        var WidgetsScreencolor = const Color.fromARGB(255, 25, 32, 37);
        return Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('${model.location!.name!}'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //-------------1(tempmax,temp avg,temp mini)----
                ReportFirstPart(tempMxAvgMinDegrees,WidgetsScreencolor),
                SizedBox(
                  height: 20,
                ),
                //---------------2 ( )---------
                ReportSeconPart(WidgetsScreencolor,model,cubit),
                SizedBox(
                  height: 20,
                ),
                //---------------------------3 sun rise  and sun set-----
                ReportSunMoonRiseSet(sunRiseSet,WidgetsScreencolor),
                //------------moon rise and set----------------
                SizedBox(
                  height: 20,
                ),
                ReportSunMoonRiseSet(moonRiseSet,WidgetsScreencolor),
              ],
            ),
          ),
        );
      },
    );
  }
}
