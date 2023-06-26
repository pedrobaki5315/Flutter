import 'package:flutter/material.dart';

void main() => runApp(Luz());

class Luz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Light Switch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LightSwitchPage(),
    );
  }
}

class LightSwitchPage extends StatefulWidget {
  @override
  _LightSwitchPageState createState() => _LightSwitchPageState();
}

class _LightSwitchPageState extends State<LightSwitchPage> {
  bool isLightOn = false;

  void toggleLight() {
    setState(() {
      isLightOn = !isLightOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Light Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              isLightOn ? 'images/light_on.png' : 'images/light_off.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: toggleLight,
              child: Text(isLightOn ? 'Turn Off' : 'Turn On'),
            ),
          ],
        ),
      ),
    );
  }
}