import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _CounterWidgeState extends State<CounterWidgeState> {
  int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
    print(widget);
    print(_counter);
    print('create');
  }

  Future<String> mockNetWorkData() async {
    return Future.delayed(Duration(seconds: 2), () => '我是垃圾');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: mockNetWorkData(),
          builder: (context, AsyncSnapshot snaphot) {
            if (snaphot.connectionState == ConnectionState.done) {
              if (snaphot.hasError) {
                return Text('请求失败: ${snaphot.error}');
              } else {
                return Text('请求成功: ${snaphot.data}');
              }
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(CounterWidgeState oldWidget) {
    super.didUpdateWidget(oldWidget);

    print(oldWidget);
    print('didUpdate');
  }

  @override
  void deactivate() {
    super.deactivate();

    print('deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('reassemble');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('更新依赖');
  }
}

class CounterWidgeState extends StatefulWidget {
  const CounterWidgeState({Key key, this.initValue: 0});

  final initValue;

  @override
  _CounterWidgeState createState() => _CounterWidgeState();
}
