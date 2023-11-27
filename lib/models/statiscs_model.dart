class Statistics {
  String? type;
  String? home;
  String? away;

  Statistics({this.type, this.home, this.away});

  Statistics.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    home = json['home'];
    away = json['away'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['home'] = home;
    data['away'] = away;
    return data;
  }
}