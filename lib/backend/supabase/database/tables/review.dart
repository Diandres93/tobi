import '../database.dart';

class ReviewTable extends SupabaseTable<ReviewRow> {
  @override
  String get tableName => 'REVIEW';

  @override
  ReviewRow createRow(Map<String, dynamic> data) => ReviewRow(data);
}

class ReviewRow extends SupabaseDataRow {
  ReviewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReviewTable();

  String get reviewId => getField<String>('review_id')!;
  set reviewId(String value) => setField<String>('review_id', value);

  String? get reviewContent => getField<String>('review_content');
  set reviewContent(String? value) => setField<String>('review_content', value);

  String? get reviewRating => getField<String>('review_rating');
  set reviewRating(String? value) => setField<String>('review_rating', value);

  String? get reviewDate => getField<String>('review_date');
  set reviewDate(String? value) => setField<String>('review_date', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
