import '../database.dart';

class ItemCuponTable extends SupabaseTable<ItemCuponRow> {
  @override
  String get tableName => 'item_cupon';

  @override
  ItemCuponRow createRow(Map<String, dynamic> data) => ItemCuponRow(data);
}

class ItemCuponRow extends SupabaseDataRow {
  ItemCuponRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItemCuponTable();

  int get idItem => getField<int>('id_item')!;
  set idItem(int value) => setField<int>('id_item', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get itemImage => getField<String>('item_image')!;
  set itemImage(String value) => setField<String>('item_image', value);

  String? get itemDescription => getField<String>('item_description');
  set itemDescription(String? value) =>
      setField<String>('item_description', value);

  String get createdBy => getField<String>('created_by')!;
  set createdBy(String value) => setField<String>('created_by', value);

  int get numItem => getField<int>('num_item')!;
  set numItem(int value) => setField<int>('num_item', value);
}
