import '../database.dart';

class NotificationTable extends SupabaseTable<NotificationRow> {
  @override
  String get tableName => 'NOTIFICATION';

  @override
  NotificationRow createRow(Map<String, dynamic> data) => NotificationRow(data);
}

class NotificationRow extends SupabaseDataRow {
  NotificationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificationTable();

  String get notificationId => getField<String>('notification_id')!;
  set notificationId(String value) =>
      setField<String>('notification_id', value);

  String? get notificationContent => getField<String>('notification_content');
  set notificationContent(String? value) =>
      setField<String>('notification_content', value);

  String? get notificationDate => getField<String>('notification_date');
  set notificationDate(String? value) =>
      setField<String>('notification_date', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
