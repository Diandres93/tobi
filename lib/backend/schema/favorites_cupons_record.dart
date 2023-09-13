import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoritesCuponsRecord extends FirestoreRecord {
  FavoritesCuponsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cupons" field.
  List<DocumentReference>? _cupons;
  List<DocumentReference> get cupons => _cupons ?? const [];
  bool hasCupons() => _cupons != null;

  // "user_creator" field.
  DocumentReference? _userCreator;
  DocumentReference? get userCreator => _userCreator;
  bool hasUserCreator() => _userCreator != null;

  // "favorites_id" field.
  String? _favoritesId;
  String get favoritesId => _favoritesId ?? '';
  bool hasFavoritesId() => _favoritesId != null;

  void _initializeFields() {
    _cupons = getDataList(snapshotData['cupons']);
    _userCreator = snapshotData['user_creator'] as DocumentReference?;
    _favoritesId = snapshotData['favorites_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favorites_cupons');

  static Stream<FavoritesCuponsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavoritesCuponsRecord.fromSnapshot(s));

  static Future<FavoritesCuponsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FavoritesCuponsRecord.fromSnapshot(s));

  static FavoritesCuponsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavoritesCuponsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavoritesCuponsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavoritesCuponsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavoritesCuponsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavoritesCuponsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFavoritesCuponsRecordData({
  DocumentReference? userCreator,
  String? favoritesId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_creator': userCreator,
      'favorites_id': favoritesId,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavoritesCuponsRecordDocumentEquality
    implements Equality<FavoritesCuponsRecord> {
  const FavoritesCuponsRecordDocumentEquality();

  @override
  bool equals(FavoritesCuponsRecord? e1, FavoritesCuponsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.cupons, e2?.cupons) &&
        e1?.userCreator == e2?.userCreator &&
        e1?.favoritesId == e2?.favoritesId;
  }

  @override
  int hash(FavoritesCuponsRecord? e) =>
      const ListEquality().hash([e?.cupons, e?.userCreator, e?.favoritesId]);

  @override
  bool isValidKey(Object? o) => o is FavoritesCuponsRecord;
}
