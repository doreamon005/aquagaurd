import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = 'Player One';
  int score = 1200;

  void _editName() async {
    final ctl = TextEditingController(text: name);
    final res = await showDialog<String>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Edit Name'),
        content: TextField(controller: ctl),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
          TextButton(onPressed: () => Navigator.pop(context, ctl.text), child: Text('Save')),
        ],
      )
    );
    if (res != null && res.trim().isNotEmpty) setState(() => name = res.trim());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Profile')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(radius: 48, child: Icon(Icons.person, size: 48)),
            SizedBox(height: 12),
            Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Score: $score'),
            SizedBox(height: 12),
            ElevatedButton(onPressed: _editName, child: Text('Edit Name')),
            SizedBox(height: 12),
            Text('Badges'),
            SizedBox(height: 8),
            Wrap(spacing: 8, children: [Chip(label: Text('💧 Water-Smart Youth')), Chip(label: Text('🌱 Eco Hero'))])
          ],
        ),
      ),
    );
  }
}
