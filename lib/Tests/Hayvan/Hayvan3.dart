import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Hayvan4.dart';

class Hayvan3 extends StatefulWidget {

  @override
  State<Hayvan3> createState() => _Hayvan3State({});

  final String nick;
  late int result;

  Hayvan3({required this.nick, required this.result});
}

class _Hayvan3State extends State<Hayvan3> {

  @override
  // TODO: implement widget
  Hayvan3 get widget => super.widget;
  int deger = 0;
  int cevap = 0;

  _Hayvan3State(Set<String> set);
  //deger ve cevap sayısı @overide üzerinde olmalı çünkü
  // kod sürekli tekrarlandığı için aynı değeri geri veriyor

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
        backgroundColor: Colors.purple[900],
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    width: ekranGenisligi/1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: Colors.red[900],
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text("-> 3.Soru <-",textAlign: TextAlign.center, style: TextStyle(fontSize: ekranGenisligi/20,fontWeight: FontWeight.bold,)),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    width: ekranGenisligi/1.2,
                    height: ekranYuksekligi/5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber[900],
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text("Aşk hayatında nasılsın ?", style: TextStyle(fontSize: ekranYuksekligi/23,)),
                  ),
                ),
                Card(
                  color: Colors.purple[400],
                  child: Container(
                    width: 370,
                    child: RadioListTile(title: Text("Kıskanç",style: TextStyle(fontSize: 20),),
                        value: 1,
                        groupValue: deger,
                        onChanged: (int? gelen){
                          setState(() {
                            deger=gelen!;
                          });
                          print("Soru1 Seçildi");
                        }),
                  ),
                ),
                Card(
                  color: Colors.purple,
                  child: Container(
                    width: 370,
                    child: RadioListTile(title: Text("Sakin",style: TextStyle(fontSize: 20,),),
                        value: 2,
                        groupValue: deger,
                        onChanged: (int? gelen){
                          setState(() {
                            deger=gelen!;
                          });
                          print("Soru2 Seçildi");
                        }),
                  ),
                ),
                Card(
                  color: Colors.purple[600],
                  child: Container(
                    width: 370,
                    child: RadioListTile(title: Text("Duygusal", style: TextStyle(fontSize: 20),),
                        value: 3,
                        groupValue: deger,
                        onChanged: (int? gelen){
                          setState(() {
                            deger=gelen!;
                          });
                          print("Soru3 Seçildi");
                        }),
                  ),
                ),
                ElevatedButton(
                  child: Text("Devam Et",style: TextStyle(color: Colors.white, fontSize: ekranGenisligi/27,),),
                  onPressed: (){
                    if (deger == 1){
                      cevap = widget.result + deger;
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Hayvan4(nick: widget.nick,result: cevap,)));
                    }
                    else if(deger == 2){
                      cevap = widget.result + deger;
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Hayvan4(nick: widget.nick,result: cevap,)));
                    }
                    else if(deger == 3){
                      cevap = widget.result + deger;
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Hayvan4(nick: widget.nick,result: cevap,)));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink[600], // Buton arkaplan rengi
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
