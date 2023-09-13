import '../database.dart';

class CountryTable extends SupabaseTable<CountryRow> {
  @override
  String get tableName => 'COUNTRY';

  @override
  CountryRow createRow(Map<String, dynamic> data) => CountryRow(data);
}

class CountryRow extends SupabaseDataRow {
  CountryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CountryTable();

  String get countryId => getField<String>('country_id')!;
  set countryId(String value) => setField<String>('country_id', value);

  String? get countryName => getField<String>('country_name');
  set countryName(String? value) => setField<String>('country_name', value);

  String? get countryAcronym => getField<String>('country_acronym');
  set countryAcronym(String? value) =>
      setField<String>('country_acronym', value);

  String? get countryFlag => getField<String>('country_flag');
  set countryFlag(String? value) => setField<String>('country_flag', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
