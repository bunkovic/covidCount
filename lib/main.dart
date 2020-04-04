import 'package:covidcount/global/global_stat_bloc.dart';
import 'package:covidcount/country_list_screen.dart';
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
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'Covid Count'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalStatBloc _bloc;
  int _currentIndex = 0;

  List<Widget> _screens = <Widget>[
    GlobalStatScreen(),
    CountryListScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _bloc = GlobalStatBloc();
    _bloc.add(LoadGlobalStats());
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _screens.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _selectBottomItem,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.public), title: Text("Global cases")),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text("Countries"),
            )
          ],
        ),
        body: BlocProvider<GlobalStatBloc>(
          create: (_) => _bloc,
          child: PageView(
            controller: pageController,
            onPageChanged: _onPageChanged,
            children: _screens,
          ),
        ),
      ),
    );
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void _selectBottomItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onPageChanged(int pageIndex) {
    _selectBottomItem(pageIndex);
  }
}
