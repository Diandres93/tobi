import '../database.dart';

class ShippingTable extends SupabaseTable<ShippingRow> {
  @override
  String get tableName => 'SHIPPING';

  @override
  ShippingRow createRow(Map<String, dynamic> data) => ShippingRow(data);
}

class ShippingRow extends SupabaseDataRow {
  ShippingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShippingTable();

  String get shippingId => getField<String>('shipping_id')!;
  set shippingId(String value) => setField<String>('shipping_id', value);

  String? get shippingMethod => getField<String>('shipping_method');
  set shippingMethod(String? value) =>
      setField<String>('shipping_method', value);

  String? get shippingRate => getField<String>('shipping_rate');
  set shippingRate(String? value) => setField<String>('shipping_rate', value);

  String? get estimatedDeliveryTime =>
      getField<String>('estimated_delivery_time');
  set estimatedDeliveryTime(String? value) =>
      setField<String>('estimated_delivery_time', value);
}
