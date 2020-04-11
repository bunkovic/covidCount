import 'package:covid_count/api/model/country/country_stat.dart';
import 'package:flutter/material.dart';

class CountryListScreenListView extends StatelessWidget {
  final List<CountryStat> _countryDataList;

  const CountryListScreenListView(
    this._countryDataList, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: _countryDataList.length,
          itemBuilder: (BuildContext context, int index) {
            var countryData = _countryDataList[index];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.network(
                    countryData.countryInfo.flag,
                  width: 30,),
                  title: Text(
                    "${countryData.country}, active: ${countryData.active}"
                  ),
                  subtitle: Text("total: ${countryData.cases}, deaths: ${countryData.deaths}"),
                  trailing: Text(" + ${countryData.todayCases}"),
                ),
              ),
            );
          }),
    );
  }
}
