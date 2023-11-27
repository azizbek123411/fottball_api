import 'package:fottball_api/models/statiscs_model.dart';

import 'cards_model.dart';
import 'goalscorer_model.dart';

class EventModel {
  String? matchId;
  String? countryId;
  String? countryName;
  String? leagueId; // done
  String? leagueName; // done
  String? matchDate; // done
  String? matchStatus;
  String? matchTime;
  String? matchHometeamId;
  String? matchHometeamName; // done
  String? matchHometeamScore;
  String? matchAwayteamName; // done
  String? matchAwayteamId;
  String? matchAwayteamScore;
  String? matchHometeamHalftimeScore;
  String? matchAwayteamHalftimeScore;
  String? matchHometeamFtScore; // done
  String? matchAwayteamFtScore; // done
  String? matchHometeamSystem;
  String? matchAwayteamSystem;
  String? matchLive;
  String? matchRound;
  String? matchStadium;
  String? matchReferee;
  String? teamHomeBadge; // done
  String? teamAwayBadge; // done
  String? leagueLogo; // done
  String? countryLogo;
  String? leagueYear;
  String? fkStageKey;
  String? stageName;
  List<Goalscorer>? goalscorer;
  List<Cards>? cards;

  List<Statistics>? statistics;

  EventModel(
      {this.matchId,
        this.countryId,
        this.countryName,
        this.leagueId,
        this.leagueName,
        this.matchDate,
        this.matchStatus,
        this.matchTime,
        this.matchHometeamId,
        this.matchHometeamName,
        this.matchHometeamScore,
        this.matchAwayteamName,
        this.matchAwayteamId,
        this.matchAwayteamScore,
        this.matchHometeamHalftimeScore,
        this.matchAwayteamHalftimeScore,
        this.matchHometeamFtScore,
        this.matchAwayteamFtScore,
        this.matchHometeamSystem,
        this.matchAwayteamSystem,
        this.matchLive,
        this.matchRound,
        this.matchStadium,
        this.matchReferee,
        this.teamHomeBadge,
        this.teamAwayBadge,
        this.leagueLogo,
        this.countryLogo,
        this.leagueYear,
        this.fkStageKey,
        this.stageName,
        this.goalscorer,
        this.cards,
        this.statistics});

  EventModel.fromJson(Map<String, dynamic> json) {
    matchId = json['match_id'];
    countryId = json['country_id'];
    countryName = json['country_name'];
    leagueId = json['league_id'];
    leagueName = json['league_name'];
    matchDate = json['match_date'];
    matchStatus = json['match_status'];
    matchTime = json['match_time'];
    matchHometeamId = json['match_hometeam_id'];
    matchHometeamName = json['match_hometeam_name'];
    matchHometeamScore = json['match_hometeam_score'];
    matchAwayteamName = json['match_awayteam_name'];
    matchAwayteamId = json['match_awayteam_id'];
    matchAwayteamScore = json['match_awayteam_score'];
    matchHometeamHalftimeScore = json['match_hometeam_halftime_score'];
    matchAwayteamHalftimeScore = json['match_awayteam_halftime_score'];
    matchHometeamFtScore = json['match_hometeam_ft_score'];
    matchAwayteamFtScore = json['match_awayteam_ft_score'];
    matchHometeamSystem = json['match_hometeam_system'];
    matchAwayteamSystem = json['match_awayteam_system'];
    matchLive = json['match_live'];
    matchRound = json['match_round'];
    matchStadium = json['match_stadium'];
    matchReferee = json['match_referee'];
    teamHomeBadge = json['team_home_badge'];
    teamAwayBadge = json['team_away_badge'];
    leagueLogo = json['league_logo'];
    countryLogo = json['country_logo'];
    leagueYear = json['league_year'];
    fkStageKey = json['fk_stage_key'];
    stageName = json['stage_name'];
    if (json['goalscorer'] != null) {
      goalscorer = <Goalscorer>[];
      json['goalscorer'].forEach((v) {
        goalscorer!.add(Goalscorer.fromJson(v));
      });
    }
    if (json['cards'] != null) {
      cards = <Cards>[];
      json['cards'].forEach((v) {
        cards!.add(Cards.fromJson(v));
      });
    }

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['match_id'] = matchId;
    data['country_id'] = countryId;
    data['country_name'] = countryName;
    data['league_id'] = leagueId;
    data['league_name'] = leagueName;
    data['match_date'] = matchDate;
    data['match_status'] = matchStatus;
    data['match_time'] = matchTime;
    data['match_hometeam_id'] = matchHometeamId;
    data['match_hometeam_name'] = matchHometeamName;
    data['match_hometeam_score'] = matchHometeamScore;
    data['match_awayteam_name'] = matchAwayteamName;
    data['match_awayteam_id'] = matchAwayteamId;
    data['match_awayteam_score'] = matchAwayteamScore;
    data['match_hometeam_halftime_score'] = matchHometeamHalftimeScore;
    data['match_awayteam_halftime_score'] = matchAwayteamHalftimeScore;
    data['match_hometeam_ft_score'] = matchHometeamFtScore;
    data['match_awayteam_ft_score'] = matchAwayteamFtScore;
    data['match_hometeam_system'] = matchHometeamSystem;
    data['match_awayteam_system'] = matchAwayteamSystem;
    data['match_live'] = matchLive;
    data['match_round'] = matchRound;
    data['match_stadium'] = matchStadium;
    data['match_referee'] = matchReferee;
    data['team_home_badge'] = teamHomeBadge;
    data['team_away_badge'] = teamAwayBadge;
    data['league_logo'] = leagueLogo;
    data['country_logo'] = countryLogo;
    data['league_year'] = leagueYear;
    data['fk_stage_key'] = fkStageKey;
    data['stage_name'] = stageName;
    if (goalscorer != null) {
      data['goalscorer'] = goalscorer!.map((v) => v.toJson()).toList();
    }
    if (cards != null) {
      data['cards'] = cards!.map((v) => v.toJson()).toList();
    }

    if (statistics != null) {
      data['statistics'] = statistics!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}





