import 'package:covid_count/country_list/bloc/country_list_bloc.dart';
import 'package:covid_count/country_list/bloc/country_list_event.dart';
import 'package:covid_count/global/bloc/global_stat_bloc.dart';
import 'package:covid_count/country_list/country_list_screen.dart';
import 'package:covid_count/global/global_stat_display.dart';
import 'package:covid_count/global/bloc/global_stat_event.dart';
import 'package:covid_count/global/global_stat_screen.dart';
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
//        primarySwatch: Colors.deepOrange.,
          primaryColor: Colors.black),
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
  GlobalStatBloc _globalStatBloc;
  CountryListBloc _countryListBloc;
  int _currentIndex = 0;

  List<Widget> _screens = <Widget>[
    GlobalStatScreen(),
    CountryListScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _globalStatBloc = GlobalStatBloc();
    _globalStatBloc.add(LoadGlobalStats());
    _countryListBloc = CountryListBloc();
    _countryListBloc.add(LoadCountryList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: MultiBlocProvider(providers: [
        BlocProvider<GlobalStatBloc>(
          create: (_) => _globalStatBloc,
        ),
        BlocProvider<CountryListBloc>(
          create: (_) => _countryListBloc,
        )
      ], child: GlobalStatScreen()),
    );
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void _selectBottomItem(int index) {
    setState(() {
      _currentIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.decelerate);
    });
  }

  void _onPageChanged(int pageIndex) {
    setState(() {
      _currentIndex = pageIndex;
    });
  }
}
