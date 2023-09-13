import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'coupon_card_main_model.dart';
export 'coupon_card_main_model.dart';

class CouponCardMainWidget extends StatefulWidget {
  const CouponCardMainWidget({
    Key? key,
    this.categoryimageiconwhite,
    this.subcategoryimagepath,
    this.subcategroyimagepathblur,
    this.nmaecupon,
    this.cuponId,
    this.preciocupon,
  }) : super(key: key);

  final String? categoryimageiconwhite;
  final String? subcategoryimagepath;
  final String? subcategroyimagepathblur;
  final String? nmaecupon;
  final String? cuponId;
  final double? preciocupon;

  @override
  _CouponCardMainWidgetState createState() => _CouponCardMainWidgetState();
}

class _CouponCardMainWidgetState extends State<CouponCardMainWidget> {
  late CouponCardMainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CouponCardMainModel());

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

    return Container(
      width: 350.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 1.0, 1.0),
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
                                placeholderBuilder: OctoPlaceholder.blurHash(
                                  widget.subcategroyimagepathblur!,
                                ),
                                image: CachedNetworkImageProvider(
                                  widget.subcategoryimagepath!,
                                ),
                                fit: BoxFit.contain,
                              ),
                              allowRotation: false,
                              tag: widget.subcategoryimagepath!,
                              useHeroAnimation: true,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: widget.subcategoryimagepath!,
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: OctoImage(
                            placeholderBuilder: OctoPlaceholder.blurHash(
                              widget.subcategroyimagepathblur!,
                            ),
                            image: CachedNetworkImageProvider(
                              widget.subcategoryimagepath!,
                            ),
                            width: 120.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.89, 0.80),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://picsum.photos/seed/518/600',
                        width: 30.0,
                        height: 30.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100.0,
              child: StyledVerticalDivider(
                width: 5.0,
                thickness: 1.0,
                color: Color(0xFF8A8A8A),
                lineStyle: DividerLineStyle.dashed,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 150.0,
                    height: 100.0,
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(-1.00, 0.00),
                      child: AutoSizeText(
                        widget.nmaecupon!.maybeHandleOverflow(
                          maxChars: 50,
                          replacement: '…',
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 14.0,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(),
                  child: Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: AutoSizeText(
                      formatNumber(
                        widget.preciocupon,
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.automatic,
                        currency: '\$',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ].divide(SizedBox(width: 2.0)),
        ),
      ),
    );
  }
}
