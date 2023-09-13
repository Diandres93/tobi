import '../database.dart';

class OrderTable extends SupabaseTable<OrderRow> {
  @override
  String get tableName => 'order';

  @override
  OrderRow createRow(Map<String, dynamic> data) => OrderRow(data);
}

class OrderRow extends SupabaseDataRow {
  OrderRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get unicode => getField<String>('unicode')!;
  set unicode(String value) => setField<String>('unicode', value);

  String? get seller => getField<String>('seller');
  set seller(String? value) => setField<String>('seller', value);
}
