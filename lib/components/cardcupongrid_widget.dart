import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'cardcupongrid_model.dart';
export 'cardcupongrid_model.dart';

class CardcupongridWidget extends StatefulWidget {
  const CardcupongridWidget({
    Key? key,
    this.subcategoryimage,
    this.subcategoryimageblur,
    this.cuponName,
    required this.categoryIconColor,
    this.cuponId,
    required this.categpryIconWhite,
    required this.subcategoryName,
    this.subcategoryname,
  }) : super(key: key);

  final String? subcategoryimage;
  final String? subcategoryimageblur;
  final String? cuponName;
  final String? categoryIconColor;
  final String? cuponId;
  final String? categpryIconWhite;
  final String? subcategoryName;
  final String? subcategoryname;

  @override
  _CardcupongridWidgetState createState() => _CardcupongridWidgetState();
}

class _CardcupongridWidgetState extends State<CardcupongridWidget> {
  late CardcupongridModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardcupongridModel());

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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
        child: Container(
          width: 160.0,
          height: 300.0,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xFFD9D9D9),
                offset: Offset(0.0, 2.0),
              )
            ],
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Color(0xFFD9D9D9),
            ),
          ),
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Container(
                                    width: 160.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                      ),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: FlutterFlowExpandedImageView(
                                              image: OctoImage(
                                                placeholderBuilder:
                                                    OctoPlaceholder.blurHash(
                                                  widget.subcategoryimageblur!,
                                                ),
                                                image:
                                                    CachedNetworkImageProvider(
                                                  widget.subcategoryimage!,
                                                ),
                                                fit: BoxFit.contain,
                                                alignment:
                                                    Alignment(0.00, 0.00),
                                              ),
                                              allowRotation: false,
                                              tag: widget.subcategoryimage!,
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: widget.subcategoryimage!,
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          ),
                                          child: OctoImage(
                                            placeholderBuilder:
                                                OctoPlaceholder.blurHash(
                                              widget.subcategoryimageblur!,
                                            ),
                                            image: CachedNetworkImageProvider(
                                              widget.subcategoryimage!,
                                            ),
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.6,
                                            height: 90.0,
                                            fit: BoxFit.cover,
                                            alignment: Alignment(0.00, 0.00),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment:
                                        AlignmentDirectional(-1.00, -1.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 5.0),
                                      child: Container(
                                        width: 110.0,
                                        height: 30.0,
                                        constraints: BoxConstraints(
                                          maxHeight: 50.0,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Align(
                                          alignment: AlignmentDirectional(
                                              -1.00, -1.00),
                                          child: AutoSizeText(
                                            '${widget.cuponName} En ${widget.subcategoryname}'
                                                .maybeHandleOverflow(
                                              maxChars: 30,
                                              replacement: '…',
                                            ),
                                            textAlign: TextAlign.start,
                                            maxLines: 4,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 10.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                          Duration(milliseconds: 500),
                                      fadeOutDuration:
                                          Duration(milliseconds: 500),
                                      imageUrl: widget.categoryIconColor!,
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 2.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'CouponDetails',
                              queryParameters: {
                                'cuponId': serializeParam(
                                  widget.cuponId,
                                  ParamType.String,
                                ),
                                'subcategoryimagepath': serializeParam(
                                  widget.subcategoryimage,
                                  ParamType.String,
                                ),
                                'subcategoryimageblurpath': serializeParam(
                                  widget.subcategoryimageblur,
                                  ParamType.String,
                                ),
                                'icategoryimageiconwhite': serializeParam(
                                  widget.categpryIconWhite,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          text: 'Ver más',
                          options: FFButtonOptions(
                            height: 30.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).alternate,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 14.0,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.04, -0.97),
                  child: Builder(
                    builder: (context) {
                      if (!_model.favorites) {
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 5.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.favoriteId =
                                  await FavoritesTable().insert({
                                'cupon_id': widget.cuponId,
                                'user_id': currentUserUid,
                              });
                              setState(() {
                                _model.favorites = true;
                              });

                              setState(() {});
                            },
                            child: Icon(
                              Icons.favorite_border,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 40.0,
                            ),
                          ),
                        );
                      } else {
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await FavoritesTable().delete(
                              matchingRows: (rows) => rows
                                  .eq(
                                    'cupon_id',
                                    widget.cuponId,
                                  )
                                  .eq(
                                    'user_id',
                                    currentUserUid,
                                  ),
                            );
                            setState(() {
                              _model.favorites = false;
                            });
                          },
                          child: Icon(
                            Icons.favorite,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 40.0,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
