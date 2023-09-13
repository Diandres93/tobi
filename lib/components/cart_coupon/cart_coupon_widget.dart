import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cart_coupon_model.dart';
export 'cart_coupon_model.dart';

class CartCouponWidget extends StatefulWidget {
  const CartCouponWidget({Key? key}) : super(key: key);

  @override
  _CartCouponWidgetState createState() => _CartCouponWidgetState();
}

class _CartCouponWidgetState extends State<CartCouponWidget> {
  late CartCouponModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartCouponModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 24.0, 0.0),
      child: badges.Badge(
        badgeContent: Text(
          '3',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Plus Jakarta Sans',
                color: Color(0xFF050101),
              ),
        ),
        showBadge: true,
        shape: badges.BadgeShape.circle,
        badgeColor: FlutterFlowTheme.of(context).primary,
        elevation: 4.0,
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
        position: badges.BadgePosition.topEnd(),
        animationType: badges.BadgeAnimationType.scale,
        toAnimate: true,
        child: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 48.0,
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: FlutterFlowTheme.of(context).primary,
            size: 30.0,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
      ),
    );
  }
}
