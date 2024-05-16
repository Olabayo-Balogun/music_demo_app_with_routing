import 'package:flutter/material.dart';
import 'playlist_screen.dart';
import 'liked_songs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Music Playlist'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note), text: 'Songs'),
                Tab(icon: Icon(Icons.favorite), text: 'Liked'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              PlaylistScreen(),
              LikedSongs(),
            ],
          ),
        ),
      ),
    );
  }
}
