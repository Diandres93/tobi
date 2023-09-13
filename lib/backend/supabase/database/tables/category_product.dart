import '../database.dart';

class CategoryProductTable extends SupabaseTable<CategoryProductRow> {
  @override
  String get tableName => 'CATEGORY_PRODUCT';

  @override
  CategoryProductRow createRow(Map<String, dynamic> data) =>
      CategoryProductRow(data);
}

class CategoryProductRow extends SupabaseDataRow {
  CategoryProductRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoryProductTable();

  String get categoryProductId => getField<String>('category_product_id')!;
  set categoryProductId(String value) =>
      setField<String>('category_product_id', value);

  String? get categoryProductName => getField<String>('category_product_name');
  set categoryProductName(String? value) =>
      setField<String>('category_product_name', value);

  String? get categoryProductDescription =>
      getField<String>('category_product_description');
  set categoryProductDescription(String? value) =>
      setField<String>('category_product_description', value);
}
