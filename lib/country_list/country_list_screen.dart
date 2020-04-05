import 'package:covid_count/api/model/country/country_stat.dart';
import 'package:covid_count/country_list/country_list_screen_list_view.dart';
import 'package:covid_count/country_list/country_list_bloc.dart';
import 'package:covid_count/country_list/country_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryListScreen extends StatelessWidget {
  const CountryListScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryListBloc, CountryListState>(
        bloc: BlocProvider.of(context),
        // ignore: missing_return
        builder: (BuildContext context, CountryListState state) {
          if (state is CountryListSuccess) {
            print(state.runtimeType.toString());
            return CountryListScreenListView(state.countryData);
          }

          if (state is CountryListError) {
            return Container(
              color: Colors.green,
            );
          }
          return Container(
            color: Colors.black,
          );
        });
  }
}
