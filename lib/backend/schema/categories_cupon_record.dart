import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriesCuponRecord extends FirestoreRecord {
  CategoriesCuponRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "category_name" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  bool hasCategoryName() => _categoryName != null;

  // "category_image_path" field.
  String? _categoryImagePath;
  String get categoryImagePath => _categoryImagePath ?? '';
  bool hasCategoryImagePath() => _categoryImagePath != null;

  // "category_image_path_blurhash" field.
  String? _categoryImagePathBlurhash;
  String get categoryImagePathBlurhash => _categoryImagePathBlurhash ?? '';
  bool hasCategoryImagePathBlurhash() => _categoryImagePathBlurhash != null;

  // "category_icon_color" field.
  String? _categoryIconColor;
  String get categoryIconColor => _categoryIconColor ?? '';
  bool hasCategoryIconColor() => _categoryIconColor != null;

  // "category_icon_white" field.
  String? _categoryIconWhite;
  String get categoryIconWhite => _categoryIconWhite ?? '';
  bool hasCategoryIconWhite() => _categoryIconWhite != null;

  // "category_active" field.
  bool? _categoryActive;
  bool get categoryActive => _categoryActive ?? false;
  bool hasCategoryActive() => _categoryActive != null;

  // "category_short_name" field.
  String? _categoryShortName;
  String get categoryShortName => _categoryShortName ?? '';
  bool hasCategoryShortName() => _categoryShortName != null;

  // "subcategories_cupon" field.
  List<DocumentReference>? _subcategoriesCupon;
  List<DocumentReference> get subcategoriesCupon =>
      _subcategoriesCupon ?? const [];
  bool hasSubcategoriesCupon() => _subcategoriesCupon != null;

  // "category_id" field.
  String? _categoryId;
  String get categoryId => _categoryId ?? '';
  bool hasCategoryId() => _categoryId != null;

  // "category_description" field.
  String? _categoryDescription;
  String get categoryDescription => _categoryDescription ?? '';
  bool hasCategoryDescription() => _categoryDescription != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _categoryName = snapshotData['category_name'] as String?;
    _categoryImagePath = snapshotData['category_image_path'] as String?;
    _categoryImagePathBlurhash =
        snapshotData['category_image_path_blurhash'] as String?;
    _categoryIconColor = snapshotData['category_icon_color'] as String?;
    _categoryIconWhite = snapshotData['category_icon_white'] as String?;
    _categoryActive = snapshotData['category_active'] as bool?;
    _categoryShortName = snapshotData['category_short_name'] as String?;
    _subcategoriesCupon = getDataList(snapshotData['subcategories_cupon']);
    _categoryId = snapshotData['category_id'] as String?;
    _categoryDescription = snapshotData['category_description'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categories_cupon');

  static Stream<CategoriesCuponRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriesCuponRecord.fromSnapshot(s));

  static Future<CategoriesCuponRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoriesCuponRecord.fromSnapshot(s));

  static CategoriesCuponRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriesCuponRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriesCuponRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriesCuponRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriesCuponRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriesCuponRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriesCuponRecordData({
  String? categoryName,
  String? categoryImagePath,
  String? categoryImagePathBlurhash,
  String? categoryIconColor,
  String? categoryIconWhite,
  bool? categoryActive,
  String? categoryShortName,
  String? categoryId,
  String? categoryDescription,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category_name': categoryName,
      'category_image_path': categoryImagePath,
      'category_image_path_blurhash': categoryImagePathBlurhash,
      'category_icon_color': categoryIconColor,
      'category_icon_white': categoryIconWhite,
      'category_active': categoryActive,
      'category_short_name': categoryShortName,
      'category_id': categoryId,
      'category_description': categoryDescription,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriesCuponRecordDocumentEquality
    implements Equality<CategoriesCuponRecord> {
  const CategoriesCuponRecordDocumentEquality();

  @override
  bool equals(CategoriesCuponRecord? e1, CategoriesCuponRecord? e2) {
    const listEquality = ListEquality();
    return e1?.categoryName == e2?.categoryName &&
        e1?.categoryImagePath == e2?.categoryImagePath &&
        e1?.categoryImagePathBlurhash == e2?.categoryImagePathBlurhash &&
        e1?.categoryIconColor == e2?.categoryIconColor &&
        e1?.categoryIconWhite == e2?.categoryIconWhite &&
        e1?.categoryActive == e2?.categoryActive &&
        e1?.categoryShortName == e2?.categoryShortName &&
        listEquality.equals(e1?.subcategoriesCupon, e2?.subcategoriesCupon) &&
        e1?.categoryId == e2?.categoryId &&
        e1?.categoryDescription == e2?.categoryDescription &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(CategoriesCuponRecord? e) => const ListEquality().hash([
        e?.categoryName,
        e?.categoryImagePath,
        e?.categoryImagePathBlurhash,
        e?.categoryIconColor,
        e?.categoryIconWhite,
        e?.categoryActive,
        e?.categoryShortName,
        e?.subcategoriesCupon,
        e?.categoryId,
        e?.categoryDescription,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is CategoriesCuponRecord;
}
