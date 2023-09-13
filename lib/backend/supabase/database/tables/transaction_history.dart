import '../database.dart';

class TransactionHistoryTable extends SupabaseTable<TransactionHistoryRow> {
  @override
  String get tableName => 'TRANSACTION_HISTORY';

  @override
  TransactionHistoryRow createRow(Map<String, dynamic> data) =>
      TransactionHistoryRow(data);
}

class TransactionHistoryRow extends SupabaseDataRow {
  TransactionHistoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionHistoryTable();

  String get transactionHistoryId =>
      getField<String>('transaction_history_id')!;
  set transactionHistoryId(String value) =>
      setField<String>('transaction_history_id', value);

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
