// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserLocalStruct extends FFFirebaseStruct {
  UserLocalStruct({
    String? userRol,
    bool? seller,
    String? userName,
    String? nameUser,
    String? iduser,
    List<CouponStruct>? userFavorite,
    bool? promotora,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userRol = userRol,
        _seller = seller,
        _userName = userName,
        _nameUser = nameUser,
        _iduser = iduser,
        _userFavorite = userFavorite,
        _promotora = promotora,
        super(firestoreUtilData);

  // "user_rol" field.
  String? _userRol;
  String get userRol => _userRol ?? '';
  set userRol(String? val) => _userRol = val;
  bool hasUserRol() => _userRol != null;

  // "seller" field.
  bool? _seller;
  bool get seller => _seller ?? false;
  set seller(bool? val) => _seller = val;
  bool hasSeller() => _seller != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;
  bool hasUserName() => _userName != null;

  // "nameUser" field.
  String? _nameUser;
  String get nameUser => _nameUser ?? '';
  set nameUser(String? val) => _nameUser = val;
  bool hasNameUser() => _nameUser != null;

  // "iduser" field.
  String? _iduser;
  String get iduser => _iduser ?? '';
  set iduser(String? val) => _iduser = val;
  bool hasIduser() => _iduser != null;

  // "userFavorite" field.
  List<CouponStruct>? _userFavorite;
  List<CouponStruct> get userFavorite => _userFavorite ?? const [];
  set userFavorite(List<CouponStruct>? val) => _userFavorite = val;
  void updateUserFavorite(Function(List<CouponStruct>) updateFn) =>
      updateFn(_userFavorite ??= []);
  bool hasUserFavorite() => _userFavorite != null;

  // "promotora" field.
  bool? _promotora;
  bool get promotora => _promotora ?? false;
  set promotora(bool? val) => _promotora = val;
  bool hasPromotora() => _promotora != null;

  static UserLocalStruct fromMap(Map<String, dynamic> data) => UserLocalStruct(
        userRol: data['user_rol'] as String?,
        seller: data['seller'] as bool?,
        userName: data['userName'] as String?,
        nameUser: data['nameUser'] as String?,
        iduser: data['iduser'] as String?,
        userFavorite: getStructList(
          data['userFavorite'],
          CouponStruct.fromMap,
        ),
        promotora: data['promotora'] as bool?,
      );

  static UserLocalStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserLocalStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'user_rol': _userRol,
        'seller': _seller,
        'userName': _userName,
        'nameUser': _nameUser,
        'iduser': _iduser,
        'userFavorite': _userFavorite?.map((e) => e.toMap()).toList(),
        'promotora': _promotora,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user_rol': serializeParam(
          _userRol,
          ParamType.String,
        ),
        'seller': serializeParam(
          _seller,
          ParamType.bool,
        ),
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'nameUser': serializeParam(
          _nameUser,
          ParamType.String,
        ),
        'iduser': serializeParam(
          _iduser,
          ParamType.String,
        ),
        'userFavorite': serializeParam(
          _userFavorite,
          ParamType.DataStruct,
          true,
        ),
        'promotora': serializeParam(
          _promotora,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UserLocalStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserLocalStruct(
        userRol: deserializeParam(
          data['user_rol'],
          ParamType.String,
          false,
        ),
        seller: deserializeParam(
          data['seller'],
          ParamType.bool,
          false,
        ),
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        nameUser: deserializeParam(
          data['nameUser'],
          ParamType.String,
          false,
        ),
        iduser: deserializeParam(
          data['iduser'],
          ParamType.String,
          false,
        ),
        userFavorite: deserializeStructParam<CouponStruct>(
          data['userFavorite'],
          ParamType.DataStruct,
          true,
          structBuilder: CouponStruct.fromSerializableMap,
        ),
        promotora: deserializeParam(
          data['promotora'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UserLocalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserLocalStruct &&
        userRol == other.userRol &&
        seller == other.seller &&
        userName == other.userName &&
        nameUser == other.nameUser &&
        iduser == other.iduser &&
        listEquality.equals(userFavorite, other.userFavorite) &&
        promotora == other.promotora;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [userRol, seller, userName, nameUser, iduser, userFavorite, promotora]);
}

UserLocalStruct createUserLocalStruct({
  String? userRol,
  bool? seller,
  String? userName,
  String? nameUser,
  String? iduser,
  bool? promotora,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserLocalStruct(
      userRol: userRol,
      seller: seller,
      userName: userName,
      nameUser: nameUser,
      iduser: iduser,
      promotora: promotora,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserLocalStruct? updateUserLocalStruct(
  UserLocalStruct? userLocal, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userLocal
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserLocalStructData(
  Map<String, dynamic> firestoreData,
  UserLocalStruct? userLocal,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userLocal == null) {
    return;
  }
  if (userLocal.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userLocal.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userLocalData = getUserLocalFirestoreData(userLocal, forFieldValue);
  final nestedData = userLocalData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userLocal.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserLocalFirestoreData(
  UserLocalStruct? userLocal, [
  bool forFieldValue = false,
]) {
  if (userLocal == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userLocal.toMap());

  // Add any Firestore field values
  userLocal.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserLocalListFirestoreData(
  List<UserLocalStruct>? userLocals,
) =>
    userLocals?.map((e) => getUserLocalFirestoreData(e, true)).toList() ?? [];
