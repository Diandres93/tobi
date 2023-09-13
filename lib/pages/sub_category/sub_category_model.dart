import '/backend/supabase/supabase.dart';
import '/components/card_subcategory_widget.dart';
import '/components/cardcupongrid_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SubCategoryModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<int> subcategories = [];
  void addToSubcategories(int item) => subcategories.add(item);
  void removeFromSubcategories(int item) => subcategories.remove(item);
  void removeAtIndexFromSubcategories(int index) =>
      subcategories.removeAt(index);
  void updateSubcategoriesAtIndex(int index, Function(int) updateFn) =>
      subcategories[index] = updateFn(subcategories[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for cardSubcategory component.
  late CardSubcategoryModel cardSubcategoryModel1;
  // Models for cardcupongrid dynamic component.
  late FlutterFlowDynamicModels<CardcupongridModel> cardcupongridModels1;
  // Model for cardSubcategory component.
  late CardSubcategoryModel cardSubcategoryModel2;
  // Models for cardcupongrid dynamic component.
  late FlutterFlowDynamicModels<CardcupongridModel> cardcupongridModels2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    cardSubcategoryModel1 = createModel(context, () => CardSubcategoryModel());
    cardcupongridModels1 = FlutterFlowDynamicModels(() => CardcupongridModel());
    cardSubcategoryModel2 = createModel(context, () => CardSubcategoryModel());
    cardcupongridModels2 = FlutterFlowDynamicModels(() => CardcupongridModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    cardSubcategoryModel1.dispose();
    cardcupongridModels1.dispose();
    cardSubcategoryModel2.dispose();
    cardcupongridModels2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
