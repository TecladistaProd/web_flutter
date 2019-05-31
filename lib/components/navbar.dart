import 'package:flutter_web/material.dart';
import '../utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {
  final List<String> navLinks = ["Home", "Products", "Features", "Contact"];

  List<Widget> navItems() {
    return navLinks.map((text) {
      return Padding(
          padding: EdgeInsets.only(left: 18),
          child: Text(text, style: TextStyle(fontFamily: "Montserrat-Bold")));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                        colors: [Color(0xFFc86dd7), Color(0xFF3023ae)],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft)),
                child: Center(
                    child: Text("B",
                        style: TextStyle(fontSize: 30, color: Colors.white))),
              ),
              SizedBox(width: 16),
              Text("FlutterWEB", style: TextStyle(fontSize: 26))
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[...navItems()]..add(InkWell(
                  child: Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFc86dd7), Color(0xFF3023ae)],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff6078ea).withOpacity(.3),
                              offset: Offset(0, 8),
                              blurRadius: 8,
                            )
                          ]),
                      child: Material(
                          color: Colors.transparent,
                          child: Center(
                              child: Text("Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 1,
                                      fontFamily: "Montserrat-Bold"))))))),
            )
          else
            Image.network("assets/images/menu.png", width: 26, height: 26)
        ],
      ),
    );
  }
}
