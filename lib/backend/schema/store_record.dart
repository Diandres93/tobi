import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoreRecord extends FirestoreRecord {
  StoreRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "store" field.
  StoreStruct? _store;
  StoreStruct get store => _store ?? StoreStruct();
  bool hasStore() => _store != null;

  // "address" field.
  AddresStruct? _address;
  AddresStruct get address => _address ?? AddresStruct();
  bool hasAddress() => _address != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _store = StoreStruct.maybeFromMap(snapshotData['store']);
    _address = AddresStruct.maybeFromMap(snapshotData['address']);
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('store');

  static Stream<StoreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StoreRecord.fromSnapshot(s));

  static Future<StoreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StoreRecord.fromSnapshot(s));

  static StoreRecord fromSnapshot(DocumentSnapshot snapshot) => StoreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StoreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StoreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StoreRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StoreRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStoreRecordData({
  StoreStruct? store,
  AddresStruct? address,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'store': StoreStruct().toMap(),
      'address': AddresStruct().toMap(),
      'created_at': createdAt,
    }.withoutNulls,
  );

  // Handle nested data for "store" field.
  addStoreStructData(firestoreData, store, 'store');

  // Handle nested data for "address" field.
  addAddresStructData(firestoreData, address, 'address');

  return firestoreData;
}

class StoreRecordDocumentEquality implements Equality<StoreRecord> {
  const StoreRecordDocumentEquality();

  @override
  bool equals(StoreRecord? e1, StoreRecord? e2) {
    return e1?.store == e2?.store &&
        e1?.address == e2?.address &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(StoreRecord? e) =>
      const ListEquality().hash([e?.store, e?.address, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is StoreRecord;
}
