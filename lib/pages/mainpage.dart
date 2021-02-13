import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
      bottomNavigationBar: _buildBottom,
    );
  }

  get _buildAppBar {
    return AppBar(
      leading: Icon(Icons.face),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text("Latest"),
          Text("Popular"),
          Text("Trends"),
        ],
      ),
    );
  }

  get _buildBody {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Image.network(
          'https://images.barrons.com/im-217261?width=1280&size=1'),
    );
  }

  get _buildBottom {
    return BottomAppBar(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print("Home Click");
              }),
          IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                print("Person Click");
              }),
          IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {
                print("More Click");
              }),
        ],
      ),
    );
  }
}
