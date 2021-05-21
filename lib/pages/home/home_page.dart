import 'package:flutter/material.dart';
import 'package:nubank_interface/pages/home/main_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;

  @override
  void initState() {
    super.initState();

    _showMenu = false;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.purple[800],
        body: Stack(alignment: Alignment.topCenter,
          children: <Widget>[
            MainAppBar(
              showMenu: _showMenu,
              onTap: () {
                setState(() {
                  _showMenu = !_showMenu;
                });
              },
            ),
            Positioned(
              top: _screenHeight * .08,
              height: _screenHeight * .14,
              left: 0,
              right: 0,
              child: SizedBox(
                height: _screenHeight * 0.3,
                child: PageView(
                  children: <Widget>[
                    Container(color: Colors.blue),
                    Container(color: Colors.green),
                    Container(color: Colors.red)
                  ]
                ),
              )
            
            )
          ],
        ),
    );
  }
}