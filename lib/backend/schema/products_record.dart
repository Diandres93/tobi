import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "product_image" field.
  String? _productImage;
  String get productImage => _productImage ?? '';
  bool hasProductImage() => _productImage != null;

  // "product_image_blurhash" field.
  String? _productImageBlurhash;
  String get productImageBlurhash => _productImageBlurhash ?? '';
  bool hasProductImageBlurhash() => _productImageBlurhash != null;

  // "product_description" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  bool hasProductDescription() => _productDescription != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _productImage = snapshotData['product_image'] as String?;
    _productImageBlurhash = snapshotData['product_image_blurhash'] as String?;
    _productDescription = snapshotData['product_description'] as String?;
    _productId = snapshotData['product_id'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('products')
          : FirebaseFirestore.instance.collectionGroup('products');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('products').doc();

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? productImage,
  String? productImageBlurhash,
  String? productDescription,
  String? productId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_image': productImage,
      'product_image_blurhash': productImageBlurhash,
      'product_description': productDescription,
      'product_id': productId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.productImage == e2?.productImage &&
        e1?.productImageBlurhash == e2?.productImageBlurhash &&
        e1?.productDescription == e2?.productDescription &&
        e1?.productId == e2?.productId;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.productImage,
        e?.productImageBlurhash,
        e?.productDescription,
        e?.productId
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
