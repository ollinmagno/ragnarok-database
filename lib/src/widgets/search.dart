import 'package:flutter/material.dart';

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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
