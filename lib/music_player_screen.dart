import 'package:flutter/material.dart';
import 'models.dart';

class MusicPlayerScreen extends StatelessWidget {
  final music;

  MusicPlayerScreen({required this.music});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Now playing ${music.title}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              music.coverUrl,
              height: 200,
            ),
            SizedBox(height: 16),
            Text(
              music.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('${music.artist} - ${music.album}'),
          ],
        ),
      ),
    );
  }
}
