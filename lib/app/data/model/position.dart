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
  double longitude;
  double latitude;
  double speed;
  double heading;
  String datetimeWrite;
  String datetimeSend;
  String geofence;
  double accuracy;
  int isMoving;
  int batteryIsCharging;
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

  Map<String, dynamic> toJson(Position position) {
    return {
      "vehicle_id": position.vehicleId == null ? null : position.vehicleId,
      "longitude": position.longitude == null ? null : position.longitude,
      "latitude": position.latitude == null ? null : position.latitude,
      "speed": position.speed == null ? null : position.speed,
      "heading": position.heading == null ? null : position.heading,
      "datetime_write":
          position.datetimeWrite == null ? null : position.datetimeWrite,
      "datetime_send":
          position.datetimeSend == null ? null : position.datetimeSend,
      "geofence": position.geofence == null ? null : position.geofence,
      "accuracy": position.accuracy == null ? null : position.accuracy,
      "is_moving": position.isMoving == null ? null : position.isMoving,
      "battery_is_charging": position.batteryIsCharging == null
          ? null
          : position.batteryIsCharging,
      "odometer": position.odometer == null ? null : position.odometer,
      "battery_level":
          position.batteryLevel == null ? null : position.batteryLevel,
    };
  }
}
