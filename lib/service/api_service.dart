import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';

import '../models/event_model.dart';

class ApiService {
  static const String key =
      '10f16baf89fe6e9f850523dbd6c75a676eececa8db43167c0a9bdb07843f2bd1';
  static const String apiBase = 'apiv3.apifootball.com';

  static Uri resultPath({
    required String from,
    required String to,
    required String league,
  }) {
    final Uri uri = Uri.parse(
        "https://apiv3.apifootball.com/?action=get_events&from=$from&to=$to&league_id=$league&APIkey=$key");
    return uri;
  }

  static Future<List<EventModel?>> getEvents({
    required String from,
    required String to,
    required String league,
  }) async {
    List<EventModel> events = [];
    final response = await get(
      resultPath(from: from, to: to, league: league),
    );
    log(response.body);
    if (response.statusCode == 200) {
      final dataList = jsonDecode(response.body);
      for (final item in dataList) {
        try {
          events.add(
            EventModel.fromJson(item),
          );
        } catch (error, st) {
          log('Error:', error: error, stackTrace: st);
        }
      }
    }
    log('${response.statusCode}');
    return events;
  }
}
