import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MemeBoard',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(90, 40, 60, 1.0),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('and-his-name-is-john-cena.mp3');
                  },
                  child: Text('JohnCena 💪'),  
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('anime-wow-sound-effect.mp3');
                  },
                  child: Text('Anime Wow 😮'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('directed-by-roert-b.mp3');
                  },
                  child: Text('Directed By 🎥'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.grey,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('error.mp3'); 
                  },
                  child: Text('Error ❌'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('fail-sound-effect.mp3');
                  },
                  child: Text('Falied 😥'),
                ),  
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orangeAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('fbi-open-up-explosion.mp3');
                  },
                  child: Text('FBI Open up 🚪'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blueGrey,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('gtaahshit.mp3');
                  },
                  child: Text('Ah Shit!! 💩'),
                ),
              ),
              Expanded(
                child: FlatButton(  
                  color: Colors.purpleAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('ladies-and-gentlemen-we-got-him-song.mp3');
                  },
                  child: Text('We Got Him 🤗'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.grey,
                  onPressed: () {
                    final player = AudioCache();  
                    player.play('loud-version.mp3');
                  },
                  child: Text('Thomas da Train 🚂'),
                ),
              ),
              Expanded( 
                child: FlatButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('mlgairhorn.mp3');
                  },
                  child: Text('Air Horn!! 📯'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellowAccent.shade400,  
                  onPressed: () {
                    final player = AudioCache();
                    player.play('mm-whatcha-say-meme-audio.mp3');
                  },
                  child: Text('Whacha Say 🗣'),
                ),
              ),
              Expanded(
                child: FlatButton(  
                  color: Colors.deepPurpleAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('nani-meme-soundeffect.mp3');
                  },
                  child: Text('Nani 💢'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.deepOrange,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('nicememe.mp3');
                  },
                  child: Text('Nice MeME 🤓'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.lightBlue,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('robloxdeath.mp3');
                  },
                  child: Text('Uhh 💀'),
                ),
              ),
              Expanded(
                child: FlatButton( 
                  color: Colors.pinkAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('suoneria.mp3');
                  },
                  child: Text('Electro POP 💫'),
                ),
              ),
              Expanded( 
                child: FlatButton( 
                  color: Colors.blueGrey.shade900,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('tf_nemesis.mp3');
                  },
                  child: Text('Sad Piano 🎹'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.indigoAccent,
                  onPressed: () {
                    final player = AudioCache();  
                    player.play('the-ting-go.mp3');
                  },
                  child: Text('The ting goes 🔫'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.lightBlue,
                  onPressed: () {
                    final player = AudioCache();  
                    player.play('tmp.mp3');
                  },
                  child: Text('Tadadadda 🕺'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('tmpq.mp3');
                  },
                  child: Text('Ahahahahhhha 😭'),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
