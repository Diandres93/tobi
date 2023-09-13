import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/nav_bar1_copy_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBar1Copy component.
  late NavBar1CopyModel navBar1CopyModel;
  var cuponcanjeado = '';
  AudioPlayer? soundPlayer;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBar1CopyModel = createModel(context, () => NavBar1CopyModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navBar1CopyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
