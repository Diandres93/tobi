import '../database.dart';

class PaymentTable extends SupabaseTable<PaymentRow> {
  @override
  String get tableName => 'PAYMENT';

  @override
  PaymentRow createRow(Map<String, dynamic> data) => PaymentRow(data);
}

class PaymentRow extends SupabaseDataRow {
  PaymentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaymentTable();

  String get paymentId => getField<String>('payment_id')!;
  set paymentId(String value) => setField<String>('payment_id', value);

  String? get paymentDate => getField<String>('payment_date');
  set paymentDate(String? value) => setField<String>('payment_date', value);

  String? get paymentMethod => getField<String>('payment_method');
  set paymentMethod(String? value) => setField<String>('payment_method', value);

  String? get paymentAmount => getField<String>('payment_amount');
  set paymentAmount(String? value) => setField<String>('payment_amount', value);
}
