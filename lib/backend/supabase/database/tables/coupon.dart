import '../database.dart';

class CouponTable extends SupabaseTable<CouponRow> {
  @override
  String get tableName => 'coupon';

  @override
  CouponRow createRow(Map<String, dynamic> data) => CouponRow(data);
}

class CouponRow extends SupabaseDataRow {
  CouponRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CouponTable();

  String get couponId => getField<String>('coupon_id')!;
  set couponId(String value) => setField<String>('coupon_id', value);

  String get couponName => getField<String>('coupon_name')!;
  set couponName(String value) => setField<String>('coupon_name', value);

  String get couponDescription => getField<String>('coupon_description')!;
  set couponDescription(String value) =>
      setField<String>('coupon_description', value);

  DateTime get couponExpirationDate =>
      getField<DateTime>('coupon_expiration_date')!;
  set couponExpirationDate(DateTime value) =>
      setField<DateTime>('coupon_expiration_date', value);

  DateTime get couponCreationDate =>
      getField<DateTime>('coupon_creation_date')!;
  set couponCreationDate(DateTime value) =>
      setField<DateTime>('coupon_creation_date', value);

  DateTime get couponInitialDate => getField<DateTime>('coupon_initial_date')!;
  set couponInitialDate(DateTime value) =>
      setField<DateTime>('coupon_initial_date', value);

  int get couponCuantityAvailable =>
      getField<int>('coupon_cuantity_available')!;
  set couponCuantityAvailable(int value) =>
      setField<int>('coupon_cuantity_available', value);

  int? get couponCuantityRedeemed => getField<int>('coupon_cuantity_redeemed');
  set couponCuantityRedeemed(int? value) =>
      setField<int>('coupon_cuantity_redeemed', value);

  bool get couponState => getField<bool>('coupon_state')!;
  set couponState(bool value) => setField<bool>('coupon_state', value);

  String? get couponUnicode => getField<String>('coupon_unicode');
  set couponUnicode(String? value) => setField<String>('coupon_unicode', value);

  String get couponImagePath => getField<String>('coupon_image_path')!;
  set couponImagePath(String value) =>
      setField<String>('coupon_image_path', value);

  double get couponPrice => getField<double>('coupon_price')!;
  set couponPrice(double value) => setField<double>('coupon_price', value);

  String? get couponCategory => getField<String>('coupon_category');
  set couponCategory(String? value) =>
      setField<String>('coupon_category', value);

  List<String> get itemsDescription =>
      getListField<String>('items_description');
  set itemsDescription(List<String>? value) =>
      setListField<String>('items_description', value);

  bool? get canjeado => getField<bool>('canjeado');
  set canjeado(bool? value) => setField<bool>('canjeado', value);

  List<String> get itemsImagePath => getListField<String>('items_image_path');
  set itemsImagePath(List<String>? value) =>
      setListField<String>('items_image_path', value);

  List<dynamic> get itemsJson => getListField<dynamic>('items_json');
  set itemsJson(List<dynamic>? value) =>
      setListField<dynamic>('items_json', value);

  int? get productsArray => getField<int>('products_array');
  set productsArray(int? value) => setField<int>('products_array', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  int? get subcategoryName => getField<int>('subcategory_name');
  set subcategoryName(int? value) => setField<int>('subcategory_name', value);

  int? get itemsArray => getField<int>('items_array');
  set itemsArray(int? value) => setField<int>('items_array', value);

  List<int> get itemsCupon => getListField<int>('items_cupon');
  set itemsCupon(List<int>? value) => setListField<int>('items_cupon', value);

  List<String> get items => getListField<String>('items');
  set items(List<String>? value) => setListField<String>('items', value);

  String? get imageBlurPath => getField<String>('image_blur_path');
  set imageBlurPath(String? value) =>
      setField<String>('image_blur_path', value);

  String? get favorites => getField<String>('favorites');
  set favorites(String? value) => setField<String>('favorites', value);

  String? get categoryImageWhite => getField<String>('category_image-white');
  set categoryImageWhite(String? value) =>
      setField<String>('category_image-white', value);

  bool? get isfavorite => getField<bool>('isfavorite');
  set isfavorite(bool? value) => setField<bool>('isfavorite', value);
}
