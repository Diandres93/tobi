import '../database.dart';

class AddressTable extends SupabaseTable<AddressRow> {
  @override
  String get tableName => 'ADDRESS';

  @override
  AddressRow createRow(Map<String, dynamic> data) => AddressRow(data);
}

class AddressRow extends SupabaseDataRow {
  AddressRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AddressTable();

  String get addressId => getField<String>('address_id')!;
  set addressId(String value) => setField<String>('address_id', value);

  String? get addressName => getField<String>('address_name');
  set addressName(String? value) => setField<String>('address_name', value);

  String? get addressStreet => getField<String>('address_street');
  set addressStreet(String? value) => setField<String>('address_street', value);

  String? get addressNumber => getField<String>('address_number');
  set addressNumber(String? value) => setField<String>('address_number', value);

  String? get addressState => getField<String>('address_state');
  set addressState(String? value) => setField<String>('address_state', value);

  String? get addressCity => getField<String>('address_city');
  set addressCity(String? value) => setField<String>('address_city', value);

  String? get addressNeighborhood => getField<String>('address_neighborhood');
  set addressNeighborhood(String? value) =>
      setField<String>('address_neighborhood', value);

  String? get addressLocation => getField<String>('address_location');
  set addressLocation(String? value) =>
      setField<String>('address_location', value);

  String? get addressGps => getField<String>('address_gps');
  set addressGps(String? value) => setField<String>('address_gps', value);

  String? get addressZip => getField<String>('address_zip');
  set addressZip(String? value) => setField<String>('address_zip', value);

  String? get storeId => getField<String>('store_id');
  set storeId(String? value) => setField<String>('store_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
