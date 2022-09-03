import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

//colors
final Color Darkcolor = HexColor('424242');
final Color GreyColor = HexColor('9E9E9E');
final Color blackcolor = HexColor('212121');
final Color ambercolor = HexColor('FFD600');


//It specifies in which  text widget the playername should be placed

int playernumber = 0;

// It causes text widgets to visibale or not
bool visibale1 = false;
bool visibale2 = false;
bool visibale3 = false;
bool visibale4 = false;
bool visibale5 = false;
bool visibale6 = false;
bool visibale7 = false;
bool visibale8 = false;
bool visibale9 = false;
bool visibale10 = false;
//To limit timer.periodic method
int time = 10;
// it causes icon visibale or not
bool iconvisibale = false;
//shows player turn
String sh1 = '';
String sh2 = '';
//shows player name
String text1 = '';
String text2 = '';
String text3 = '';
String text4 = '';
String text5 = '';
String text6 = '';
String text7 = '';
String text8 = '';
String text9 = '';
String text10 = '';
//itt specifies the position of playername in the list
int showplayer1 = 0;
int showplayer2 = 0;
// play is object of game class
Game Play = Game();
// game class for make a list to put the player name in it
class Game {
  List<String> playerNo = ['', '', '', '', '', '', '', '', '', ''];
}
// to get ther texfiled input
final playercontorl = TextEditingController();
//to show player name in list & text widget
void GetPLyarName() {
  if (playercontorl.text == '') return;

  playernumber++;

  switch (playernumber) {
    case 1:
      {
        text1 = Play.playerNo[0] = playercontorl.text;
        visibale1 = true;
      }
      break;
    case 2:
      {
        text2 = Play.playerNo[1] = playercontorl.text;
        visibale2 = true;
      }
      break;
    case 3:
      {
        text3 = Play.playerNo[2] = playercontorl.text;
        visibale3 = true;
      }
      break;
    case 4:
      {
        text4 = Play.playerNo[3] = playercontorl.text;
        visibale4 = true;
      }
      break;
    case 5:
      {
        text5 = Play.playerNo[4] = playercontorl.text;
        visibale5 = true;
      }
      break;
    case 6:
      {
        text6 = Play.playerNo[5] = playercontorl.text;
        visibale6 = true;
      }
      break;
    case 7:
      {
        text7 = Play.playerNo[6] = playercontorl.text;
        visibale7 = true;
      }
      break;
    case 8:
      {
        text8 = Play.playerNo[7] = playercontorl.text;
        visibale8 = true;
      }
      break;
    case 9:
      {
        text9 = Play.playerNo[8] = playercontorl.text;
        visibale9 = true;
      }
      break;
    case 10:
      {
        text10 = Play.playerNo[9] = playercontorl.text;
        visibale10 = true;
      }
      break;
  }
}
// to show the page should we add a player name
void AddPlayerPage(BuildContext context, Widget widget) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (BuildContext context) => widget,
    ),
  );
}
// to reset the game and all of the methods we set during the game
void GetReset() {
  for (var x = 0; x < Play.playerNo.length; x++) {
    Play.playerNo[x] = '';
  }

  showplayer1 = 0;
  showplayer2 = 0;
  sh1 = '';
  sh2 = '';
  visibale1 = false;
  visibale2 = false;
  visibale3 = false;
  visibale4 = false;
  visibale5 = false;
  visibale6 = false;
  visibale7 = false;
  visibale8 = false;
  visibale9 = false;
  visibale10 = false;
  playernumber = 0;
  time = 10;
  iconvisibale = false;
  Play.playerNo = ['', '', '', '', '', '', '', '', '', ''];
}
