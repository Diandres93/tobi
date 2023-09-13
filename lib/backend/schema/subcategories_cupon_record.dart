import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubcategoriesCuponRecord extends FirestoreRecord {
  SubcategoriesCuponRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "subcategory_name" field.
  String? _subcategoryName;
  String get subcategoryName => _subcategoryName ?? '';
  bool hasSubcategoryName() => _subcategoryName != null;

  // "cupons" field.
  List<DocumentReference>? _cupons;
  List<DocumentReference> get cupons => _cupons ?? const [];
  bool hasCupons() => _cupons != null;

  // "subcategory_id" field.
  String? _subcategoryId;
  String get subcategoryId => _subcategoryId ?? '';
  bool hasSubcategoryId() => _subcategoryId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "subcategory_active" field.
  bool? _subcategoryActive;
  bool get subcategoryActive => _subcategoryActive ?? false;
  bool hasSubcategoryActive() => _subcategoryActive != null;

  // "subcategory_image_path" field.
  String? _subcategoryImagePath;
  String get subcategoryImagePath => _subcategoryImagePath ?? '';
  bool hasSubcategoryImagePath() => _subcategoryImagePath != null;

  // "image_blur_subcategory" field.
  String? _imageBlurSubcategory;
  String get imageBlurSubcategory => _imageBlurSubcategory ?? '';
  bool hasImageBlurSubcategory() => _imageBlurSubcategory != null;

  // "subcategory_description" field.
  String? _subcategoryDescription;
  String get subcategoryDescription => _subcategoryDescription ?? '';
  bool hasSubcategoryDescription() => _subcategoryDescription != null;

  void _initializeFields() {
    _subcategoryName = snapshotData['subcategory_name'] as String?;
    _cupons = getDataList(snapshotData['cupons']);
    _subcategoryId = snapshotData['subcategory_id'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _subcategoryActive = snapshotData['subcategory_active'] as bool?;
    _subcategoryImagePath = snapshotData['subcategory_image_path'] as String?;
    _imageBlurSubcategory = snapshotData['image_blur_subcategory'] as String?;
    _subcategoryDescription =
        snapshotData['subcategory_description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subcategories_cupon');

  static Stream<SubcategoriesCuponRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubcategoriesCuponRecord.fromSnapshot(s));

  static Future<SubcategoriesCuponRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SubcategoriesCuponRecord.fromSnapshot(s));

  static SubcategoriesCuponRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubcategoriesCuponRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubcategoriesCuponRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubcategoriesCuponRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubcategoriesCuponRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubcategoriesCuponRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubcategoriesCuponRecordData({
  String? subcategoryName,
  String? subcategoryId,
  DateTime? createdAt,
  bool? subcategoryActive,
  String? subcategoryImagePath,
  String? imageBlurSubcategory,
  String? subcategoryDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'subcategory_name': subcategoryName,
      'subcategory_id': subcategoryId,
      'created_at': createdAt,
      'subcategory_active': subcategoryActive,
      'subcategory_image_path': subcategoryImagePath,
      'image_blur_subcategory': imageBlurSubcategory,
      'subcategory_description': subcategoryDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubcategoriesCuponRecordDocumentEquality
    implements Equality<SubcategoriesCuponRecord> {
  const SubcategoriesCuponRecordDocumentEquality();

  @override
  bool equals(SubcategoriesCuponRecord? e1, SubcategoriesCuponRecord? e2) {
    const listEquality = ListEquality();
    return e1?.subcategoryName == e2?.subcategoryName &&
        listEquality.equals(e1?.cupons, e2?.cupons) &&
        e1?.subcategoryId == e2?.subcategoryId &&
        e1?.createdAt == e2?.createdAt &&
        e1?.subcategoryActive == e2?.subcategoryActive &&
        e1?.subcategoryImagePath == e2?.subcategoryImagePath &&
        e1?.imageBlurSubcategory == e2?.imageBlurSubcategory &&
        e1?.subcategoryDescription == e2?.subcategoryDescription;
  }

  @override
  int hash(SubcategoriesCuponRecord? e) => const ListEquality().hash([
        e?.subcategoryName,
        e?.cupons,
        e?.subcategoryId,
        e?.createdAt,
        e?.subcategoryActive,
        e?.subcategoryImagePath,
        e?.imageBlurSubcategory,
        e?.subcategoryDescription
      ]);

  @override
  bool isValidKey(Object? o) => o is SubcategoriesCuponRecord;
}
