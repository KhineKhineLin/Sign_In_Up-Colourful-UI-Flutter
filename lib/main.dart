import 'package:flutter/material.dart';

import 'signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BackgroundSignIn(),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: <Widget>[
                  getHeader(),
                  getTextFields(),
                  getSignIn(),
                  getBottomRow(context)
                ],
              ),
            ),
            getBackBtn()
          ],
        ),
      ),
    );
  }
}

getBackBtn() {
  return Positioned(
    top: 35,
    left: 25,
    child: Icon(
      Icons.arrow_back_ios,
      color: Colors.white,
    ),
  );
}

getHeader() {
  return Expanded(
    flex: 3,
    child: Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        'Welcome\nBack',
        style: TextStyle(color: Colors.white, fontSize: 40.0),
      ),
    ),
  );
}

getTextFields() {
  return Expanded(
    flex: 4,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Email'),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Password'),
        ),
        SizedBox(
          height: 25,
        )
      ],
    ),
  );
}

getSignIn() {
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Sign in',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        CircleAvatar(
          backgroundColor: Colors.green.shade800,
          radius: 40,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}

getBottomRow(context) {
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignUpPage()));
          },
          child: Text(
            'Sign up',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline),
          ),
        ),
        Text(
          'Forgot Password',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline),
        )
      ],
    ),
  );
}

class BackgroundSignIn extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var sw = size.width;
    var sh = size.height;
    var paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, sw, sh));
    paint.color = Colors.pink.shade100;
    canvas.drawPath(mainBackground, paint);

    Path redWave = Path();
    redWave.lineTo(sw, 0);
    redWave.lineTo(sw, sh * 0.5);
    redWave.quadraticBezierTo(sw * 0.5, sh * 0.45, sw * 0.2, 0);
    redWave.close();
    paint.color = Colors.red.shade300;
    canvas.drawPath(redWave, paint);

    Path greenWave = Path();
    greenWave.lineTo(sw, 0);
    greenWave.lineTo(sw, sh * 0.1);
    greenWave.cubicTo(
        sw * 0.95, sh * 0.15, sw * 0.65, sw * 0.15, sw * 0.6, sh * 0.38);
    greenWave.cubicTo(sw * 0.52, sh * 0.52, sh * 0.05, sh * 0.45, 0, sh * 0.4);
    greenWave.close();
    paint.color = Colors.green.shade800;
    canvas.drawPath(greenWave, paint);

    Path purpleWave = Path();
    purpleWave.lineTo(sw * 0.7, 0);
    purpleWave.cubicTo(
        sw * 0.6, sh * 0.05, sh * 0.27, sh * 0.01, sw * 0.18, sh * 0.12);
    purpleWave.quadraticBezierTo(sw * 0.12, sh * 0.2, 0, sh * 0.2);
    purpleWave.close();
    paint.color = Colors.purple.shade300;
    canvas.drawPath(purpleWave, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class BackgroundSignUp extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var sw = size.width;
    var sh = size.height;
    var paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, sw, sh));
    paint.color = Colors.pink.shade100;
    canvas.drawPath(mainBackground, paint);

    Path redWave = Path();
    redWave.lineTo(sw, 0);
    redWave.lineTo(sw, sh * 0.65);
    redWave.cubicTo(sw * 0.8, sh * 0.8, sw * 0.55, sh * 0.8, sw * 0.45, sh);
    redWave.lineTo(0, sh);
    redWave.close();
    paint.color = Colors.red.shade300;
    canvas.drawPath(redWave, paint);

    Path greenWave = Path();
    greenWave.lineTo(sw, 0);
    greenWave.lineTo(sw, sh * 0.3);
    greenWave.cubicTo(sw * 0.65, sh * 0.45, sw * 0.25, sh * 0.35, 0, sh * 0.5);
    greenWave.close();
    paint.color = Colors.green.shade800;
    canvas.drawPath(greenWave, paint);

    Path purpleWave = Path();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
