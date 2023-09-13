import '../database.dart';

class CuponsFavoritesTable extends SupabaseTable<CuponsFavoritesRow> {
  @override
  String get tableName => 'cupons_favorites';

  @override
  CuponsFavoritesRow createRow(Map<String, dynamic> data) =>
      CuponsFavoritesRow(data);
}

class CuponsFavoritesRow extends SupabaseDataRow {
  CuponsFavoritesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CuponsFavoritesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  List<String> get cupons => getListField<String>('cupons');
  set cupons(List<String>? value) => setListField<String>('cupons', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);
}
