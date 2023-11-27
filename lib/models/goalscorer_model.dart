class Goalscorer {
  String? time;
  String? homeScorer;
  String? homeScorerId;
  String? homeAssist;
  String? homeAssistId;
  String? score;
  String? awayScorer;
  String? awayScorerId;
  String? awayAssist;
  String? awayAssistId;
  String? info;
  String? scoreInfoTime;

  Goalscorer(
      {this.time,
        this.homeScorer,
        this.homeScorerId,
        this.homeAssist,
        this.homeAssistId,
        this.score,
        this.awayScorer,
        this.awayScorerId,
        this.awayAssist,
        this.awayAssistId,
        this.info,
        this.scoreInfoTime});

  Goalscorer.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    homeScorer = json['home_scorer'];
    homeScorerId = json['home_scorer_id'];
    homeAssist = json['home_assist'];
    homeAssistId = json['home_assist_id'];
    score = json['score'];
    awayScorer = json['away_scorer'];
    awayScorerId = json['away_scorer_id'];
    awayAssist = json['away_assist'];
    awayAssistId = json['away_assist_id'];
    info = json['info'];
    scoreInfoTime = json['score_info_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time'] = time;
    data['home_scorer'] = homeScorer;
    data['home_scorer_id'] = homeScorerId;
    data['home_assist'] = homeAssist;
    data['home_assist_id'] = homeAssistId;
    data['score'] = score;
    data['away_scorer'] = awayScorer;
    data['away_scorer_id'] = awayScorerId;
    data['away_assist'] = awayAssist;
    data['away_assist_id'] = awayAssistId;
    data['info'] = info;
    data['score_info_time'] = scoreInfoTime;
    return data;
  }
}
