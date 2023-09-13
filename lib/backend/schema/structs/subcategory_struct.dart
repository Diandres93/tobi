// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubcategoryStruct extends FFFirebaseStruct {
  SubcategoryStruct({
    String? subcategoryName,
    String? subcategoryId,
    String? subcagetoryImage,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _subcategoryName = subcategoryName,
        _subcategoryId = subcategoryId,
        _subcagetoryImage = subcagetoryImage,
        super(firestoreUtilData);

  // "subcategory_name" field.
  String? _subcategoryName;
  String get subcategoryName => _subcategoryName ?? '';
  set subcategoryName(String? val) => _subcategoryName = val;
  bool hasSubcategoryName() => _subcategoryName != null;

  // "subcategory_id" field.
  String? _subcategoryId;
  String get subcategoryId => _subcategoryId ?? '';
  set subcategoryId(String? val) => _subcategoryId = val;
  bool hasSubcategoryId() => _subcategoryId != null;

  // "subcagetory_image" field.
  String? _subcagetoryImage;
  String get subcagetoryImage => _subcagetoryImage ?? '';
  set subcagetoryImage(String? val) => _subcagetoryImage = val;
  bool hasSubcagetoryImage() => _subcagetoryImage != null;

  static SubcategoryStruct fromMap(Map<String, dynamic> data) =>
      SubcategoryStruct(
        subcategoryName: data['subcategory_name'] as String?,
        subcategoryId: data['subcategory_id'] as String?,
        subcagetoryImage: data['subcagetory_image'] as String?,
      );

  static SubcategoryStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SubcategoryStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'subcategory_name': _subcategoryName,
        'subcategory_id': _subcategoryId,
        'subcagetory_image': _subcagetoryImage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'subcategory_name': serializeParam(
          _subcategoryName,
          ParamType.String,
        ),
        'subcategory_id': serializeParam(
          _subcategoryId,
          ParamType.String,
        ),
        'subcagetory_image': serializeParam(
          _subcagetoryImage,
          ParamType.String,
        ),
      }.withoutNulls;

  static SubcategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      SubcategoryStruct(
        subcategoryName: deserializeParam(
          data['subcategory_name'],
          ParamType.String,
          false,
        ),
        subcategoryId: deserializeParam(
          data['subcategory_id'],
          ParamType.String,
          false,
        ),
        subcagetoryImage: deserializeParam(
          data['subcagetory_image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SubcategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SubcategoryStruct &&
        subcategoryName == other.subcategoryName &&
        subcategoryId == other.subcategoryId &&
        subcagetoryImage == other.subcagetoryImage;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([subcategoryName, subcategoryId, subcagetoryImage]);
}

SubcategoryStruct createSubcategoryStruct({
  String? subcategoryName,
  String? subcategoryId,
  String? subcagetoryImage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SubcategoryStruct(
      subcategoryName: subcategoryName,
      subcategoryId: subcategoryId,
      subcagetoryImage: subcagetoryImage,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SubcategoryStruct? updateSubcategoryStruct(
  SubcategoryStruct? subcategory, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    subcategory
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSubcategoryStructData(
  Map<String, dynamic> firestoreData,
  SubcategoryStruct? subcategory,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (subcategory == null) {
    return;
  }
  if (subcategory.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && subcategory.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final subcategoryData =
      getSubcategoryFirestoreData(subcategory, forFieldValue);
  final nestedData =
      subcategoryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = subcategory.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSubcategoryFirestoreData(
  SubcategoryStruct? subcategory, [
  bool forFieldValue = false,
]) {
  if (subcategory == null) {
    return {};
  }
  final firestoreData = mapToFirestore(subcategory.toMap());

  // Add any Firestore field values
  subcategory.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSubcategoryListFirestoreData(
  List<SubcategoryStruct>? subcategorys,
) =>
    subcategorys?.map((e) => getSubcategoryFirestoreData(e, true)).toList() ??
    [];
