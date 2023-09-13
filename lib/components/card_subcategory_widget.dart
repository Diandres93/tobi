import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'card_subcategory_model.dart';
export 'card_subcategory_model.dart';

class CardSubcategoryWidget extends StatefulWidget {
  const CardSubcategoryWidget({
    Key? key,
    String? iconCategory,
    String? categoryId,
    String? subcategoryName,
    String? subcategoryDescription,
    required this.categoryshortname,
  })  : this.iconCategory = iconCategory ??
            'https://vpyhggczbiigzmetlgor.supabase.co/storage/v1/object/public/category_coupon/icon/color/icon-azul-bidia.png?t=2023-09-07T03%3A27%3A46.357Z',
        this.categoryId = categoryId ?? '2f522a09-03d4-4947-b229-573e571341b4',
        this.subcategoryName = subcategoryName ?? 'mi subcategoría',
        this.subcategoryDescription =
            subcategoryDescription ?? 'mi description',
        super(key: key);

  final String iconCategory;
  final String categoryId;
  final String subcategoryName;
  final String subcategoryDescription;
  final String? categoryshortname;

  @override
  _CardSubcategoryWidgetState createState() => _CardSubcategoryWidgetState();
}

class _CardSubcategoryWidgetState extends State<CardSubcategoryWidget> {
  late CardSubcategoryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardSubcategoryModel());

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

    return Align(
      alignment: AlignmentDirectional(0.00, 0.00),
      child: Container(
        width: double.infinity,
        height: 200.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primary,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Color(0xFF8A8A8A),
            width: 1.0,
          ),
        ),
        alignment: AlignmentDirectional(0.00, 0.00),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(1.00, 0.00),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: CachedNetworkImage(
                  fadeInDuration: Duration(milliseconds: 500),
                  fadeOutDuration: Duration(milliseconds: 500),
                  imageUrl: widget.iconCategory,
                  width: 250.0,
                  height: 200.0,
                  fit: BoxFit.none,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(23.0, 23.0, 50.0, 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 2.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: SvgPicture.asset(
                              'assets/images/logobi.svg',
                              width: 24.0,
                              height: 24.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Text(
                          widget.categoryshortname!,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 20.0,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          widget.subcategoryName,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: 24.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 250.0,
                        height: 80.0,
                        decoration: BoxDecoration(),
                        child: AutoSizeText(
                          widget.subcategoryDescription,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
