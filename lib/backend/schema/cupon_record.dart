import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuponRecord extends FirestoreRecord {
  CuponRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cupon_name" field.
  String? _cuponName;
  String get cuponName => _cuponName ?? '';
  bool hasCuponName() => _cuponName != null;

  // "cupon_description" field.
  String? _cuponDescription;
  String get cuponDescription => _cuponDescription ?? '';
  bool hasCuponDescription() => _cuponDescription != null;

  // "cupon_price" field.
  double? _cuponPrice;
  double get cuponPrice => _cuponPrice ?? 0.0;
  bool hasCuponPrice() => _cuponPrice != null;

  // "cupon_expiration_date" field.
  DateTime? _cuponExpirationDate;
  DateTime? get cuponExpirationDate => _cuponExpirationDate;
  bool hasCuponExpirationDate() => _cuponExpirationDate != null;

  // "cupon_initial_date" field.
  DateTime? _cuponInitialDate;
  DateTime? get cuponInitialDate => _cuponInitialDate;
  bool hasCuponInitialDate() => _cuponInitialDate != null;

  // "cupon_creation_date" field.
  DateTime? _cuponCreationDate;
  DateTime? get cuponCreationDate => _cuponCreationDate;
  bool hasCuponCreationDate() => _cuponCreationDate != null;

  // "category" field.
  DocumentReference? _category;
  DocumentReference? get category => _category;
  bool hasCategory() => _category != null;

  // "subcategory" field.
  DocumentReference? _subcategory;
  DocumentReference? get subcategory => _subcategory;
  bool hasSubcategory() => _subcategory != null;

  // "cupon_cuantity_available" field.
  int? _cuponCuantityAvailable;
  int get cuponCuantityAvailable => _cuponCuantityAvailable ?? 0;
  bool hasCuponCuantityAvailable() => _cuponCuantityAvailable != null;

  // "cupon_cuantity_redeemed" field.
  int? _cuponCuantityRedeemed;
  int get cuponCuantityRedeemed => _cuponCuantityRedeemed ?? 0;
  bool hasCuponCuantityRedeemed() => _cuponCuantityRedeemed != null;

  // "cupon_state" field.
  bool? _cuponState;
  bool get cuponState => _cuponState ?? false;
  bool hasCuponState() => _cuponState != null;

  // "cupon_unicode" field.
  String? _cuponUnicode;
  String get cuponUnicode => _cuponUnicode ?? '';
  bool hasCuponUnicode() => _cuponUnicode != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "cupon_id" field.
  String? _cuponId;
  String get cuponId => _cuponId ?? '';
  bool hasCuponId() => _cuponId != null;

  void _initializeFields() {
    _cuponName = snapshotData['cupon_name'] as String?;
    _cuponDescription = snapshotData['cupon_description'] as String?;
    _cuponPrice = castToType<double>(snapshotData['cupon_price']);
    _cuponExpirationDate = snapshotData['cupon_expiration_date'] as DateTime?;
    _cuponInitialDate = snapshotData['cupon_initial_date'] as DateTime?;
    _cuponCreationDate = snapshotData['cupon_creation_date'] as DateTime?;
    _category = snapshotData['category'] as DocumentReference?;
    _subcategory = snapshotData['subcategory'] as DocumentReference?;
    _cuponCuantityAvailable =
        castToType<int>(snapshotData['cupon_cuantity_available']);
    _cuponCuantityRedeemed =
        castToType<int>(snapshotData['cupon_cuantity_redeemed']);
    _cuponState = snapshotData['cupon_state'] as bool?;
    _cuponUnicode = snapshotData['cupon_unicode'] as String?;
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _cuponId = snapshotData['cupon_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cupon');

  static Stream<CuponRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CuponRecord.fromSnapshot(s));

  static Future<CuponRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CuponRecord.fromSnapshot(s));

  static CuponRecord fromSnapshot(DocumentSnapshot snapshot) => CuponRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CuponRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CuponRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CuponRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CuponRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCuponRecordData({
  String? cuponName,
  String? cuponDescription,
  double? cuponPrice,
  DateTime? cuponExpirationDate,
  DateTime? cuponInitialDate,
  DateTime? cuponCreationDate,
  DocumentReference? category,
  DocumentReference? subcategory,
  int? cuponCuantityAvailable,
  int? cuponCuantityRedeemed,
  bool? cuponState,
  String? cuponUnicode,
  DocumentReference? createdBy,
  String? cuponId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cupon_name': cuponName,
      'cupon_description': cuponDescription,
      'cupon_price': cuponPrice,
      'cupon_expiration_date': cuponExpirationDate,
      'cupon_initial_date': cuponInitialDate,
      'cupon_creation_date': cuponCreationDate,
      'category': category,
      'subcategory': subcategory,
      'cupon_cuantity_available': cuponCuantityAvailable,
      'cupon_cuantity_redeemed': cuponCuantityRedeemed,
      'cupon_state': cuponState,
      'cupon_unicode': cuponUnicode,
      'created_by': createdBy,
      'cupon_id': cuponId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CuponRecordDocumentEquality implements Equality<CuponRecord> {
  const CuponRecordDocumentEquality();

  @override
  bool equals(CuponRecord? e1, CuponRecord? e2) {
    return e1?.cuponName == e2?.cuponName &&
        e1?.cuponDescription == e2?.cuponDescription &&
        e1?.cuponPrice == e2?.cuponPrice &&
        e1?.cuponExpirationDate == e2?.cuponExpirationDate &&
        e1?.cuponInitialDate == e2?.cuponInitialDate &&
        e1?.cuponCreationDate == e2?.cuponCreationDate &&
        e1?.category == e2?.category &&
        e1?.subcategory == e2?.subcategory &&
        e1?.cuponCuantityAvailable == e2?.cuponCuantityAvailable &&
        e1?.cuponCuantityRedeemed == e2?.cuponCuantityRedeemed &&
        e1?.cuponState == e2?.cuponState &&
        e1?.cuponUnicode == e2?.cuponUnicode &&
        e1?.createdBy == e2?.createdBy &&
        e1?.cuponId == e2?.cuponId;
  }

  @override
  int hash(CuponRecord? e) => const ListEquality().hash([
        e?.cuponName,
        e?.cuponDescription,
        e?.cuponPrice,
        e?.cuponExpirationDate,
        e?.cuponInitialDate,
        e?.cuponCreationDate,
        e?.category,
        e?.subcategory,
        e?.cuponCuantityAvailable,
        e?.cuponCuantityRedeemed,
        e?.cuponState,
        e?.cuponUnicode,
        e?.createdBy,
        e?.cuponId
      ]);

  @override
  bool isValidKey(Object? o) => o is CuponRecord;
}
