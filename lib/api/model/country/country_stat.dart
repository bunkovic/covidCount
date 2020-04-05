class CountryStat {
  String _country;
  CountryInfoBean _countryInfo;
  final int _cases;
  final int _todayCases;
  final int _deaths;
  final int _todayDeaths;
  final int _recovered;
  final int _active;
  final int _critical;
  final int _casesPerOneMillion;
  final int _deathsPerOneMillion;
  final  int _updated;

  String get country => _country;
  CountryInfoBean get countryInfo => _countryInfo;
  int get cases => _cases;
  int get todayCases => _todayCases;
  int get deaths => _deaths;
  int get todayDeaths => _todayDeaths;
  int get recovered => _recovered;
  int get active => _active;
  int get critical => _critical;
  int get casesPerOneMillion => _casesPerOneMillion;
  int get deathsPerOneMillion => _deathsPerOneMillion;
  int get updated => _updated;

  CountryStat(this._country, this._countryInfo, this._cases, this._todayCases, this._deaths, this._todayDeaths, this._recovered, this._active, this._critical, this._casesPerOneMillion, this._deathsPerOneMillion, this._updated);

}

class CountryInfoBean {
  final int _Id;
  final String _iso2;
  final String _iso3;
  final String _country;
  final int _lat;
  final int _long;
  final String _flag;

  int get Id => _Id;
  String get iso2 => _iso2;
  String get iso3 => _iso3;
  String get country => _country;
  int get lat => _lat;
  int get long => _long;
  String get flag => _flag;

  CountryInfoBean(this._Id, this._iso2, this._iso3, this._country, this._lat, this._long, this._flag);
}