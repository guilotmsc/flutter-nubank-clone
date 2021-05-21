import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {

  final bool showMenu;
  final VoidCallback onTap;

  const MainAppBar({Key key, this.showMenu, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(children: <Widget>[
      SizedBox(height: MediaQuery.of(context).padding.top),
      GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.red[800],
          height: MediaQuery.of(context).size.height * .14,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: <Widget> [
                  Image.network(
                    'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo-3.png',
                    height: 40,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Tarso',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 18
                    )
                  )
                ]
              ),
              Icon(!showMenu ? Icons.expand_more_outlined : Icons.expand_less_outlined)
            ],
          ),
        ),
      )
    ]);
  }
}
