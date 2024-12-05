// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_constructors, unused_local_variable, prefer_const_constructors_in_immutables, avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';

import '../../controll/weather_cubit.dart';
import '../../core/customWidgets/customSearchFeild.dart';

class ShowMap extends StatelessWidget {
  ShowMap(this.cubit,
      {this.latit = 30.528260,
      this.longit = 30.919490,
      this.zoom = 14.4746,
      this.mapType = MapType.terrain,
      super.key});
  final double latit;
  final double longit;
  final double zoom;
  final MapType mapType;
  final WeatherCubit cubit;
  @override
  Widget build(BuildContext context) {
    CustomSearchFeild? cityMapLocation;
    Completer<GoogleMapController>? _controllerMap =
        Completer<GoogleMapController>();

    CameraPosition initPosition = CameraPosition(
      target: LatLng(latit, longit),
      zoom: zoom,
    );
    List<Marker> markrs = [
      Marker(
        markerId: MarkerId('1'),
        position: LatLng(cubit.currentLatitude, cubit.currentLngitude),
      ),
    ];

    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        var cubit = WeatherCubit.get(context);
        return GoogleMap(
          onTap: (LatLng latLng) async {
            List<Placemark> placemarks = await placemarkFromCoordinates(
                latLng.latitude, latLng.longitude);
            cubit.getCurrentLocation(latLng.latitude, latLng.longitude,
                placemarks[0].locality!.toString());
            cubit.updateSearchCityController(placemarks[0].locality!);
          },
          markers: markrs.toSet(),
          mapType: mapType,
          initialCameraPosition: initPosition,
          onMapCreated: (GoogleMapController controller) {
            _controllerMap.complete(controller);
          },
        );
      },
    );
  }
}
