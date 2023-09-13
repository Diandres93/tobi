import '/backend/supabase/supabase.dart';
import '/components/coupon_card_main/coupon_card_main_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListCategoriesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Models for couponCardMain dynamic component.
  late FlutterFlowDynamicModels<CouponCardMainModel> couponCardMainModels1;
  // Models for couponCardMain dynamic component.
  late FlutterFlowDynamicModels<CouponCardMainModel> couponCardMainModels2;
  // Models for couponCardMain dynamic component.
  late FlutterFlowDynamicModels<CouponCardMainModel> couponCardMainModels4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    couponCardMainModels1 =
        FlutterFlowDynamicModels(() => CouponCardMainModel());
    couponCardMainModels2 =
        FlutterFlowDynamicModels(() => CouponCardMainModel());
    couponCardMainModels4 =
        FlutterFlowDynamicModels(() => CouponCardMainModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    couponCardMainModels1.dispose();
    couponCardMainModels2.dispose();
    couponCardMainModels4.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
