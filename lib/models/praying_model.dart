 class PrayingModel {
  String fajr;
  String dhuhr;
  String asr;
  String maghrib;
  String isha;
  PrayingModel({
    required this.fajr,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
  });
  factory PrayingModel.fromJson(json){
    return PrayingModel(
      fajr: json['data']['timings']['Fajr'],
      dhuhr: json['data']['timings']['Dhuhr'],
      asr: json['data']['timings']['Asr'],
      maghrib: json['data']['timings']['Maghrib'],
      isha: json['data']['timings']['Isha'],
    );
  }
 }