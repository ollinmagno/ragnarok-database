import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class EquipmentPage extends StatefulWidget {
  @override
  _EquipmentPageState createState() => _EquipmentPageState();
}

class _EquipmentPageState extends State<EquipmentPage> {
  bool _gridView = true;

  _body() {
    if (_gridView) {
      return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        //itemCount: equipments.length,
        itemBuilder: (context, int index) {
          //return
        },
      );
    } else {
      return ListView.builder(
          itemExtent: 350,
          //itemCount: equipments.length,
          itemBuilder: (BuildContext context, int index) {
            //return
          }
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Equipments'),
          centerTitle: true,
          backgroundColor: appBarColor,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: IconButton(
                  icon: Icon(Icons.grid_on, size: 18,),
                  onPressed: (){
                    print("Grid");
                    setState(() {
                      _gridView = true;
                    });
                  },
                ),
              ),
              Tab(
                child: IconButton(
                  icon: Icon(Icons.format_list_bulleted, size: 18,),
                  onPressed: () {
                    print("Lista");
                    setState(() {
                      _gridView = false;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            _body(),
            _body(),
          ],
        ),
      ),
    );
  }
}
