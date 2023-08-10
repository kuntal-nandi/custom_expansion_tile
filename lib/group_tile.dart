import 'package:expansion_tile/selectable_expansion_tile.dart';
import 'package:flutter/material.dart';

class TileGroup extends StatefulWidget {
  const TileGroup({Key? key}) : super(key: key);

  @override
  State<TileGroup> createState() => _TileGroupState();
}

class _TileGroupState extends State<TileGroup> {
  int tileValue=0;
  final ExpansionController _controller1 =
  ExpansionController();
  final ExpansionController _controller2 = ExpansionController();
  final ExpansionController _controller3 =
  ExpansionController();
  bool init = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group Tile'),
      ),
      body: Column(
        children: [
          SelectableExpansionTile(header: Container(height: 80,width: 200,color: Colors.red,),
            body: Container(height: 80,width: 200,color: Colors.green,),
            value: 1,
            groupValue: tileValue,
            onChanged: (v){
            setState(() {
              tileValue=v;
              print(v.toString());
            });
            }, controller: _controller1,
          ),
          const Divider(thickness: 5,color: Colors.blue,),
          SelectableExpansionTile(header: Container(height: 80,width: 200,color: Colors.black,),
            body: Container(height: 80,width: 200,color: Colors.yellow,),
            value: 2,
            groupValue: tileValue,
            onChanged: (v){
              setState(() {
                tileValue=v;
                print(v.toString());
              });
            }, controller: _controller2,
          ),
          const Divider(thickness: 5,color: Colors.blue,),
          SelectableExpansionTile(header: Container(height: 80,width: 200,color: Colors.orange,),
            body: Container(height: 80,width: 200,color: Colors.cyan,),
            value: 3,
            groupValue: tileValue,
            onChanged: (v){
              setState(() {
                tileValue=v;
                print(v.toString());
              });
            }, controller: _controller2,
          ),
          const SizedBox(height: 40,),
          SelectableExpansionTile(header: Container(height: 80,width: 200,color: Colors.grey,),
            body: Container(height: 80,width: 200,color: Colors.brown,),
            value: true,
            // groupValue: init,
            onChanged: (v){
             _controller3.toggle();
              setState(() {

              });
            }, controller: _controller3,
          ),
        ],
      ),
    );
  }
}
