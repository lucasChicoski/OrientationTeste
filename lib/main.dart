import 'package:flutter/material.dart';

main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Builder(builder: (BuildContext context) {
            bool isLandScape =
                MediaQuery.of(context).orientation == Orientation.landscape;
            if (isLandScape) {
              return Container();
            } else {
              return Container(
                child: TextField(),
              );
            }
          }),
        ),
      ),
    );
  }
}
