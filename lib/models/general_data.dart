
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homeone/util/constants.dart';

import 'general_model.dart';

List<GeneralModel> generalData = [
  GeneralModel(
      icon: Icons.thermostat,
      element: "Temp",
      digits: 20,
      siUnit: "°C",
  ),
  GeneralModel(
      icon: FontAwesomeIcons.wind,
      element: "Wind",
      digits: 1,
      siUnit: "km/h",
  ),
  GeneralModel(
      icon: Icons.water_drop_outlined,
      element: "Humidity",
      digits: 60,
      siUnit: "%",
  ),
  GeneralModel(
      icon: FontAwesomeIcons.boltLightning,
      element: "Energy",
      digits: 15,
      siUnit: "kWh",
  ),
  GeneralModel(
      icon: Icons.sunny,
      element: "Light",
      digits: 20,
      siUnit: "lux",
  ),


];