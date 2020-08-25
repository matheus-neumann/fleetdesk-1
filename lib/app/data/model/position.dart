class Position {
  Position({
    this.vehicleId,
    this.longitude,
    this.latitude,
    this.speed,
    this.heading,
    this.datetimeWrite,
    this.datetimeSend,
    this.geofence,
    this.accuracy,
    this.isMoving,
    this.batteryIsCharging,
    this.odometer,
    this.batteryLevel,
  });

  int vehicleId;
  int longitude;
  int latitude;
  int speed;
  int heading;
  String datetimeWrite;
  String datetimeSend;
  String geofence;
  int accuracy;
  bool isMoving;
  bool batteryIsCharging;
  double odometer;
  int batteryLevel;

  factory Position.fromJson(Map<String, dynamic> json) => Position(
        vehicleId: json["vehicle_id"] == null ? null : json["vehicle_id"],
        longitude: json["longitude"] == null ? null : json["longitude"],
        latitude: json["latitude"] == null ? null : json["latitude"],
        speed: json["speed"] == null ? null : json["speed"],
        heading: json["heading"] == null ? null : json["heading"],
        datetimeWrite:
            json["datetime_write"] == null ? null : json["datetime_write"],
        datetimeSend:
            json["datetime_send"] == null ? null : json["datetime_send"],
        geofence: json["geofence"] == null ? null : json["geofence"],
        accuracy: json["accuracy"] == null ? null : json["accuracy"],
        isMoving: json["is_moving"] == null ? null : json["is_moving"],
        batteryIsCharging: json["battery_is_charging"] == null
            ? null
            : json["battery_is_charging"],
        odometer: json["odometer"] == null ? null : json["odometer"].toDouble(),
        batteryLevel:
            json["battery_level"] == null ? null : json["battery_level"],
      );

  Map<String, dynamic> toJson() => {
        "vehicle_id": vehicleId == null ? null : vehicleId,
        "longitude": longitude == null ? null : longitude,
        "latitude": latitude == null ? null : latitude,
        "speed": speed == null ? null : speed,
        "heading": heading == null ? null : heading,
        "datetime_write": datetimeWrite == null ? null : datetimeWrite,
        "datetime_send": datetimeSend == null ? null : datetimeSend,
        "geofence": geofence == null ? null : geofence,
        "accuracy": accuracy == null ? null : accuracy,
        "is_moving": isMoving == null ? null : isMoving,
        "battery_is_charging":
            batteryIsCharging == null ? null : batteryIsCharging,
        "odometer": odometer == null ? null : odometer,
        "battery_level": batteryLevel == null ? null : batteryLevel,
      };
}
