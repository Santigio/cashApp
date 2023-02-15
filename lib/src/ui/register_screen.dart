import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int _currentIndex = 0;

  final List<Widget> _slides = [
    Image.network(
      'https://thumbs.dreamstime.com/b/cartoon-character-standing-next-to-large-bitcoin-happy-man-do-bitcoin-mining-blockchain-cryptocurrency-cartoon-character-219427970.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://thumbs.dreamstime.com/b/cartoon-character-standing-next-to-large-bitcoin-happy-man-do-bitcoin-mining-blockchain-cryptocurrency-cartoon-character-219427970.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://thumbs.dreamstime.com/b/cartoon-character-standing-next-to-large-bitcoin-happy-man-do-bitcoin-mining-blockchain-cryptocurrency-cartoon-character-219427970.jpg',
      fit: BoxFit.cover,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            children: _slides,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xfffbbc32),
                  Color(0xffd0a823),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome to FinMate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the login page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.blue[900],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 250,
                  child: OutlinedButton(
                    onPressed: () {
                      // Navigate to the sign up page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ButtonStyle(
                      side: MaterialStateProperty.resolveWith<BorderSide>(
                        (states) => BorderSide(color: Colors.white, width: 1),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];

    for (int i = 0; i < _slides.length; i++) {
      list.add(i == _currentIndex ? _indicator(true) : _indicator(false));
    }

    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: isActive ? 10.0 : 8.0,
      width: isActive ? 10.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white54,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
