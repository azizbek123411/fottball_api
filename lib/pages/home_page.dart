import 'package:flutter/material.dart';
import 'package:fottball_api/service/api_service.dart';

import '../widgets/event_widget.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Flutter Football",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: FutureBuilder(
          future: ApiService.getEvents(
              from: "2023-11-25", to: "2023-11-26 ", league: "152"),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.green,
                  backgroundColor: Colors.grey,
                ),
              );
            }
            else if (snapshot.hasError){
              return  Center(
                child: AlertDialog(
                  title: const Text('Error'),
                  content: Text('Something went wrong:${snapshot.error}'),
                ),
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final match = snapshot.data![index];
                    return EventWidget(event: match!, goal: match.goalscorer!.toList(),);
                  });
            }
          }),
    );
  }
}
