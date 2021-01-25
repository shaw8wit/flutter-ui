import 'package:flutter/material.dart';

class GridCard extends StatefulWidget {
  final String text;
  final String routeName;
  final double bevel;
  final Offset blurOffset;
  final Color color;

  GridCard({
    Key key,
    this.text,
    this.routeName,
    this.bevel = 10.0,
    this.color,
  })  : this.blurOffset = Offset(bevel / 2, bevel / 2),
        super(key: key);

  @override
  _GridCardState createState() => _GridCardState();
}

class _GridCardState extends State<GridCard> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
    Navigator.of(context).pushNamed(widget.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final color = this.widget.color ?? Theme.of(context).backgroundColor;

    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade200,
          borderRadius: BorderRadius.circular(widget.bevel * 2.5),
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
            _isPressed ? color : color.mix(Colors.black, .1),
            _isPressed ? color.mix(Colors.black, .05) : color,
            _isPressed ? color.mix(Colors.black, .05) : color,
            color.mix(Colors.white, _isPressed ? .2 : .5),
          ], stops: [
            0.0,
            .3,
            .6,
            1.0,
          ]),
          boxShadow: _isPressed
              ? null
              : [
                  BoxShadow(
                    blurRadius: widget.bevel,
                    offset: -widget.blurOffset,
                    color: color.mix(Colors.white, .6),
                  ),
                  BoxShadow(
                    blurRadius: widget.bevel,
                    offset: widget.blurOffset,
                    color: color.mix(Colors.black, .3),
                  )
                ],
        ),
        child: Center(child: Text(widget.text, textAlign: TextAlign.center)),
      ),
    );
  }
}

// class GridCard extends StatefulWidget {
//   final String routeName;
//   final String text;
//
//   GridCard({this.routeName, this.text});
//
//   @override
//   _GridCardState createState() => _GridCardState();
// }
//
// class _GridCardState extends State<GridCard> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).pushNamed(widget.routeName);
//       },
//       child: Container(
//         padding: const EdgeInsets.all(15),
//         child: Center(child: Text(widget.text, textAlign: TextAlign.center)),
//         decoration: BoxDecoration(
//           color: const Color.fromRGBO(239, 238, 238, 1),
//           border: Border.all(color: const Color.fromRGBO(255, 255, 255, 0.2)),
//           borderRadius: const BorderRadius.all(Radius.circular(20)),
//           boxShadow: const <BoxShadow>[
//             BoxShadow(
//               color: Color.fromRGBO(217, 210, 200, 0.51),
//               offset: Offset(6, 6),
//               blurRadius: 16,
//             ),
//             BoxShadow(
//               color: Color.fromRGBO(255, 255, 255, 0.83),
//               offset: Offset(-6, -6),
//               blurRadius: 16,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount);
  }
}
