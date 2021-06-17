import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  PageRouteBuilder(
                    transitionDuration: Duration(seconds: 1),
                    transitionsBuilder: (
                      BuildContext buildContext,
                      Animation<double> animation,
                      Animation<double> secondAnimation,
                      Widget child,
                    ) {
                      animation = CurvedAnimation(
                        parent: animation,
                        curve: Curves.elasticInOut,
                      );
                      return ScaleTransition(
                        scale: animation,
                        alignment: Alignment.center,
                        child: child,
                      );
                    },
                    pageBuilder: (
                      BuildContext buildContext,
                      Animation<double> animation,
                      Animation<double> secondAnimation,
                    ) {
                      return SecondScreen();
                    },
                  ),
                );
              },
              child: Text(
                "Second Screen",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  PageRouteBuilder(
                    transitionDuration: Duration(seconds: 1),
                    transitionsBuilder: (
                      BuildContext buildContext,
                      Animation<double> animation,
                      Animation<double> secondAnimation,
                      Widget child,
                    ) {
                      animation = CurvedAnimation(
                        parent: animation,
                        curve: Curves.elasticInOut,
                      );
                      return ScaleTransition(
                        scale: animation,
                        alignment: Alignment.center,
                        child: child,
                      );
                    },
                    pageBuilder: (
                      BuildContext buildContext,
                      Animation<double> animation,
                      Animation<double> secondAnimation,
                    ) {
                      return MyHomePage();
                    },
                  ),
                );
              },
              child: Text(
                "First Screen",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
/*
Tutorial Link: https://www.youtube.com/watch?v=6vPF2IqCJ9Q
 */

///  * [AnimatedBuilder], which is useful for complex animation use cases and a
///    notable exception to the naming scheme of [AnimatedWidget] subclasses.
///  * [AlignTransition], which is an animated version of [Align].
///  * [DecoratedBoxTransition], which is an animated version of [DecoratedBox].
///  * [DefaultTextStyleTransition], which is an animated version of
///    [DefaultTextStyle].
///  * [PositionedTransition], which is an animated version of [Positioned].
///  * [RelativePositionedTransition], which is an animated version of
///    [Positioned].
///  * [RotationTransition], which animates the rotation of a widget.
///  * [ScaleTransition], which animates the scale of a widget.
///  * [SizeTransition], which animates its own size.
///  * [SlideTransition], which animates the position of a widget relative to
///    its normal position.
///  * [FadeTransition], which is an animated version of [Opacity].
///  * [AnimatedModalBarrier], which is an animated version of [ModalBarrier].
