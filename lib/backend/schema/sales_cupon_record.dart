import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SalesCuponRecord extends FirestoreRecord {
  SalesCuponRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "user_buyer" field.
  DocumentReference? _userBuyer;
  DocumentReference? get userBuyer => _userBuyer;
  bool hasUserBuyer() => _userBuyer != null;

  // "user_creator" field.
  DocumentReference? _userCreator;
  DocumentReference? get userCreator => _userCreator;
  bool hasUserCreator() => _userCreator != null;

  // "user_seller" field.
  DocumentReference? _userSeller;
  DocumentReference? get userSeller => _userSeller;
  bool hasUserSeller() => _userSeller != null;

  // "state" field.
  bool? _state;
  bool get state => _state ?? false;
  bool hasState() => _state != null;

  // "cost" field.
  double? _cost;
  double get cost => _cost ?? 0.0;
  bool hasCost() => _cost != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _userBuyer = snapshotData['user_buyer'] as DocumentReference?;
    _userCreator = snapshotData['user_creator'] as DocumentReference?;
    _userSeller = snapshotData['user_seller'] as DocumentReference?;
    _state = snapshotData['state'] as bool?;
    _cost = castToType<double>(snapshotData['cost']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sales_cupon');

  static Stream<SalesCuponRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SalesCuponRecord.fromSnapshot(s));

  static Future<SalesCuponRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SalesCuponRecord.fromSnapshot(s));

  static SalesCuponRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SalesCuponRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SalesCuponRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SalesCuponRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SalesCuponRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SalesCuponRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSalesCuponRecordData({
  DateTime? createdAt,
  DocumentReference? userBuyer,
  DocumentReference? userCreator,
  DocumentReference? userSeller,
  bool? state,
  double? cost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'user_buyer': userBuyer,
      'user_creator': userCreator,
      'user_seller': userSeller,
      'state': state,
      'cost': cost,
    }.withoutNulls,
  );

  return firestoreData;
}

class SalesCuponRecordDocumentEquality implements Equality<SalesCuponRecord> {
  const SalesCuponRecordDocumentEquality();

  @override
  bool equals(SalesCuponRecord? e1, SalesCuponRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.userBuyer == e2?.userBuyer &&
        e1?.userCreator == e2?.userCreator &&
        e1?.userSeller == e2?.userSeller &&
        e1?.state == e2?.state &&
        e1?.cost == e2?.cost;
  }

  @override
  int hash(SalesCuponRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.userBuyer,
        e?.userCreator,
        e?.userSeller,
        e?.state,
        e?.cost
      ]);

  @override
  bool isValidKey(Object? o) => o is SalesCuponRecord;
}
