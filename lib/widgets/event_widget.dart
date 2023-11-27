import 'package:flutter/material.dart';
import 'package:fottball_api/models/event_model.dart';
import 'package:fottball_api/pages/stats_page.dart';

import '../models/goalscorer_model.dart';


class EventWidget extends StatelessWidget {
  EventModel event;
  List goal;

  EventWidget({super.key, required this.event,
    required this.goal
 });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  StatsPage(model: event,
            goalscorer: goal[0],),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(left: 10, bottom: 15, right: 10, top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green.shade900,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    event.leagueLogo ?? "",
                    height: 35,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  event.leagueName ?? "",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  '${event.matchDate}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.network(
                        event.teamHomeBadge ?? "",
                        height: 100,
                      ),
                      Text(
                        event.matchHometeamName ?? "",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Row(
                  children: [
                    Text(
                      '${event.matchHometeamFtScore}:${event.matchAwayteamFtScore}',
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.network(
                        event.teamAwayBadge ?? "",
                        height: 100,
                      ),
                      Text(
                        event.matchAwayteamName ?? "",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
