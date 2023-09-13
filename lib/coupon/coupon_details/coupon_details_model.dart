import '/auth/base_auth_user_provider.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/sheetqr_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class CouponDetailsModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<String> itemsImage = [];
  void addToItemsImage(String item) => itemsImage.add(item);
  void removeFromItemsImage(String item) => itemsImage.remove(item);
  void removeAtIndexFromItemsImage(int index) => itemsImage.removeAt(index);
  void updateItemsImageAtIndex(int index, Function(String) updateFn) =>
      itemsImage[index] = updateFn(itemsImage[index]);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
