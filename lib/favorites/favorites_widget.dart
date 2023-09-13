import '/auth/base_auth_user_provider.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/coupon_card_main/coupon_card_main_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'favorites_model.dart';
export 'favorites_model.dart';

class FavoritesWidget extends StatefulWidget {
  const FavoritesWidget({Key? key}) : super(key: key);

  @override
  _FavoritesWidgetState createState() => _FavoritesWidgetState();
}

class _FavoritesWidgetState extends State<FavoritesWidget> {
  late FavoritesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavoritesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (loggedIn) {
        return;
      }

      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Inicie Sesión'),
            content: Text(
                'Necesita iniciar sesión para administrar tus cupones favoritos'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
      if (Navigator.of(context).canPop()) {
        context.pop();
      }
      context.pushNamed('Login');

      return;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<FavoritesRow>>(
      future: (_model.requestCompleter2 ??= Completer<List<FavoritesRow>>()
            ..complete(FavoritesTable().queryRows(
              queryFn: (q) => q.eq(
                'user_id',
                currentUserUid,
              ),
            )))
          .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFF29D35),
                  ),
                ),
              ),
            ),
          );
        }
        List<FavoritesRow> favoritesFavoritesRowList = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              appBar: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: Color(0xFF3F0A74),
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                title: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 100.0,
                    height: 30.0,
                    fit: BoxFit.none,
                  ),
                ),
                actions: [],
                centerTitle: true,
                elevation: 0.0,
              ),
              body: SafeArea(
                top: true,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (loggedIn)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Mis Bi Favoritos',
                            style: FlutterFlowTheme.of(context).headlineMedium,
                          ),
                        ),
                      if (loggedIn)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 4.0, 0.0, 0.0),
                          child: AutoSizeText(
                            'Gestiona aquí tus Bifavoritos',
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context).labelMedium,
                          ),
                        ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 15.0, 15.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (favoritesFavoritesRowList.length.toString() ==
                                  '0')
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Text(
                                    'agrega cupones favoritos y accede a elos mas rapido',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              if (favoritesFavoritesRowList.length.toString() !=
                                  '0')
                                FutureBuilder<List<CouponRow>>(
                                  future: (_model.requestCompleter1 ??=
                                          Completer<List<CouponRow>>()
                                            ..complete(CouponTable().queryRows(
                                              queryFn: (q) => q.in_(
                                                'coupon_id',
                                                favoritesFavoritesRowList
                                                    .map((e) => e.cuponId)
                                                    .withoutNulls
                                                    .toList(),
                                              ),
                                            )))
                                      .future,
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              Color(0xFFF29D35),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<CouponRow> listViewCouponRowList =
                                        snapshot.data!;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: listViewCouponRowList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewCouponRow =
                                            listViewCouponRowList[
                                                listViewIndex];
                                        return Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 5.0, 5.0, 5.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.9,
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        if (favoritesFavoritesRowList
                                                                .length
                                                                .toString() !=
                                                            '0')
                                                          wrapWithModel(
                                                            model: _model
                                                                .couponCardMainModels
                                                                .getModel(
                                                              listViewCouponRow
                                                                  .couponId,
                                                              listViewIndex,
                                                            ),
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                CouponCardMainWidget(
                                                              key: Key(
                                                                'Keycgi_${listViewCouponRow.couponId}',
                                                              ),
                                                              categoryimageiconwhite:
                                                                  valueOrDefault<
                                                                      String>(
                                                                listViewCouponRow
                                                                    .categoryImageWhite,
                                                                'https://vpyhggczbiigzmetlgor.supabase.co/storage/v1/object/public/category_coupon/icon/icon-bideldia.svg',
                                                              ),
                                                              subcategoryimagepath:
                                                                  valueOrDefault<
                                                                      String>(
                                                                listViewCouponRow
                                                                    .couponImagePath,
                                                                'https://vpyhggczbiigzmetlgor.supabase.co/storage/v1/object/public/coupons/dia/happyhpur.jpeg?t=2023-09-07T01%3A14%3A45.601Z',
                                                              ),
                                                              subcategroyimagepathblur:
                                                                  valueOrDefault<
                                                                      String>(
                                                                listViewCouponRow
                                                                    .imageBlurPath,
                                                                'LLK]}f~Br_eS_MXAxvMyI]e@bwM|',
                                                              ),
                                                              nmaecupon:
                                                                  valueOrDefault<
                                                                      String>(
                                                                listViewCouponRow
                                                                    .couponName,
                                                                'Tu Bi favorito',
                                                              ),
                                                              cuponId:
                                                                  listViewCouponRow
                                                                      .couponId,
                                                              preciocupon:
                                                                  valueOrDefault<
                                                                      double>(
                                                                listViewCouponRow
                                                                    .couponPrice,
                                                                0.00,
                                                              ),
                                                            ),
                                                          ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.89, -0.89),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await FavoritesTable()
                                                                  .delete(
                                                                matchingRows:
                                                                    (rows) =>
                                                                        rows
                                                                            .eq(
                                                                              'cupon_id',
                                                                              listViewCouponRow.couponId,
                                                                            )
                                                                            .eq(
                                                                              'user_id',
                                                                              currentUserUid,
                                                                            ),
                                                              );
                                                              setState(() =>
                                                                  _model.requestCompleter2 =
                                                                      null);
                                                              await _model
                                                                  .waitForRequestCompleted2(
                                                                      maxWait:
                                                                          2000);
                                                              setState(() =>
                                                                  _model.requestCompleter1 =
                                                                      null);
                                                              await _model
                                                                  .waitForRequestCompleted1(
                                                                      maxWait:
                                                                          2000);
                                                            },
                                                            child: Icon(
                                                              Icons.favorite,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 35.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
