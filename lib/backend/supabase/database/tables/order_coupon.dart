import '../database.dart';

class OrderCouponTable extends SupabaseTable<OrderCouponRow> {
  @override
  String get tableName => 'order_coupon';

  @override
  OrderCouponRow createRow(Map<String, dynamic> data) => OrderCouponRow(data);
}

class OrderCouponRow extends SupabaseDataRow {
  OrderCouponRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderCouponTable();

  String get orderId => getField<String>('order_id')!;
  set orderId(String value) => setField<String>('order_id', value);

  DateTime? get orderDate => getField<DateTime>('order_date');
  set orderDate(DateTime? value) => setField<DateTime>('order_date', value);

  bool? get orderStatus => getField<bool>('order_status');
  set orderStatus(bool? value) => setField<bool>('order_status', value);

  String get seller => getField<String>('seller')!;
  set seller(String value) => setField<String>('seller', value);

  String? get unicode => getField<String>('unicode');
  set unicode(String? value) => setField<String>('unicode', value);
}
