import '../database.dart';

class StoreTable extends SupabaseTable<StoreRow> {
  @override
  String get tableName => 'store';

  @override
  StoreRow createRow(Map<String, dynamic> data) => StoreRow(data);
}

class StoreRow extends SupabaseDataRow {
  StoreRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreTable();

  String get storeId => getField<String>('store_id')!;
  set storeId(String value) => setField<String>('store_id', value);

  String get storeName => getField<String>('store_name')!;
  set storeName(String value) => setField<String>('store_name', value);

  String? get storePhone => getField<String>('store_phone');
  set storePhone(String? value) => setField<String>('store_phone', value);

  String? get storeEmail => getField<String>('store_email');
  set storeEmail(String? value) => setField<String>('store_email', value);

  String? get storeRut => getField<String>('store_rut');
  set storeRut(String? value) => setField<String>('store_rut', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get storeUbication => getField<String>('store_ubication');
  set storeUbication(String? value) =>
      setField<String>('store_ubication', value);
}
