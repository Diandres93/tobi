import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "seller" field.
  bool? _seller;
  bool get seller => _seller ?? false;
  bool hasSeller() => _seller != null;

  // "client" field.
  bool? _client;
  bool get client => _client ?? false;
  bool hasClient() => _client != null;

  // "promotore" field.
  bool? _promotore;
  bool get promotore => _promotore ?? false;
  bool hasPromotore() => _promotore != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "cupons_sold" field.
  List<DocumentReference>? _cuponsSold;
  List<DocumentReference> get cuponsSold => _cuponsSold ?? const [];
  bool hasCuponsSold() => _cuponsSold != null;

  // "cupons_created" field.
  List<DocumentReference>? _cuponsCreated;
  List<DocumentReference> get cuponsCreated => _cuponsCreated ?? const [];
  bool hasCuponsCreated() => _cuponsCreated != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _seller = snapshotData['seller'] as bool?;
    _client = snapshotData['client'] as bool?;
    _promotore = snapshotData['promotore'] as bool?;
    _lastname = snapshotData['lastname'] as String?;
    _cuponsSold = getDataList(snapshotData['cupons_sold']);
    _cuponsCreated = getDataList(snapshotData['cupons_created']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? seller,
  bool? client,
  bool? promotore,
  String? lastname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'seller': seller,
      'client': client,
      'promotore': promotore,
      'lastname': lastname,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.seller == e2?.seller &&
        e1?.client == e2?.client &&
        e1?.promotore == e2?.promotore &&
        e1?.lastname == e2?.lastname &&
        listEquality.equals(e1?.cuponsSold, e2?.cuponsSold) &&
        listEquality.equals(e1?.cuponsCreated, e2?.cuponsCreated);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.seller,
        e?.client,
        e?.promotore,
        e?.lastname,
        e?.cuponsSold,
        e?.cuponsCreated
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
