import 'package:flutter/material.dart';

class ProgressTracking extends StatelessWidget {
  final String level;
  final int progress;

  ProgressTracking({required this.level, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Progress')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(level, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            LinearProgressIndicator(value: progress/100, minHeight: 14),
            SizedBox(height: 12),
            Text('Progress: $progress%'),
            SizedBox(height: 20),
            Text('Achievements', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: 8),
            Wrap(spacing: 8, children: [
              Chip(label: Text('Water Saver')),
              Chip(label: Text('Recharge Master')),
            ]),
            Spacer(),
            ElevatedButton(onPressed: () => Navigator.pop(context), child: Text('Back'))
          ],
        ),
      ),
    );
  }
}
