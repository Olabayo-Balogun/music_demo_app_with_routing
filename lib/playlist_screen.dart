import 'package:flutter/material.dart';
import 'data_provider.dart';
import 'models.dart';
import 'music_player_screen.dart';

class PlaylistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Music> musicList = DataProvider.getMusicList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Music Playlist"),
      ),
      body: ListView.builder(
        itemCount: musicList.length,
        itemBuilder: (context, index) {
          Music music = musicList[index];
          return ListTile(
            title: Text(music.title),
            subtitle: Text('${music.artist} - ${music.album}'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(music.coverUrl),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MusicPlayerScreen(music: music),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
