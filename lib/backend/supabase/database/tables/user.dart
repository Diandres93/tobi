import '../database.dart';

class UserTable extends SupabaseTable<UserRow> {
  @override
  String get tableName => 'user';

  @override
  UserRow createRow(Map<String, dynamic> data) => UserRow(data);
}

class UserRow extends SupabaseDataRow {
  UserRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get userName => getField<String>('user_name')!;
  set userName(String value) => setField<String>('user_name', value);

  String get userLastname => getField<String>('user_lastname')!;
  set userLastname(String value) => setField<String>('user_lastname', value);

  String get userPhone => getField<String>('user_phone')!;
  set userPhone(String value) => setField<String>('user_phone', value);

  String get userEmail => getField<String>('user_email')!;
  set userEmail(String value) => setField<String>('user_email', value);

  int? get userAge => getField<int>('user_age');
  set userAge(int? value) => setField<int>('user_age', value);

  String? get userGender => getField<String>('user_gender');
  set userGender(String? value) => setField<String>('user_gender', value);

  DateTime? get userDate => getField<DateTime>('user_date');
  set userDate(DateTime? value) => setField<DateTime>('user_date', value);

  String? get userAvatar => getField<String>('user_avatar');
  set userAvatar(String? value) => setField<String>('user_avatar', value);

  String? get userPassword => getField<String>('user_password');
  set userPassword(String? value) => setField<String>('user_password', value);

  bool get seller => getField<bool>('seller')!;
  set seller(bool value) => setField<bool>('seller', value);

  String? get favoritesUser => getField<String>('favorites_user');
  set favoritesUser(String? value) => setField<String>('favorites_user', value);

  bool get promotora => getField<bool>('promotora')!;
  set promotora(bool value) => setField<bool>('promotora', value);

  bool get client => getField<bool>('client')!;
  set client(bool value) => setField<bool>('client', value);

  List<String> get favoritesCuponsList =>
      getListField<String>('favorites_cupons_list');
  set favoritesCuponsList(List<String>? value) =>
      setListField<String>('favorites_cupons_list', value);

  List<String> get stores => getListField<String>('stores');
  set stores(List<String>? value) => setListField<String>('stores', value);
}
