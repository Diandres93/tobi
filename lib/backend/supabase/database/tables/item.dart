import '../database.dart';

class ItemTable extends SupabaseTable<ItemRow> {
  @override
  String get tableName => 'item';

  @override
  ItemRow createRow(Map<String, dynamic> data) => ItemRow(data);
}

class ItemRow extends SupabaseDataRow {
  ItemRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItemTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get image => getField<String>('image')!;
  set image(String value) => setField<String>('image', value);

  String get createdBy => getField<String>('created-by')!;
  set createdBy(String value) => setField<String>('created-by', value);

  String get desciption => getField<String>('desciption')!;
  set desciption(String value) => setField<String>('desciption', value);

  int get numItem => getField<int>('num_item')!;
  set numItem(int value) => setField<int>('num_item', value);
}
