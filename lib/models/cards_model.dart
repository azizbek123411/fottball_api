class Cards {
  String? time;
  String? homeFault;
  String? card;
  String? awayFault;
  String? info;
  String? homePlayerId;
  String? awayPlayerId;
  String? scoreInfoTime;

  Cards(
      {this.time,
        this.homeFault,
        this.card,
        this.awayFault,
        this.info,
        this.homePlayerId,
        this.awayPlayerId,
        this.scoreInfoTime});

  Cards.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    homeFault = json['home_fault'];
    card = json['card'];
    awayFault = json['away_fault'];
    info = json['info'];
    homePlayerId = json['home_player_id'];
    awayPlayerId = json['away_player_id'];
    scoreInfoTime = json['score_info_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time'] = time;
    data['home_fault'] = homeFault;
    data['card'] = card;
    data['away_fault'] = awayFault;
    data['info'] = info;
    data['home_player_id'] = homePlayerId;
    data['away_player_id'] = awayPlayerId;
    data['score_info_time'] = scoreInfoTime;
    return data;
  }
}
