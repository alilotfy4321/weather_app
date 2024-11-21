// ignore_for_file: unnecessary_new, prefer_collection_literals, unnecessary_this
import 'package:hive/hive.dart';
part "secondForcastModel.g.dart";
@HiveType(typeId: 0)
class RealWeatheerModel {
  @HiveField(0)
  Location? location;
  @HiveField(1)
  Current? current;
  @HiveField(2)
  Forecast? forecast;

  RealWeatheerModel({this.location, this.current, this.forecast});

  RealWeatheerModel.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    current =
        json['current'] != null ? new Current.fromJson(json['current']) : null;
    forecast = json['forecast'] != null
        ? new Forecast.fromJson(json['forecast'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    if (this.current != null) {
      data['current'] = this.current!.toJson();
    }
    if (this.forecast != null) {
      data['forecast'] = this.forecast!.toJson();
    }
    return data;
  }
}
@HiveType(typeId: 1)
class Location {
    @HiveField(0)
  String? name;
    @HiveField(1)
  String? region;
    @HiveField(2)
  String? country;
    @HiveField(3)
  num? lat;
    @HiveField(4)
  num? lon;
    @HiveField(5)
  String? tzId;
    @HiveField(6)
  num? localtimeEpoch;
    @HiveField(7)
  String? localtime;

  Location(
      {this.name,
      this.region,
      this.country,
      this.lat,
      this.lon,
      this.tzId,
      this.localtimeEpoch,
      this.localtime});

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    region = json['region'];
    country = json['country'];
    lat = json['lat'];
    lon = json['lon'];
    tzId = json['tz_id'];
    localtimeEpoch = json['localtime_epoch'];
    localtime = json['localtime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['region'] = this.region;
    data['country'] = this.country;
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['tz_id'] = this.tzId;
    data['localtime_epoch'] = this.localtimeEpoch;
    data['localtime'] = this.localtime;
    return data;
  }
}
@HiveType(typeId: 2)
class Current {
  @HiveField(0)
  num? lastUpdatedEpoch;
  @HiveField(1)
  String? lastUpdated;
  @HiveField(2)
  num? tempC;
  @HiveField(3)
  num? tempF;
  @HiveField(4)
  num? isDay;
  @HiveField(5)
  Condition? condition;
  @HiveField(6)
  num? windMph;
  @HiveField(7)
  num? windKph;
  @HiveField(8)
  num? windDegree;
  @HiveField(9)
  String? windDir;
  @HiveField(10)
  num? pressureMb;
  @HiveField(11)
  num? pressureIn;
  @HiveField(12)
  num? precipMm;
  @HiveField(13)
  num? precipIn;
  @HiveField(14)
  num? humidity;
  @HiveField(15)
  num? cloud;
  @HiveField(16)
  num? feelslikeC;
  @HiveField(17)
  num? feelslikeF;
  @HiveField(18)
  num? windchillC;
  @HiveField(19)
  num? windchillF;
  @HiveField(20)
  num? heatindexC;
  @HiveField(21)
  num? heatindexF;
  @HiveField(22)
  num? dewponumC;
  @HiveField(23)
  num? dewponumF;
  @HiveField(24)
  num? visKm;
  @HiveField(25)
  num? visMiles;
  @HiveField(26)
  num? uv;
  @HiveField(27)
  num? gustMph;
  @HiveField(28)
  num? gustKph;
  @HiveField(29)
  AirQuality? airQuality;

  Current(
      {this.lastUpdatedEpoch,
      this.lastUpdated,
      this.tempC,
      this.tempF,
      this.isDay,
      this.condition,
      this.windMph,
      this.windKph,
      this.windDegree,
      this.windDir,
      this.pressureMb,
      this.pressureIn,
      this.precipMm,
      this.precipIn,
      this.humidity,
      this.cloud,
      this.feelslikeC,
      this.feelslikeF,
      this.windchillC,
      this.windchillF,
      this.heatindexC,
      this.heatindexF,
      this.dewponumC,
      this.dewponumF,
      this.visKm,
      this.visMiles,
      this.uv,
      this.gustMph,
      this.gustKph,
      this.airQuality});

  Current.fromJson(Map<String, dynamic> json) {
    lastUpdatedEpoch = json['last_updated_epoch'];
    lastUpdated = json['last_updated'];
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null
        ? new Condition.fromJson(json['condition'])
        : null;
    windMph = json['wind_mph'];
    windKph = json['wind_kph'];
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    pressureMb = json['pressure_mb'];
    pressureIn = json['pressure_in'];
    precipMm = json['precip_mm'];
    precipIn = json['precip_in'];
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    feelslikeF = json['feelslike_f'];
    windchillC = json['windchill_c'];
    windchillF = json['windchill_f'];
    heatindexC = json['heatindex_c'];
    heatindexF = json['heatindex_f'];
    dewponumC = json['dewponum_c'];
    dewponumF = json['dewponum_f'];
    visKm = json['vis_km'];
    visMiles = json['vis_miles'];
    uv = json['uv'];
    gustMph = json['gust_mph'];
    gustKph = json['gust_kph'];
    airQuality = json['air_quality'] != null
        ? new AirQuality.fromJson(json['air_quality'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['last_updated_epoch'] = this.lastUpdatedEpoch;
    data['last_updated'] = this.lastUpdated;
    data['temp_c'] = this.tempC;
    data['temp_f'] = this.tempF;
    data['is_day'] = this.isDay;
    if (this.condition != null) {
      data['condition'] = this.condition!.toJson();
    }
    data['wind_mph'] = this.windMph;
    data['wind_kph'] = this.windKph;
    data['wind_degree'] = this.windDegree;
    data['wind_dir'] = this.windDir;
    data['pressure_mb'] = this.pressureMb;
    data['pressure_in'] = this.pressureIn;
    data['precip_mm'] = this.precipMm;
    data['precip_in'] = this.precipIn;
    data['humidity'] = this.humidity;
    data['cloud'] = this.cloud;
    data['feelslike_c'] = this.feelslikeC;
    data['feelslike_f'] = this.feelslikeF;
    data['windchill_c'] = this.windchillC;
    data['windchill_f'] = this.windchillF;
    data['heatindex_c'] = this.heatindexC;
    data['heatindex_f'] = this.heatindexF;
    data['dewponum_c'] = this.dewponumC;
    data['dewponum_f'] = this.dewponumF;
    data['vis_km'] = this.visKm;
    data['vis_miles'] = this.visMiles;
    data['uv'] = this.uv;
    data['gust_mph'] = this.gustMph;
    data['gust_kph'] = this.gustKph;
    if (this.airQuality != null) {
      data['air_quality'] = this.airQuality!.toJson();
    }
    return data;
  }
}
@HiveType(typeId: 3)
class Condition {
  @HiveField(0)
  String? text;
  @HiveField(1)
  String? icon;
  @HiveField(2)
  num? code;

  Condition({this.text, this.icon, this.code});

  Condition.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['icon'] = this.icon;
    data['code'] = this.code;
    return data;
  }
}
@HiveType(typeId: 4)
class AirQuality {
  @HiveField(0)
  num? co;
  @HiveField(1)
  num? no2;
  @HiveField(2)
  num? o3;
  @HiveField(3)
  num? so2;
  @HiveField(4)
  num? pm25;
  @HiveField(5)
  num? pm10;
  @HiveField(6)
  num? usEpaIndex;
  @HiveField(7)
  num? gbDefraIndex;

  AirQuality( 
      {this.co,
      this.no2,
      this.o3,
      this.so2,
      this.pm25,
      this.pm10,
      this.usEpaIndex,
      this.gbDefraIndex});

  AirQuality.fromJson(Map<String, dynamic> json) {
    co = json['co'];
    no2 = json['no2'];
    o3 = json['o3'];
    so2 = json['so2'];
    pm25 = json['pm2_5'];
    pm10 = json['pm10'];
    usEpaIndex = json['us-epa-index'];
    gbDefraIndex = json['gb-defra-index'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['co'] = this.co;
    data['no2'] = this.no2;
    data['o3'] = this.o3;
    data['so2'] = this.so2;
    data['pm2_5'] = this.pm25;
    data['pm10'] = this.pm10;
    data['us-epa-index'] = this.usEpaIndex;
    data['gb-defra-index'] = this.gbDefraIndex;
    return data;
  }
}
@HiveType(typeId: 5)
class Forecast {
  @HiveField(0)
  List<Forecastday>? forecastday;

  Forecast({this.forecastday});

  Forecast.fromJson(Map<String, dynamic> json) {
    if (json['forecastday'] != null) {
      forecastday = <Forecastday>[];
      json['forecastday'].forEach((v) {
        forecastday!.add(new Forecastday.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.forecastday != null) {
      data['forecastday'] = this.forecastday!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
@HiveType(typeId: 6)
class Forecastday {
  @HiveField(0)
  String? date;
  @HiveField(1)
  num? dateEpoch;
  @HiveField(2)
  Day? day;
  @HiveField(3)
  Astro? astro;
  @HiveField(4)
  List<Hour>? hour;

  Forecastday({this.date, this.dateEpoch, this.day, this.astro, this.hour});

  Forecastday.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    dateEpoch = json['date_epoch'];
    day = json['day'] != null ? new Day.fromJson(json['day']) : null;
    astro = json['astro'] != null ? new Astro.fromJson(json['astro']) : null;
    if (json['hour'] != null) {
      hour = <Hour>[];
      json['hour'].forEach((v) {
        hour!.add(new Hour.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['date_epoch'] = this.dateEpoch;
    if (this.day != null) {
      data['day'] = this.day!.toJson();
    }
    if (this.astro != null) {
      data['astro'] = this.astro!.toJson();
    }
    if (this.hour != null) {
      data['hour'] = this.hour!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
@HiveType(typeId: 7)
class Day {
    @HiveField(0)
  num? maxtempC;
    @HiveField(1)
  num? maxtempF;
    @HiveField(2)
  num? mnumempC;
    @HiveField(3)
  num? mnumempF;
    @HiveField(4)
  num? avgtempC;
    @HiveField(5)
  num? avgtempF;
    @HiveField(6)
  num? maxwindMph;
    @HiveField(7)
  num? maxwindKph;
    @HiveField(8)
  num? totalprecipMm;
    @HiveField(9)
  num? totalprecipIn;
    @HiveField(10)
  num? totalsnowCm;
    @HiveField(11)
  num? avgvisKm;
    @HiveField(12)
  num? avgvisMiles;
    @HiveField(13)
  num? avghumidity;
    @HiveField(14)
  num? dailyWillItRain;
    @HiveField(15)
  num? dailyChanceOfRain;
    @HiveField(16)
  num? dailyWillItSnow;
    @HiveField(17)
  num? dailyChanceOfSnow;
    @HiveField(18)
  Condition? condition;
    @HiveField(19)
  num? uv;
  //AirQuality? airQuality;
    @HiveField(20)
  var airQuality;

  Day(
      {this.maxtempC,
      this.maxtempF,
      this.mnumempC,
      this.mnumempF,
      this.avgtempC,
      this.avgtempF,
      this.maxwindMph,
      this.maxwindKph,
      this.totalprecipMm,
      this.totalprecipIn,
      this.totalsnowCm,
      this.avgvisKm,
      this.avgvisMiles,
      this.avghumidity,
      this.dailyWillItRain,
      this.dailyChanceOfRain,
      this.dailyWillItSnow,
      this.dailyChanceOfSnow,
      this.condition,
      this.uv,
      this.airQuality});

  Day.fromJson(Map<String, dynamic> json) {
    maxtempC = json['maxtemp_c'];
    maxtempF = json['maxtemp_f'];
    mnumempC = json['mnumemp_c'];
    mnumempF = json['mnumemp_f'];
    avgtempC = json['avgtemp_c'];
    avgtempF = json['avgtemp_f'];
    maxwindMph = json['maxwind_mph'];
    maxwindKph = json['maxwind_kph'];
    totalprecipMm = json['totalprecip_mm'];
    totalprecipIn = json['totalprecip_in'];
    totalsnowCm = json['totalsnow_cm'];
    avgvisKm = json['avgvis_km'];
    avgvisMiles = json['avgvis_miles'];
    avghumidity = json['avghumidity'];
    dailyWillItRain = json['daily_will_it_rain'];
    dailyChanceOfRain = json['daily_chance_of_rain'];
    dailyWillItSnow = json['daily_will_it_snow'];
    dailyChanceOfSnow = json['daily_chance_of_snow'];
    condition = json['condition'] != null
        ? new Condition.fromJson(json['condition'])
        : null;
    uv = json['uv'];
    airQuality = json['air_quality'] != null
        ? new AirQuality.fromJson(json['air_quality'])
        : "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['maxtemp_c'] = this.maxtempC;
    data['maxtemp_f'] = this.maxtempF;
    data['mnumemp_c'] = this.mnumempC;
    data['mnumemp_f'] = this.mnumempF;
    data['avgtemp_c'] = this.avgtempC;
    data['avgtemp_f'] = this.avgtempF;
    data['maxwind_mph'] = this.maxwindMph;
    data['maxwind_kph'] = this.maxwindKph;
    data['totalprecip_mm'] = this.totalprecipMm;
    data['totalprecip_in'] = this.totalprecipIn;
    data['totalsnow_cm'] = this.totalsnowCm;
    data['avgvis_km'] = this.avgvisKm;
    data['avgvis_miles'] = this.avgvisMiles;
    data['avghumidity'] = this.avghumidity;
    data['daily_will_it_rain'] = this.dailyWillItRain;
    data['daily_chance_of_rain'] = this.dailyChanceOfRain;
    data['daily_will_it_snow'] = this.dailyWillItSnow;
    data['daily_chance_of_snow'] = this.dailyChanceOfSnow;
    if (this.condition != null) {
      data['condition'] = this.condition!.toJson();
    }
    data['uv'] = this.uv;
    if (this.airQuality != null) {
      data['air_quality'] = this.airQuality!.toJson();
    }
    return data;
  }
}
@HiveType(typeId: 8)
class Astro {
  @HiveField(0)
  String? sunrise;
  @HiveField(1)
  String? sunset;
  @HiveField(2)
  String? moonrise;
  @HiveField(3)
  String? moonset;
  @HiveField(4)
  String? moonPhase;
  @HiveField(5)
  num? moonIllumination;
  @HiveField(6)
  num? isMoonUp;
  @HiveField(7)
  num? isSunUp;

  Astro(
      {this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      this.moonPhase,
      this.moonIllumination,
      this.isMoonUp,
      this.isSunUp});

  Astro.fromJson(Map<String, dynamic> json) {
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    moonrise = json['moonrise'];
    moonset = json['moonset'];
    moonPhase = json['moon_phase'];
    moonIllumination = json['moon_illumination'];
    isMoonUp = json['is_moon_up'];
    isSunUp = json['is_sun_up'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    data['moonrise'] = this.moonrise;
    data['moonset'] = this.moonset;
    data['moon_phase'] = this.moonPhase;
    data['moon_illumination'] = this.moonIllumination;
    data['is_moon_up'] = this.isMoonUp;
    data['is_sun_up'] = this.isSunUp;
    return data;
  }
}
@HiveType(typeId: 9)
class Hour {
  @HiveField(0)
  num? timeEpoch;
  @HiveField(1)
  String? time;
  @HiveField(2)
  num? tempC;
  @HiveField(3)
  num? tempF;
  @HiveField(4)
  num? isDay;
  @HiveField(5)
  Condition? condition;
  @HiveField(6)
  num? windMph;
  @HiveField(7)
  num? windKph;
  @HiveField(8)
  num? windDegree;
  @HiveField(9)
  String? windDir;
  @HiveField(10)
  num? pressureMb;
  @HiveField(11)
  num? pressureIn;
  @HiveField(12)
  num? precipMm;
  @HiveField(13)
  num? precipIn;
  @HiveField(14)
  num? snowCm;
  @HiveField(15)
  num? humidity;
  @HiveField(16)
  num? cloud;
  @HiveField(17)
  num? feelslikeC;
  @HiveField(18)
  num? feelslikeF;
  @HiveField(19)
  num? windchillC;
  @HiveField(20)
  num? windchillF;
  @HiveField(21)
  num? heatindexC;
  @HiveField(22)
  num? heatindexF;
  @HiveField(23)
  num? dewponumC;
  @HiveField(24)
  num? dewponumF;
  @HiveField(25)
  num? willItRain;
  @HiveField(26)
  num? chanceOfRain;
  @HiveField(27)
  num? willItSnow;
  @HiveField(28)
  num? chanceOfSnow;
  @HiveField(29)
  num? visKm;
  @HiveField(30)
  num? visMiles;
  @HiveField(31)
  num? gustMph;
  @HiveField(32)
  num? gustKph;
  @HiveField(33)
  num? uv;
  @HiveField(34)
  AirQuality? airQuality;

  Hour(
      {this.timeEpoch,
      this.time,
      this.tempC,
      this.tempF,
      this.isDay,
      this.condition,
      this.windMph,
      this.windKph,
      this.windDegree,
      this.windDir,
      this.pressureMb,
      this.pressureIn,
      this.precipMm,
      this.precipIn,
      this.snowCm,
      this.humidity,
      this.cloud,
      this.feelslikeC,
      this.feelslikeF,
      this.windchillC,
      this.windchillF,
      this.heatindexC,
      this.heatindexF,
      this.dewponumC,
      this.dewponumF,
      this.willItRain,
      this.chanceOfRain,
      this.willItSnow,
      this.chanceOfSnow,
      this.visKm,
      this.visMiles,
      this.gustMph,
      this.gustKph,
      this.uv,
      this.airQuality});

  Hour.fromJson(Map<String, dynamic> json) {
    timeEpoch = json['time_epoch'];
    time = json['time'];
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null
        ? new Condition.fromJson(json['condition'])
        : null;
    windMph = json['wind_mph'];
    windKph = json['wind_kph'];
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    pressureMb = json['pressure_mb'];
    pressureIn = json['pressure_in'];
    precipMm = json['precip_mm'];
    precipIn = json['precip_in'];
    snowCm = json['snow_cm'];
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    feelslikeF = json['feelslike_f'];
    windchillC = json['windchill_c'];
    windchillF = json['windchill_f'];
    heatindexC = json['heatindex_c'];
    heatindexF = json['heatindex_f'];
    dewponumC = json['dewponum_c'];
    dewponumF = json['dewponum_f'];
    willItRain = json['will_it_rain'];
    chanceOfRain = json['chance_of_rain'];
    willItSnow = json['will_it_snow'];
    chanceOfSnow = json['chance_of_snow'];
    visKm = json['vis_km'];
    visMiles = json['vis_miles'];
    gustMph = json['gust_mph'];
    gustKph = json['gust_kph'];
    uv = json['uv'];
    airQuality = json['air_quality'] != null
        ? new AirQuality.fromJson(json['air_quality'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time_epoch'] = this.timeEpoch;
    data['time'] = this.time;
    data['temp_c'] = this.tempC;
    data['temp_f'] = this.tempF;
    data['is_day'] = this.isDay;
    if (this.condition != null) {
      data['condition'] = this.condition!.toJson();
    }
    data['wind_mph'] = this.windMph;
    data['wind_kph'] = this.windKph;
    data['wind_degree'] = this.windDegree;
    data['wind_dir'] = this.windDir;
    data['pressure_mb'] = this.pressureMb;
    data['pressure_in'] = this.pressureIn;
    data['precip_mm'] = this.precipMm;
    data['precip_in'] = this.precipIn;
    data['snow_cm'] = this.snowCm;
    data['humidity'] = this.humidity;
    data['cloud'] = this.cloud;
    data['feelslike_c'] = this.feelslikeC;
    data['feelslike_f'] = this.feelslikeF;
    data['windchill_c'] = this.windchillC;
    data['windchill_f'] = this.windchillF;
    data['heatindex_c'] = this.heatindexC;
    data['heatindex_f'] = this.heatindexF;
    data['dewponum_c'] = this.dewponumC;
    data['dewponum_f'] = this.dewponumF;
    data['will_it_rain'] = this.willItRain;
    data['chance_of_rain'] = this.chanceOfRain;
    data['will_it_snow'] = this.willItSnow;
    data['chance_of_snow'] = this.chanceOfSnow;
    data['vis_km'] = this.visKm;
    data['vis_miles'] = this.visMiles;
    data['gust_mph'] = this.gustMph;
    data['gust_kph'] = this.gustKph;
    data['uv'] = this.uv;
    if (this.airQuality != null) {
      data['air_quality'] = this.airQuality!.toJson();
    }
    return data;
  }
}
