import '../database.dart';

class RoleTable extends SupabaseTable<RoleRow> {
  @override
  String get tableName => 'role';

  @override
  RoleRow createRow(Map<String, dynamic> data) => RoleRow(data);
}

class RoleRow extends SupabaseDataRow {
  RoleRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RoleTable();

  String get roleId => getField<String>('role_id')!;
  set roleId(String value) => setField<String>('role_id', value);

  String? get roleName => getField<String>('role_name');
  set roleName(String? value) => setField<String>('role_name', value);

  String? get roleDescription => getField<String>('role_description');
  set roleDescription(String? value) =>
      setField<String>('role_description', value);
}
