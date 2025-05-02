import 'package:flutter/material.dart';

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;
  @override
  void initState() {
    ColorTween _colorTween = ColorTween(
        begin: Colors.orangeAccent.withOpacity(0.5),
        end: Colors.blueGrey.withOpacity(0.5));

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _colorAnimation = _colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, // Fondo azul del AppBar
        title: const Center(
          // Centra el texto
          child: Text(
            'Pantalla 3 Dominguez',
            style: TextStyle(
              color: Colors.black, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                      width: 250.0,
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                            ),
                            child: const Text('Press'),
                            onPressed: () {
                              setState(() {
                                _isPressed = true;
                              });
                              _animationController.reset();
                              _animationController.forward();
                              Future.delayed(const Duration(seconds: 3), () {
                                setState(() {
                                  _isPressed = false;
                                });
                              });
                            },
                          ),
                          if (_isPressed) _animatedModalBarrier,
                        ],
                      ),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
