import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main()=>runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget{
  void playSound(int Num){
    final player = AudioPlayer();
    player.play(AssetSource('note$Num.wav'));
  }
  Widget noteBtn(Color color, Num){
    return Expanded(
      child: InkWell(
        onTap: () {
          playSound(Num);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
  Widget fontStyle(String ltr, Color color){
    return Expanded(child: Text(ltr,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color:color)));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          fontStyle('X',Colors.purple),
                          fontStyle('Y',Colors.blue.shade800),
                          fontStyle('L',Colors.blue),
                          fontStyle('O',Colors.green),
                          fontStyle('P',Colors.yellow),
                          fontStyle('H',Colors.orange),
                          fontStyle('O',Colors.red),
                          fontStyle('N',Colors.brown),
                          fontStyle('E',Colors.blueGrey)
                        ],
                      ),
                )),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      noteBtn(Colors.purple,1),
                      noteBtn(Colors.blue.shade900,2),
                      noteBtn(Colors.blue,3),
                      noteBtn(Colors.green,4),
                      noteBtn(Colors.yellow,5),
                      noteBtn(Colors.orange,6),
                      noteBtn(Colors.red,7),
                      noteBtn(Colors.brown,8),
                      noteBtn(Colors.blueGrey,9),
                  
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}