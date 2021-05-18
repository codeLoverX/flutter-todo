// ignore: todo
// TODO Complete this file. This class should receive data from the TaskListScreen.
//
import 'package:flutter/material.dart';

typedef void MyCallback();

class Float extends StatelessWidget {
  final Function() callbackReset;
  final Function() callbackUpdate;

  @override
  Float(this.callbackReset, this.callbackUpdate);
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {
            this.callbackUpdate();
          },
          label: Text('Update'),
          icon: Icon(Icons.check_circle),
        ),
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {
            this.callbackReset();
          },
          label: Text('Cancel'),
          icon: Icon(Icons.cancel),
        ),
      ],
    );
  }
}
