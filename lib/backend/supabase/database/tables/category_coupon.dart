import '../database.dart';

class CategoryCouponTable extends SupabaseTable<CategoryCouponRow> {
  @override
  String get tableName => 'category_coupon';

  @override
  CategoryCouponRow createRow(Map<String, dynamic> data) =>
      CategoryCouponRow(data);
}

class CategoryCouponRow extends SupabaseDataRow {
  CategoryCouponRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoryCouponTable();

  String get categoryCouponId => getField<String>('category_coupon_id')!;
  set categoryCouponId(String value) =>
      setField<String>('category_coupon_id', value);

  String get categoryCouponName => getField<String>('category_coupon_name')!;
  set categoryCouponName(String value) =>
      setField<String>('category_coupon_name', value);

  String? get categoryCouponDescription =>
      getField<String>('category_coupon_description');
  set categoryCouponDescription(String? value) =>
      setField<String>('category_coupon_description', value);

  String? get couponId => getField<String>('coupon_id');
  set couponId(String? value) => setField<String>('coupon_id', value);

  String? get categoryImagePath => getField<String>('category_image_path');
  set categoryImagePath(String? value) =>
      setField<String>('category_image_path', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  String? get categoryImageBlurhash =>
      getField<String>('category_image_blurhash');
  set categoryImageBlurhash(String? value) =>
      setField<String>('category_image_blurhash', value);

  String? get iconCategory => getField<String>('icon_category');
  set iconCategory(String? value) => setField<String>('icon_category', value);

  String? get categoryShortName => getField<String>('category_short_name');
  set categoryShortName(String? value) =>
      setField<String>('category_short_name', value);

  String? get categoryIconColor => getField<String>('category_icon_color');
  set categoryIconColor(String? value) =>
      setField<String>('category_icon_color', value);

  List<int> get subcategories => getListField<int>('subcategories');
  set subcategories(List<int>? value) =>
      setListField<int>('subcategories', value);

  List<String> get subca => getListField<String>('subca');
  set subca(List<String>? value) => setListField<String>('subca', value);
}
