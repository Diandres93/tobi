import '../database.dart';

class FavoritesTable extends SupabaseTable<FavoritesRow> {
  @override
  String get tableName => 'favorites';

  @override
  FavoritesRow createRow(Map<String, dynamic> data) => FavoritesRow(data);
}

class FavoritesRow extends SupabaseDataRow {
  FavoritesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FavoritesTable();

  String get wishlistId => getField<String>('wishlist_id')!;
  set wishlistId(String value) => setField<String>('wishlist_id', value);

  DateTime? get wishlistCreationDate =>
      getField<DateTime>('wishlist_creation_date');
  set wishlistCreationDate(DateTime? value) =>
      setField<DateTime>('wishlist_creation_date', value);

  String? get cuponId => getField<String>('cupon_id');
  set cuponId(String? value) => setField<String>('cupon_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
