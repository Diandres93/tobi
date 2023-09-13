import '../database.dart';

class SubcategoryCouponTable extends SupabaseTable<SubcategoryCouponRow> {
  @override
  String get tableName => 'subcategory_coupon';

  @override
  SubcategoryCouponRow createRow(Map<String, dynamic> data) =>
      SubcategoryCouponRow(data);
}

class SubcategoryCouponRow extends SupabaseDataRow {
  SubcategoryCouponRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SubcategoryCouponTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get cuponId => getField<String>('cupon_id');
  set cuponId(String? value) => setField<String>('cupon_id', value);

  String? get subcategoryImagePath =>
      getField<String>('subcategory_image_path');
  set subcategoryImagePath(String? value) =>
      setField<String>('subcategory_image_path', value);

  String? get imageBlurSubcategory =>
      getField<String>('image_blur_subcategory');
  set imageBlurSubcategory(String? value) =>
      setField<String>('image_blur_subcategory', value);

  String? get categoryId => getField<String>('category_id');
  set categoryId(String? value) => setField<String>('category_id', value);

  String? get subcategoryIcon => getField<String>('subcategory_icon');
  set subcategoryIcon(String? value) =>
      setField<String>('subcategory_icon', value);

  String? get subcategoryDescription =>
      getField<String>('subcategory_description');
  set subcategoryDescription(String? value) =>
      setField<String>('subcategory_description', value);

  List<String> get cupons => getListField<String>('cupons');
  set cupons(List<String>? value) => setListField<String>('cupons', value);

  String? get subcateoryId => getField<String>('subcateory_id');
  set subcateoryId(String? value) => setField<String>('subcateory_id', value);
}
