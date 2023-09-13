import '../database.dart';

class CartTable extends SupabaseTable<CartRow> {
  @override
  String get tableName => 'CART';

  @override
  CartRow createRow(Map<String, dynamic> data) => CartRow(data);
}

class CartRow extends SupabaseDataRow {
  CartRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CartTable();

  String get cartId => getField<String>('cart_id')!;
  set cartId(String value) => setField<String>('cart_id', value);

  String? get cartCreationDate => getField<String>('cart_creation_date');
  set cartCreationDate(String? value) =>
      setField<String>('cart_creation_date', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
