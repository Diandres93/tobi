import '../database.dart';

class ProductTable extends SupabaseTable<ProductRow> {
  @override
  String get tableName => 'product';

  @override
  ProductRow createRow(Map<String, dynamic> data) => ProductRow(data);
}

class ProductRow extends SupabaseDataRow {
  ProductRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductTable();

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);

  String get productName => getField<String>('product_name')!;
  set productName(String value) => setField<String>('product_name', value);

  String get productImage => getField<String>('product_image')!;
  set productImage(String value) => setField<String>('product_image', value);

  String get productDescription => getField<String>('product_description')!;
  set productDescription(String value) =>
      setField<String>('product_description', value);

  double get productCuantity => getField<double>('product_cuantity')!;
  set productCuantity(double value) =>
      setField<double>('product_cuantity', value);

  double get productPriceWithDiscount =>
      getField<double>('product_price_with_discount')!;
  set productPriceWithDiscount(double value) =>
      setField<double>('product_price_with_discount', value);
}
