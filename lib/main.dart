import 'package:flutter_web/material.dart';
import 'components/navbar.dart';
// import 'utils/responsiveLayout.dart';
import 'components/body.dart';

void main() => runApp(MaterialApp(
    title: 'Flutter Landing Page',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Home(),
    debugShowCheckedModeBanner: false));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xFFf8fbff), Color(0xFFfcfdfd)]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(children: <Widget>[NavBar(), Body()]),
        ),
      ),
    );
  }
}
