class MenuModel {
  bool monday;
  bool tuesday;
  bool wednesday;
  bool thursday;
  bool friday;
  bool saturday;
  bool sunday;
  String startTime;
  String endTime;

  MenuModel({
    this.monday = false,
    this.tuesday = false,
    this.wednesday = false,
    this.thursday = false,
    this.friday = false,
    this.saturday = false,
    this.sunday = false,
    this.startTime,
    this.endTime,
  });

  String toString() => '''
    ========= Days of Week =========
    monday: ${this.monday},
    tuesday: ${this.tuesday},
    wednesday: ${this.wednesday},
    thursday: ${this.thursday},
    friday: ${this.friday},
    saturday: ${this.saturday},
    sunday: ${this.sunday},
    startTime: ${this.startTime},
    endTime: ${this.endTime},
  ''';
}
