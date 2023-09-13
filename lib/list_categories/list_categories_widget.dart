import '/backend/supabase/supabase.dart';
import '/components/coupon_card_main/coupon_card_main_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_categories_model.dart';
export 'list_categories_model.dart';

class ListCategoriesWidget extends StatefulWidget {
  const ListCategoriesWidget({Key? key}) : super(key: key);

  @override
  _ListCategoriesWidgetState createState() => _ListCategoriesWidgetState();
}

class _ListCategoriesWidgetState extends State<ListCategoriesWidget>
    with TickerProviderStateMixin {
  late ListCategoriesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListCategoriesModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Categorías',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Plus Jakarta Sans',
                  color: FlutterFlowTheme.of(context).primary,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(-1.0, 0),
                    child: TabBar(
                      isScrollable: true,
                      labelColor: FlutterFlowTheme.of(context).primary,
                      unselectedLabelColor:
                          FlutterFlowTheme.of(context).alternate,
                      labelPadding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      labelStyle: FlutterFlowTheme.of(context).titleMedium,
                      unselectedLabelStyle: TextStyle(),
                      indicatorColor: FlutterFlowTheme.of(context).primary,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      tabs: [
                        Tab(
                          text: 'Bi del día',
                        ),
                        Tab(
                          text: 'Bi de la semana',
                        ),
                        Tab(
                          text: 'Bi del Mes',
                        ),
                        Tab(
                          text: 'Bi Colombia alimenta',
                        ),
                      ],
                      controller: _model.tabBarController,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _model.tabBarController,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FutureBuilder<List<CouponRow>>(
                                  future: CouponTable().queryRows(
                                    queryFn: (q) => q.eq(
                                      'coupon_category',
                                      '2f522a09-03d4-4947-b229-573e571341b4',
                                    ),
                                  ),
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
                                        return wrapWithModel(
                                          model: _model.couponCardMainModels1
                                              .getModel(
                                            listViewCouponRow.couponId,
                                            listViewIndex,
                                          ),
                                          updateCallback: () => setState(() {}),
                                          child: CouponCardMainWidget(
                                            key: Key(
                                              'Keyr74_${listViewCouponRow.couponId}',
                                            ),
                                            cuponId: listViewCouponRow.couponId,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FutureBuilder<List<CouponRow>>(
                                  future: CouponTable().queryRows(
                                    queryFn: (q) => q.eq(
                                      'coupon_category',
                                      'e784fb3f-8ebb-403a-9c35-93020142c2a7',
                                    ),
                                  ),
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
                                        return wrapWithModel(
                                          model: _model.couponCardMainModels2
                                              .getModel(
                                            listViewCouponRow.couponId,
                                            listViewIndex,
                                          ),
                                          updateCallback: () => setState(() {}),
                                          child: CouponCardMainWidget(
                                            key: Key(
                                              'Key8x6_${listViewCouponRow.couponId}',
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FutureBuilder<List<CouponRow>>(
                                  future: CouponTable().queryRows(
                                    queryFn: (q) => q.eq(
                                      'coupon_category',
                                      '05e1b3e5-a608-4552-92aa-9880f0bd87f6',
                                    ),
                                  ),
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
                                        return CouponCardMainWidget(
                                          key: Key(
                                              'Key49l_${listViewIndex}_of_${listViewCouponRowList.length}'),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FutureBuilder<List<CouponRow>>(
                                future: CouponTable().queryRows(
                                  queryFn: (q) => q.eq(
                                    'coupon_category',
                                    '8f9831ac-8da9-48e1-beeb-863abf5b83db',
                                  ),
                                ),
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
                                          listViewCouponRowList[listViewIndex];
                                      return wrapWithModel(
                                        model: _model.couponCardMainModels4
                                            .getModel(
                                          listViewCouponRow.couponId,
                                          listViewIndex,
                                        ),
                                        updateCallback: () => setState(() {}),
                                        child: CouponCardMainWidget(
                                          key: Key(
                                            'Keyzub_${listViewCouponRow.couponId}',
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
