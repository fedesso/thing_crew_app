import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UniButton extends StatelessWidget {
  UniButton(this.onPressed);

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return new RawMaterialButton(
      fillColor: Colors.blue,
      splashColor: Colors.lightBlue,
      child: Text('Next Day'),
      onPressed: onPressed,
      shape: const BeveledRectangleBorder()
    );
  }
}