// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuponqrStruct extends FFFirebaseStruct {
  CuponqrStruct({
    String? unicode,
    String? userbuyer,
    String? cuponid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _unicode = unicode,
        _userbuyer = userbuyer,
        _cuponid = cuponid,
        super(firestoreUtilData);

  // "unicode" field.
  String? _unicode;
  String get unicode => _unicode ?? '';
  set unicode(String? val) => _unicode = val;
  bool hasUnicode() => _unicode != null;

  // "userbuyer" field.
  String? _userbuyer;
  String get userbuyer => _userbuyer ?? '';
  set userbuyer(String? val) => _userbuyer = val;
  bool hasUserbuyer() => _userbuyer != null;

  // "cuponid" field.
  String? _cuponid;
  String get cuponid => _cuponid ?? '';
  set cuponid(String? val) => _cuponid = val;
  bool hasCuponid() => _cuponid != null;

  static CuponqrStruct fromMap(Map<String, dynamic> data) => CuponqrStruct(
        unicode: data['unicode'] as String?,
        userbuyer: data['userbuyer'] as String?,
        cuponid: data['cuponid'] as String?,
      );

  static CuponqrStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CuponqrStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'unicode': _unicode,
        'userbuyer': _userbuyer,
        'cuponid': _cuponid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'unicode': serializeParam(
          _unicode,
          ParamType.String,
        ),
        'userbuyer': serializeParam(
          _userbuyer,
          ParamType.String,
        ),
        'cuponid': serializeParam(
          _cuponid,
          ParamType.String,
        ),
      }.withoutNulls;

  static CuponqrStruct fromSerializableMap(Map<String, dynamic> data) =>
      CuponqrStruct(
        unicode: deserializeParam(
          data['unicode'],
          ParamType.String,
          false,
        ),
        userbuyer: deserializeParam(
          data['userbuyer'],
          ParamType.String,
          false,
        ),
        cuponid: deserializeParam(
          data['cuponid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CuponqrStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CuponqrStruct &&
        unicode == other.unicode &&
        userbuyer == other.userbuyer &&
        cuponid == other.cuponid;
  }

  @override
  int get hashCode => const ListEquality().hash([unicode, userbuyer, cuponid]);
}

CuponqrStruct createCuponqrStruct({
  String? unicode,
  String? userbuyer,
  String? cuponid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CuponqrStruct(
      unicode: unicode,
      userbuyer: userbuyer,
      cuponid: cuponid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CuponqrStruct? updateCuponqrStruct(
  CuponqrStruct? cuponqr, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cuponqr
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCuponqrStructData(
  Map<String, dynamic> firestoreData,
  CuponqrStruct? cuponqr,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cuponqr == null) {
    return;
  }
  if (cuponqr.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cuponqr.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cuponqrData = getCuponqrFirestoreData(cuponqr, forFieldValue);
  final nestedData = cuponqrData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cuponqr.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCuponqrFirestoreData(
  CuponqrStruct? cuponqr, [
  bool forFieldValue = false,
]) {
  if (cuponqr == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cuponqr.toMap());

  // Add any Firestore field values
  cuponqr.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCuponqrListFirestoreData(
  List<CuponqrStruct>? cuponqrs,
) =>
    cuponqrs?.map((e) => getCuponqrFirestoreData(e, true)).toList() ?? [];
