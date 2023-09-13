// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CouponStruct extends FFFirebaseStruct {
  CouponStruct({
    String? couponId,
    String? couponName,
    String? couponDescription,
    DateTime? couponExpirationDate,
    DateTime? couponCreationDate,
    DateTime? couponInitialDate,
    int? couponCuantityAvailable,
    int? couponCuantityRedeemed,
    bool? couponState,
    String? couponUnicode,
    String? couponImagePath,
    double? couponPrice,
    String? createdBy,
    String? couponCategory,
    List<ProductStruct>? products,
    String? subcategory,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _couponId = couponId,
        _couponName = couponName,
        _couponDescription = couponDescription,
        _couponExpirationDate = couponExpirationDate,
        _couponCreationDate = couponCreationDate,
        _couponInitialDate = couponInitialDate,
        _couponCuantityAvailable = couponCuantityAvailable,
        _couponCuantityRedeemed = couponCuantityRedeemed,
        _couponState = couponState,
        _couponUnicode = couponUnicode,
        _couponImagePath = couponImagePath,
        _couponPrice = couponPrice,
        _createdBy = createdBy,
        _couponCategory = couponCategory,
        _products = products,
        _subcategory = subcategory,
        super(firestoreUtilData);

  // "coupon_id" field.
  String? _couponId;
  String get couponId => _couponId ?? '';
  set couponId(String? val) => _couponId = val;
  bool hasCouponId() => _couponId != null;

  // "coupon_name" field.
  String? _couponName;
  String get couponName => _couponName ?? '';
  set couponName(String? val) => _couponName = val;
  bool hasCouponName() => _couponName != null;

  // "coupon_description" field.
  String? _couponDescription;
  String get couponDescription => _couponDescription ?? '';
  set couponDescription(String? val) => _couponDescription = val;
  bool hasCouponDescription() => _couponDescription != null;

  // "coupon_expiration_date" field.
  DateTime? _couponExpirationDate;
  DateTime? get couponExpirationDate => _couponExpirationDate;
  set couponExpirationDate(DateTime? val) => _couponExpirationDate = val;
  bool hasCouponExpirationDate() => _couponExpirationDate != null;

  // "coupon_creation_date" field.
  DateTime? _couponCreationDate;
  DateTime? get couponCreationDate => _couponCreationDate;
  set couponCreationDate(DateTime? val) => _couponCreationDate = val;
  bool hasCouponCreationDate() => _couponCreationDate != null;

  // "coupon_initial_date" field.
  DateTime? _couponInitialDate;
  DateTime? get couponInitialDate => _couponInitialDate;
  set couponInitialDate(DateTime? val) => _couponInitialDate = val;
  bool hasCouponInitialDate() => _couponInitialDate != null;

  // "coupon_cuantity_available" field.
  int? _couponCuantityAvailable;
  int get couponCuantityAvailable => _couponCuantityAvailable ?? 0;
  set couponCuantityAvailable(int? val) => _couponCuantityAvailable = val;
  void incrementCouponCuantityAvailable(int amount) =>
      _couponCuantityAvailable = couponCuantityAvailable + amount;
  bool hasCouponCuantityAvailable() => _couponCuantityAvailable != null;

  // "coupon_cuantity_redeemed" field.
  int? _couponCuantityRedeemed;
  int get couponCuantityRedeemed => _couponCuantityRedeemed ?? 0;
  set couponCuantityRedeemed(int? val) => _couponCuantityRedeemed = val;
  void incrementCouponCuantityRedeemed(int amount) =>
      _couponCuantityRedeemed = couponCuantityRedeemed + amount;
  bool hasCouponCuantityRedeemed() => _couponCuantityRedeemed != null;

  // "coupon_state" field.
  bool? _couponState;
  bool get couponState => _couponState ?? false;
  set couponState(bool? val) => _couponState = val;
  bool hasCouponState() => _couponState != null;

  // "coupon_unicode" field.
  String? _couponUnicode;
  String get couponUnicode => _couponUnicode ?? '';
  set couponUnicode(String? val) => _couponUnicode = val;
  bool hasCouponUnicode() => _couponUnicode != null;

  // "coupon_image_path" field.
  String? _couponImagePath;
  String get couponImagePath => _couponImagePath ?? '';
  set couponImagePath(String? val) => _couponImagePath = val;
  bool hasCouponImagePath() => _couponImagePath != null;

  // "coupon_price" field.
  double? _couponPrice;
  double get couponPrice => _couponPrice ?? 0.0;
  set couponPrice(double? val) => _couponPrice = val;
  void incrementCouponPrice(double amount) =>
      _couponPrice = couponPrice + amount;
  bool hasCouponPrice() => _couponPrice != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  set createdBy(String? val) => _createdBy = val;
  bool hasCreatedBy() => _createdBy != null;

  // "coupon_category" field.
  String? _couponCategory;
  String get couponCategory => _couponCategory ?? '';
  set couponCategory(String? val) => _couponCategory = val;
  bool hasCouponCategory() => _couponCategory != null;

  // "products" field.
  List<ProductStruct>? _products;
  List<ProductStruct> get products => _products ?? const [];
  set products(List<ProductStruct>? val) => _products = val;
  void updateProducts(Function(List<ProductStruct>) updateFn) =>
      updateFn(_products ??= []);
  bool hasProducts() => _products != null;

  // "subcategory" field.
  String? _subcategory;
  String get subcategory => _subcategory ?? '';
  set subcategory(String? val) => _subcategory = val;
  bool hasSubcategory() => _subcategory != null;

  static CouponStruct fromMap(Map<String, dynamic> data) => CouponStruct(
        couponId: data['coupon_id'] as String?,
        couponName: data['coupon_name'] as String?,
        couponDescription: data['coupon_description'] as String?,
        couponExpirationDate: data['coupon_expiration_date'] as DateTime?,
        couponCreationDate: data['coupon_creation_date'] as DateTime?,
        couponInitialDate: data['coupon_initial_date'] as DateTime?,
        couponCuantityAvailable:
            castToType<int>(data['coupon_cuantity_available']),
        couponCuantityRedeemed:
            castToType<int>(data['coupon_cuantity_redeemed']),
        couponState: data['coupon_state'] as bool?,
        couponUnicode: data['coupon_unicode'] as String?,
        couponImagePath: data['coupon_image_path'] as String?,
        couponPrice: castToType<double>(data['coupon_price']),
        createdBy: data['created_by'] as String?,
        couponCategory: data['coupon_category'] as String?,
        products: getStructList(
          data['products'],
          ProductStruct.fromMap,
        ),
        subcategory: data['subcategory'] as String?,
      );

  static CouponStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CouponStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'coupon_id': _couponId,
        'coupon_name': _couponName,
        'coupon_description': _couponDescription,
        'coupon_expiration_date': _couponExpirationDate,
        'coupon_creation_date': _couponCreationDate,
        'coupon_initial_date': _couponInitialDate,
        'coupon_cuantity_available': _couponCuantityAvailable,
        'coupon_cuantity_redeemed': _couponCuantityRedeemed,
        'coupon_state': _couponState,
        'coupon_unicode': _couponUnicode,
        'coupon_image_path': _couponImagePath,
        'coupon_price': _couponPrice,
        'created_by': _createdBy,
        'coupon_category': _couponCategory,
        'products': _products?.map((e) => e.toMap()).toList(),
        'subcategory': _subcategory,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'coupon_id': serializeParam(
          _couponId,
          ParamType.String,
        ),
        'coupon_name': serializeParam(
          _couponName,
          ParamType.String,
        ),
        'coupon_description': serializeParam(
          _couponDescription,
          ParamType.String,
        ),
        'coupon_expiration_date': serializeParam(
          _couponExpirationDate,
          ParamType.DateTime,
        ),
        'coupon_creation_date': serializeParam(
          _couponCreationDate,
          ParamType.DateTime,
        ),
        'coupon_initial_date': serializeParam(
          _couponInitialDate,
          ParamType.DateTime,
        ),
        'coupon_cuantity_available': serializeParam(
          _couponCuantityAvailable,
          ParamType.int,
        ),
        'coupon_cuantity_redeemed': serializeParam(
          _couponCuantityRedeemed,
          ParamType.int,
        ),
        'coupon_state': serializeParam(
          _couponState,
          ParamType.bool,
        ),
        'coupon_unicode': serializeParam(
          _couponUnicode,
          ParamType.String,
        ),
        'coupon_image_path': serializeParam(
          _couponImagePath,
          ParamType.String,
        ),
        'coupon_price': serializeParam(
          _couponPrice,
          ParamType.double,
        ),
        'created_by': serializeParam(
          _createdBy,
          ParamType.String,
        ),
        'coupon_category': serializeParam(
          _couponCategory,
          ParamType.String,
        ),
        'products': serializeParam(
          _products,
          ParamType.DataStruct,
          true,
        ),
        'subcategory': serializeParam(
          _subcategory,
          ParamType.String,
        ),
      }.withoutNulls;

  static CouponStruct fromSerializableMap(Map<String, dynamic> data) =>
      CouponStruct(
        couponId: deserializeParam(
          data['coupon_id'],
          ParamType.String,
          false,
        ),
        couponName: deserializeParam(
          data['coupon_name'],
          ParamType.String,
          false,
        ),
        couponDescription: deserializeParam(
          data['coupon_description'],
          ParamType.String,
          false,
        ),
        couponExpirationDate: deserializeParam(
          data['coupon_expiration_date'],
          ParamType.DateTime,
          false,
        ),
        couponCreationDate: deserializeParam(
          data['coupon_creation_date'],
          ParamType.DateTime,
          false,
        ),
        couponInitialDate: deserializeParam(
          data['coupon_initial_date'],
          ParamType.DateTime,
          false,
        ),
        couponCuantityAvailable: deserializeParam(
          data['coupon_cuantity_available'],
          ParamType.int,
          false,
        ),
        couponCuantityRedeemed: deserializeParam(
          data['coupon_cuantity_redeemed'],
          ParamType.int,
          false,
        ),
        couponState: deserializeParam(
          data['coupon_state'],
          ParamType.bool,
          false,
        ),
        couponUnicode: deserializeParam(
          data['coupon_unicode'],
          ParamType.String,
          false,
        ),
        couponImagePath: deserializeParam(
          data['coupon_image_path'],
          ParamType.String,
          false,
        ),
        couponPrice: deserializeParam(
          data['coupon_price'],
          ParamType.double,
          false,
        ),
        createdBy: deserializeParam(
          data['created_by'],
          ParamType.String,
          false,
        ),
        couponCategory: deserializeParam(
          data['coupon_category'],
          ParamType.String,
          false,
        ),
        products: deserializeStructParam<ProductStruct>(
          data['products'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductStruct.fromSerializableMap,
        ),
        subcategory: deserializeParam(
          data['subcategory'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CouponStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CouponStruct &&
        couponId == other.couponId &&
        couponName == other.couponName &&
        couponDescription == other.couponDescription &&
        couponExpirationDate == other.couponExpirationDate &&
        couponCreationDate == other.couponCreationDate &&
        couponInitialDate == other.couponInitialDate &&
        couponCuantityAvailable == other.couponCuantityAvailable &&
        couponCuantityRedeemed == other.couponCuantityRedeemed &&
        couponState == other.couponState &&
        couponUnicode == other.couponUnicode &&
        couponImagePath == other.couponImagePath &&
        couponPrice == other.couponPrice &&
        createdBy == other.createdBy &&
        couponCategory == other.couponCategory &&
        listEquality.equals(products, other.products) &&
        subcategory == other.subcategory;
  }

  @override
  int get hashCode => const ListEquality().hash([
        couponId,
        couponName,
        couponDescription,
        couponExpirationDate,
        couponCreationDate,
        couponInitialDate,
        couponCuantityAvailable,
        couponCuantityRedeemed,
        couponState,
        couponUnicode,
        couponImagePath,
        couponPrice,
        createdBy,
        couponCategory,
        products,
        subcategory
      ]);
}

CouponStruct createCouponStruct({
  String? couponId,
  String? couponName,
  String? couponDescription,
  DateTime? couponExpirationDate,
  DateTime? couponCreationDate,
  DateTime? couponInitialDate,
  int? couponCuantityAvailable,
  int? couponCuantityRedeemed,
  bool? couponState,
  String? couponUnicode,
  String? couponImagePath,
  double? couponPrice,
  String? createdBy,
  String? couponCategory,
  String? subcategory,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CouponStruct(
      couponId: couponId,
      couponName: couponName,
      couponDescription: couponDescription,
      couponExpirationDate: couponExpirationDate,
      couponCreationDate: couponCreationDate,
      couponInitialDate: couponInitialDate,
      couponCuantityAvailable: couponCuantityAvailable,
      couponCuantityRedeemed: couponCuantityRedeemed,
      couponState: couponState,
      couponUnicode: couponUnicode,
      couponImagePath: couponImagePath,
      couponPrice: couponPrice,
      createdBy: createdBy,
      couponCategory: couponCategory,
      subcategory: subcategory,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CouponStruct? updateCouponStruct(
  CouponStruct? coupon, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    coupon
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCouponStructData(
  Map<String, dynamic> firestoreData,
  CouponStruct? coupon,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (coupon == null) {
    return;
  }
  if (coupon.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && coupon.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final couponData = getCouponFirestoreData(coupon, forFieldValue);
  final nestedData = couponData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = coupon.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCouponFirestoreData(
  CouponStruct? coupon, [
  bool forFieldValue = false,
]) {
  if (coupon == null) {
    return {};
  }
  final firestoreData = mapToFirestore(coupon.toMap());

  // Add any Firestore field values
  coupon.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCouponListFirestoreData(
  List<CouponStruct>? coupons,
) =>
    coupons?.map((e) => getCouponFirestoreData(e, true)).toList() ?? [];
