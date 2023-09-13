// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoreStruct extends FFFirebaseStruct {
  StoreStruct({
    String? name,
    AddresStruct? address,
    String? identification,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _address = address,
        _identification = identification,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "address" field.
  AddresStruct? _address;
  AddresStruct get address => _address ?? AddresStruct();
  set address(AddresStruct? val) => _address = val;
  void updateAddress(Function(AddresStruct) updateFn) =>
      updateFn(_address ??= AddresStruct());
  bool hasAddress() => _address != null;

  // "identification" field.
  String? _identification;
  String get identification => _identification ?? '';
  set identification(String? val) => _identification = val;
  bool hasIdentification() => _identification != null;

  static StoreStruct fromMap(Map<String, dynamic> data) => StoreStruct(
        name: data['name'] as String?,
        address: AddresStruct.maybeFromMap(data['address']),
        identification: data['identification'] as String?,
      );

  static StoreStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? StoreStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'address': _address?.toMap(),
        'identification': _identification,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.DataStruct,
        ),
        'identification': serializeParam(
          _identification,
          ParamType.String,
        ),
      }.withoutNulls;

  static StoreStruct fromSerializableMap(Map<String, dynamic> data) =>
      StoreStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        address: deserializeStructParam(
          data['address'],
          ParamType.DataStruct,
          false,
          structBuilder: AddresStruct.fromSerializableMap,
        ),
        identification: deserializeParam(
          data['identification'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StoreStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StoreStruct &&
        name == other.name &&
        address == other.address &&
        identification == other.identification;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, address, identification]);
}

StoreStruct createStoreStruct({
  String? name,
  AddresStruct? address,
  String? identification,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StoreStruct(
      name: name,
      address: address ?? (clearUnsetFields ? AddresStruct() : null),
      identification: identification,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StoreStruct? updateStoreStruct(
  StoreStruct? store, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    store
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStoreStructData(
  Map<String, dynamic> firestoreData,
  StoreStruct? store,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (store == null) {
    return;
  }
  if (store.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && store.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final storeData = getStoreFirestoreData(store, forFieldValue);
  final nestedData = storeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = store.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStoreFirestoreData(
  StoreStruct? store, [
  bool forFieldValue = false,
]) {
  if (store == null) {
    return {};
  }
  final firestoreData = mapToFirestore(store.toMap());

  // Handle nested data for "address" field.
  addAddresStructData(
    firestoreData,
    store.hasAddress() ? store.address : null,
    'address',
    forFieldValue,
  );

  // Add any Firestore field values
  store.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStoreListFirestoreData(
  List<StoreStruct>? stores,
) =>
    stores?.map((e) => getStoreFirestoreData(e, true)).toList() ?? [];
