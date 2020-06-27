import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Stateless -> Stateful 위젯 데모',
  home: Scaffold(
    appBar: AppBar(title: Text('Stateless -> Stateful 위젯 데모')),
    body: _FirstStatefulWidget(),
  ),
));

class _FirstStatefulWidget extends StatefulWidget {
  @override
  State createState() => _FirstStatefulWidgetState();
}

class _FirstStatefulWidgetState extends State<_FirstStatefulWidget> {
  @override
  Widget build(BuildContext) {
    return Text('이것은 stateful 위젯입니다.');
  }
}
