// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secondForcastModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RealWeatheerModelAdapter extends TypeAdapter<RealWeatheerModel> {
  @override
  final int typeId = 0;

  @override
  RealWeatheerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RealWeatheerModel(
      location: fields[0] as Location?,
      current: fields[1] as Current?,
      forecast: fields[2] as Forecast?,
    );
  }

  @override
  void write(BinaryWriter writer, RealWeatheerModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.location)
      ..writeByte(1)
      ..write(obj.current)
      ..writeByte(2)
      ..write(obj.forecast);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RealWeatheerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LocationAdapter extends TypeAdapter<Location> {
  @override
  final int typeId = 1;

  @override
  Location read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Location(
      name: fields[0] as String?,
      region: fields[1] as String?,
      country: fields[2] as String?,
      lat: fields[3] as num?,
      lon: fields[4] as num?,
      tzId: fields[5] as String?,
      localtimeEpoch: fields[6] as num?,
      localtime: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Location obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.region)
      ..writeByte(2)
      ..write(obj.country)
      ..writeByte(3)
      ..write(obj.lat)
      ..writeByte(4)
      ..write(obj.lon)
      ..writeByte(5)
      ..write(obj.tzId)
      ..writeByte(6)
      ..write(obj.localtimeEpoch)
      ..writeByte(7)
      ..write(obj.localtime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CurrentAdapter extends TypeAdapter<Current> {
  @override
  final int typeId = 2;

  @override
  Current read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Current(
      lastUpdatedEpoch: fields[0] as num?,
      lastUpdated: fields[1] as String?,
      tempC: fields[2] as num?,
      tempF: fields[3] as num?,
      isDay: fields[4] as num?,
      condition: fields[5] as Condition?,
      windMph: fields[6] as num?,
      windKph: fields[7] as num?,
      windDegree: fields[8] as num?,
      windDir: fields[9] as String?,
      pressureMb: fields[10] as num?,
      pressureIn: fields[11] as num?,
      precipMm: fields[12] as num?,
      precipIn: fields[13] as num?,
      humidity: fields[14] as num?,
      cloud: fields[15] as num?,
      feelslikeC: fields[16] as num?,
      feelslikeF: fields[17] as num?,
      windchillC: fields[18] as num?,
      windchillF: fields[19] as num?,
      heatindexC: fields[20] as num?,
      heatindexF: fields[21] as num?,
      dewponumC: fields[22] as num?,
      dewponumF: fields[23] as num?,
      visKm: fields[24] as num?,
      visMiles: fields[25] as num?,
      uv: fields[26] as num?,
      gustMph: fields[27] as num?,
      gustKph: fields[28] as num?,
      airQuality: fields[29] as AirQuality?,
    );
  }

  @override
  void write(BinaryWriter writer, Current obj) {
    writer
      ..writeByte(30)
      ..writeByte(0)
      ..write(obj.lastUpdatedEpoch)
      ..writeByte(1)
      ..write(obj.lastUpdated)
      ..writeByte(2)
      ..write(obj.tempC)
      ..writeByte(3)
      ..write(obj.tempF)
      ..writeByte(4)
      ..write(obj.isDay)
      ..writeByte(5)
      ..write(obj.condition)
      ..writeByte(6)
      ..write(obj.windMph)
      ..writeByte(7)
      ..write(obj.windKph)
      ..writeByte(8)
      ..write(obj.windDegree)
      ..writeByte(9)
      ..write(obj.windDir)
      ..writeByte(10)
      ..write(obj.pressureMb)
      ..writeByte(11)
      ..write(obj.pressureIn)
      ..writeByte(12)
      ..write(obj.precipMm)
      ..writeByte(13)
      ..write(obj.precipIn)
      ..writeByte(14)
      ..write(obj.humidity)
      ..writeByte(15)
      ..write(obj.cloud)
      ..writeByte(16)
      ..write(obj.feelslikeC)
      ..writeByte(17)
      ..write(obj.feelslikeF)
      ..writeByte(18)
      ..write(obj.windchillC)
      ..writeByte(19)
      ..write(obj.windchillF)
      ..writeByte(20)
      ..write(obj.heatindexC)
      ..writeByte(21)
      ..write(obj.heatindexF)
      ..writeByte(22)
      ..write(obj.dewponumC)
      ..writeByte(23)
      ..write(obj.dewponumF)
      ..writeByte(24)
      ..write(obj.visKm)
      ..writeByte(25)
      ..write(obj.visMiles)
      ..writeByte(26)
      ..write(obj.uv)
      ..writeByte(27)
      ..write(obj.gustMph)
      ..writeByte(28)
      ..write(obj.gustKph)
      ..writeByte(29)
      ..write(obj.airQuality);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ConditionAdapter extends TypeAdapter<Condition> {
  @override
  final int typeId = 3;

  @override
  Condition read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Condition(
      text: fields[0] as String?,
      icon: fields[1] as String?,
      code: fields[2] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, Condition obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.icon)
      ..writeByte(2)
      ..write(obj.code);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConditionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AirQualityAdapter extends TypeAdapter<AirQuality> {
  @override
  final int typeId = 4;

  @override
  AirQuality read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AirQuality(
      co: fields[0] as num?,
      no2: fields[1] as num?,
      o3: fields[2] as num?,
      so2: fields[3] as num?,
      pm25: fields[4] as num?,
      pm10: fields[5] as num?,
      usEpaIndex: fields[6] as num?,
      gbDefraIndex: fields[7] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, AirQuality obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.co)
      ..writeByte(1)
      ..write(obj.no2)
      ..writeByte(2)
      ..write(obj.o3)
      ..writeByte(3)
      ..write(obj.so2)
      ..writeByte(4)
      ..write(obj.pm25)
      ..writeByte(5)
      ..write(obj.pm10)
      ..writeByte(6)
      ..write(obj.usEpaIndex)
      ..writeByte(7)
      ..write(obj.gbDefraIndex);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirQualityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ForecastAdapter extends TypeAdapter<Forecast> {
  @override
  final int typeId = 5;

  @override
  Forecast read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Forecast(
      forecastday: (fields[0] as List?)?.cast<Forecastday>(),
    );
  }

  @override
  void write(BinaryWriter writer, Forecast obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.forecastday);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ForecastAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ForecastdayAdapter extends TypeAdapter<Forecastday> {
  @override
  final int typeId = 6;

  @override
  Forecastday read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Forecastday(
      date: fields[0] as String?,
      dateEpoch: fields[1] as num?,
      day: fields[2] as Day?,
      astro: fields[3] as Astro?,
      hour: (fields[4] as List?)?.cast<Hour>(),
    );
  }

  @override
  void write(BinaryWriter writer, Forecastday obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.dateEpoch)
      ..writeByte(2)
      ..write(obj.day)
      ..writeByte(3)
      ..write(obj.astro)
      ..writeByte(4)
      ..write(obj.hour);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ForecastdayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DayAdapter extends TypeAdapter<Day> {
  @override
  final int typeId = 7;

  @override
  Day read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Day(
      maxtempC: fields[0] as num?,
      maxtempF: fields[1] as num?,
      mnumempC: fields[2] as num?,
      mnumempF: fields[3] as num?,
      avgtempC: fields[4] as num?,
      avgtempF: fields[5] as num?,
      maxwindMph: fields[6] as num?,
      maxwindKph: fields[7] as num?,
      totalprecipMm: fields[8] as num?,
      totalprecipIn: fields[9] as num?,
      totalsnowCm: fields[10] as num?,
      avgvisKm: fields[11] as num?,
      avgvisMiles: fields[12] as num?,
      avghumidity: fields[13] as num?,
      dailyWillItRain: fields[14] as num?,
      dailyChanceOfRain: fields[15] as num?,
      dailyWillItSnow: fields[16] as num?,
      dailyChanceOfSnow: fields[17] as num?,
      condition: fields[18] as Condition?,
      uv: fields[19] as num?,
      airQuality: fields[20] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Day obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.maxtempC)
      ..writeByte(1)
      ..write(obj.maxtempF)
      ..writeByte(2)
      ..write(obj.mnumempC)
      ..writeByte(3)
      ..write(obj.mnumempF)
      ..writeByte(4)
      ..write(obj.avgtempC)
      ..writeByte(5)
      ..write(obj.avgtempF)
      ..writeByte(6)
      ..write(obj.maxwindMph)
      ..writeByte(7)
      ..write(obj.maxwindKph)
      ..writeByte(8)
      ..write(obj.totalprecipMm)
      ..writeByte(9)
      ..write(obj.totalprecipIn)
      ..writeByte(10)
      ..write(obj.totalsnowCm)
      ..writeByte(11)
      ..write(obj.avgvisKm)
      ..writeByte(12)
      ..write(obj.avgvisMiles)
      ..writeByte(13)
      ..write(obj.avghumidity)
      ..writeByte(14)
      ..write(obj.dailyWillItRain)
      ..writeByte(15)
      ..write(obj.dailyChanceOfRain)
      ..writeByte(16)
      ..write(obj.dailyWillItSnow)
      ..writeByte(17)
      ..write(obj.dailyChanceOfSnow)
      ..writeByte(18)
      ..write(obj.condition)
      ..writeByte(19)
      ..write(obj.uv)
      ..writeByte(20)
      ..write(obj.airQuality);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AstroAdapter extends TypeAdapter<Astro> {
  @override
  final int typeId = 8;

  @override
  Astro read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Astro(
      sunrise: fields[0] as String?,
      sunset: fields[1] as String?,
      moonrise: fields[2] as String?,
      moonset: fields[3] as String?,
      moonPhase: fields[4] as String?,
      moonIllumination: fields[5] as num?,
      isMoonUp: fields[6] as num?,
      isSunUp: fields[7] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, Astro obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.sunrise)
      ..writeByte(1)
      ..write(obj.sunset)
      ..writeByte(2)
      ..write(obj.moonrise)
      ..writeByte(3)
      ..write(obj.moonset)
      ..writeByte(4)
      ..write(obj.moonPhase)
      ..writeByte(5)
      ..write(obj.moonIllumination)
      ..writeByte(6)
      ..write(obj.isMoonUp)
      ..writeByte(7)
      ..write(obj.isSunUp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AstroAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HourAdapter extends TypeAdapter<Hour> {
  @override
  final int typeId = 9;

  @override
  Hour read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Hour(
      timeEpoch: fields[0] as num?,
      time: fields[1] as String?,
      tempC: fields[2] as num?,
      tempF: fields[3] as num?,
      isDay: fields[4] as num?,
      condition: fields[5] as Condition?,
      windMph: fields[6] as num?,
      windKph: fields[7] as num?,
      windDegree: fields[8] as num?,
      windDir: fields[9] as String?,
      pressureMb: fields[10] as num?,
      pressureIn: fields[11] as num?,
      precipMm: fields[12] as num?,
      precipIn: fields[13] as num?,
      snowCm: fields[14] as num?,
      humidity: fields[15] as num?,
      cloud: fields[16] as num?,
      feelslikeC: fields[17] as num?,
      feelslikeF: fields[18] as num?,
      windchillC: fields[19] as num?,
      windchillF: fields[20] as num?,
      heatindexC: fields[21] as num?,
      heatindexF: fields[22] as num?,
      dewponumC: fields[23] as num?,
      dewponumF: fields[24] as num?,
      willItRain: fields[25] as num?,
      chanceOfRain: fields[26] as num?,
      willItSnow: fields[27] as num?,
      chanceOfSnow: fields[28] as num?,
      visKm: fields[29] as num?,
      visMiles: fields[30] as num?,
      gustMph: fields[31] as num?,
      gustKph: fields[32] as num?,
      uv: fields[33] as num?,
      airQuality: fields[34] as AirQuality?,
    );
  }

  @override
  void write(BinaryWriter writer, Hour obj) {
    writer
      ..writeByte(35)
      ..writeByte(0)
      ..write(obj.timeEpoch)
      ..writeByte(1)
      ..write(obj.time)
      ..writeByte(2)
      ..write(obj.tempC)
      ..writeByte(3)
      ..write(obj.tempF)
      ..writeByte(4)
      ..write(obj.isDay)
      ..writeByte(5)
      ..write(obj.condition)
      ..writeByte(6)
      ..write(obj.windMph)
      ..writeByte(7)
      ..write(obj.windKph)
      ..writeByte(8)
      ..write(obj.windDegree)
      ..writeByte(9)
      ..write(obj.windDir)
      ..writeByte(10)
      ..write(obj.pressureMb)
      ..writeByte(11)
      ..write(obj.pressureIn)
      ..writeByte(12)
      ..write(obj.precipMm)
      ..writeByte(13)
      ..write(obj.precipIn)
      ..writeByte(14)
      ..write(obj.snowCm)
      ..writeByte(15)
      ..write(obj.humidity)
      ..writeByte(16)
      ..write(obj.cloud)
      ..writeByte(17)
      ..write(obj.feelslikeC)
      ..writeByte(18)
      ..write(obj.feelslikeF)
      ..writeByte(19)
      ..write(obj.windchillC)
      ..writeByte(20)
      ..write(obj.windchillF)
      ..writeByte(21)
      ..write(obj.heatindexC)
      ..writeByte(22)
      ..write(obj.heatindexF)
      ..writeByte(23)
      ..write(obj.dewponumC)
      ..writeByte(24)
      ..write(obj.dewponumF)
      ..writeByte(25)
      ..write(obj.willItRain)
      ..writeByte(26)
      ..write(obj.chanceOfRain)
      ..writeByte(27)
      ..write(obj.willItSnow)
      ..writeByte(28)
      ..write(obj.chanceOfSnow)
      ..writeByte(29)
      ..write(obj.visKm)
      ..writeByte(30)
      ..write(obj.visMiles)
      ..writeByte(31)
      ..write(obj.gustMph)
      ..writeByte(32)
      ..write(obj.gustKph)
      ..writeByte(33)
      ..write(obj.uv)
      ..writeByte(34)
      ..write(obj.airQuality);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HourAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
