import 'package:covidcount/global/global_stat_bloc.dart';
import 'package:covidcount/global/global_stat_display.dart';
import 'package:covidcount/global/global_stat_event.dart';
import 'package:covidcount/global/global_stat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'api/api.dart';
import 'service_locator.dart' as di;

void main() {
  di.initServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid Count',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Covid Count'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalStatBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = GlobalStatBloc();
    _bloc.add(LoadGlobalStats());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GlobalStatBloc>(
      create: (_) => _bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: GlobalStatScreen()
        ),

      ),
    );
  }
}
