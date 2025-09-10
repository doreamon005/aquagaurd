import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'progress_tracking.dart';

class Dashboard extends StatelessWidget {
  final List<String> levels = [
    "Drought Challenge",
    "Flood Management",
    "Pollution Control",
    "Crop Diversification"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Dashboard"),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ProfilePage())),
            icon: Icon(Icons.person)
          )
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: levels.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(levels[index]),
              subtitle: Text("Tap to view progress and play"),
              trailing: Icon(Icons.play_arrow, color: Colors.green),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ProgressTracking(level: levels[index], progress: (index+1)*20))),
            ),
          );
        },
      ),
    );
  }
}
