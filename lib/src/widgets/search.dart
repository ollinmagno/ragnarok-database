import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.grey.shade200,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 14.2),
                    hintText: 'Search',
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              iconSize: 32,
              icon: Icon(Icons.filter_list),
              color: Colors.grey.shade500,
              onPressed: () {
                print('filter');
                return _onClickDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

   _onClickDialog(context) {
    showDialog(context: context, builder: (context){
      return Center(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          child: Container(
            width: 285,
            height: 300,
            padding: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Filter',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      'categories',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: RaisedButton(
                      color: Color(0xfff7ca97),
                      child: new Text(
                        'Confirm',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}