// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddresStruct extends FFFirebaseStruct {
  AddresStruct({
    String? name,
    String? street,
    int? avenue,
    LatLng? ubication,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _street = street,
        _avenue = avenue,
        _ubication = ubication,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "street" field.
  String? _street;
  String get street => _street ?? '';
  set street(String? val) => _street = val;
  bool hasStreet() => _street != null;

  // "avenue" field.
  int? _avenue;
  int get avenue => _avenue ?? 0;
  set avenue(int? val) => _avenue = val;
  void incrementAvenue(int amount) => _avenue = avenue + amount;
  bool hasAvenue() => _avenue != null;

  // "ubication" field.
  LatLng? _ubication;
  LatLng? get ubication => _ubication;
  set ubication(LatLng? val) => _ubication = val;
  bool hasUbication() => _ubication != null;

  static AddresStruct fromMap(Map<String, dynamic> data) => AddresStruct(
        name: data['name'] as String?,
        street: data['street'] as String?,
        avenue: castToType<int>(data['avenue']),
        ubication: data['ubication'] as LatLng?,
      );

  static AddresStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? AddresStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'street': _street,
        'avenue': _avenue,
        'ubication': _ubication,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'street': serializeParam(
          _street,
          ParamType.String,
        ),
        'avenue': serializeParam(
          _avenue,
          ParamType.int,
        ),
        'ubication': serializeParam(
          _ubication,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static AddresStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddresStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        street: deserializeParam(
          data['street'],
          ParamType.String,
          false,
        ),
        avenue: deserializeParam(
          data['avenue'],
          ParamType.int,
          false,
        ),
        ubication: deserializeParam(
          data['ubication'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'AddresStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddresStruct &&
        name == other.name &&
        street == other.street &&
        avenue == other.avenue &&
        ubication == other.ubication;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, street, avenue, ubication]);
}

AddresStruct createAddresStruct({
  String? name,
  String? street,
  int? avenue,
  LatLng? ubication,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddresStruct(
      name: name,
      street: street,
      avenue: avenue,
      ubication: ubication,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddresStruct? updateAddresStruct(
  AddresStruct? addres, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    addres
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddresStructData(
  Map<String, dynamic> firestoreData,
  AddresStruct? addres,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (addres == null) {
    return;
  }
  if (addres.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && addres.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addresData = getAddresFirestoreData(addres, forFieldValue);
  final nestedData = addresData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = addres.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddresFirestoreData(
  AddresStruct? addres, [
  bool forFieldValue = false,
]) {
  if (addres == null) {
    return {};
  }
  final firestoreData = mapToFirestore(addres.toMap());

  // Add any Firestore field values
  addres.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddresListFirestoreData(
  List<AddresStruct>? address,
) =>
    address?.map((e) => getAddresFirestoreData(e, true)).toList() ?? [];
