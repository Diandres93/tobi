import '../database.dart';

class TransactionTable extends SupabaseTable<TransactionRow> {
  @override
  String get tableName => 'TRANSACTION';

  @override
  TransactionRow createRow(Map<String, dynamic> data) => TransactionRow(data);
}

class TransactionRow extends SupabaseDataRow {
  TransactionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionTable();

  String get transactionId => getField<String>('transaction_id')!;
  set transactionId(String value) => setField<String>('transaction_id', value);

  String? get transactionDate => getField<String>('transaction_date');
  set transactionDate(String? value) =>
      setField<String>('transaction_date', value);

  String? get transactionType => getField<String>('transaction_type');
  set transactionType(String? value) =>
      setField<String>('transaction_type', value);

  String? get transactionAmount => getField<String>('transaction_amount');
  set transactionAmount(String? value) =>
      setField<String>('transaction_amount', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
