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
import 'sub_category_model.dart';
export 'sub_category_model.dart';

class SubCategoryWidget extends StatefulWidget {
  const SubCategoryWidget({
    Key? key,
    required this.categoryid,
    this.subcategories,
    required this.listsubcateg,
    required this.categoryshortname,
    required this.iconcategorycolor,
    required this.iconcategorywhite,
  }) : super(key: key);

  final String? categoryid;
  final SubcategoryCouponRow? subcategories;
  final List<int>? listsubcateg;
  final String? categoryshortname;
  final String? iconcategorycolor;
  final String? iconcategorywhite;

  @override
  _SubCategoryWidgetState createState() => _SubCategoryWidgetState();
}

class _SubCategoryWidgetState extends State<SubCategoryWidget>
    with TickerProviderStateMixin {
  late SubCategoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubCategoryModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.subcategories = widget.listsubcateg!.toList().cast<int>();
      });
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
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

    return FutureBuilder<List<CategoryCouponRow>>(
      future: CategoryCouponTable().querySingleRow(
        queryFn: (q) => q.eq(
          'category_coupon_id',
          widget.categoryid,
        ),
      ),
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
        List<CategoryCouponRow> subCategoryCategoryCouponRowList =
            snapshot.data!;
        final subCategoryCategoryCouponRow =
            subCategoryCategoryCouponRowList.isNotEmpty
                ? subCategoryCategoryCouponRowList.first
                : null;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('HomePage');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SvgPicture.asset(
                    'assets/images/logo.svg',
                    width: 100.0,
                    height: 30.0,
                    fit: BoxFit.none,
                  ),
                ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment(-1.0, 0),
                              child: TabBar(
                                isScrollable: true,
                                labelColor: Color(0xFFEF7D35),
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontSize: 14.0,
                                    ),
                                unselectedLabelStyle:
                                    FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontSize: 14.0,
                                        ),
                                indicatorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    4.0, 4.0, 4.0, 4.0),
                                tabs: [
                                  FutureBuilder<List<SubcategoryCouponRow>>(
                                    future:
                                        SubcategoryCouponTable().querySingleRow(
                                      queryFn: (q) => q.eq(
                                        'id',
                                        widget.listsubcateg?[0],
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
                                      List<SubcategoryCouponRow>
                                          tabSubcategoryCouponRowList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final tabSubcategoryCouponRow =
                                          tabSubcategoryCouponRowList.isNotEmpty
                                              ? tabSubcategoryCouponRowList
                                                  .first
                                              : null;
                                      return Tab(
                                        text: tabSubcategoryCouponRow!.name,
                                      );
                                    },
                                  ),
                                  FutureBuilder<List<SubcategoryCouponRow>>(
                                    future:
                                        SubcategoryCouponTable().querySingleRow(
                                      queryFn: (q) => q.eq(
                                        'id',
                                        widget.listsubcateg?[1],
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
                                      List<SubcategoryCouponRow>
                                          tabSubcategoryCouponRowList =
                                          snapshot.data!;
                                      final tabSubcategoryCouponRow =
                                          tabSubcategoryCouponRowList.isNotEmpty
                                              ? tabSubcategoryCouponRowList
                                                  .first
                                              : null;
                                      return Tab(
                                        text: tabSubcategoryCouponRow!.name,
                                      );
                                    },
                                  ),
                                ],
                                controller: _model.tabBarController,
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  KeepAliveWidgetWrapper(
                                    builder: (context) => Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: FutureBuilder<
                                          List<SubcategoryCouponRow>>(
                                        future: SubcategoryCouponTable()
                                            .querySingleRow(
                                          queryFn: (q) => q.eq(
                                            'id',
                                            widget.listsubcateg?[0],
                                          ),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    Color(0xFFF29D35),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<SubcategoryCouponRow>
                                              columnSubcategoryCouponRowList =
                                              snapshot.data!;
                                          final columnSubcategoryCouponRow =
                                              columnSubcategoryCouponRowList
                                                      .isNotEmpty
                                                  ? columnSubcategoryCouponRowList
                                                      .first
                                                  : null;
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              wrapWithModel(
                                                model: _model
                                                    .cardSubcategoryModel1,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: CardSubcategoryWidget(
                                                  iconCategory:
                                                      widget.iconcategorycolor,
                                                  categoryId: widget.categoryid,
                                                  subcategoryName:
                                                      columnSubcategoryCouponRow
                                                          ?.name,
                                                  subcategoryDescription:
                                                      columnSubcategoryCouponRow
                                                          ?.subcategoryDescription,
                                                  categoryshortname:
                                                      widget.categoryshortname!,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: FutureBuilder<
                                                      List<CouponRow>>(
                                                    future:
                                                        CouponTable().queryRows(
                                                      queryFn: (q) => q.in_(
                                                        'coupon_id',
                                                        columnSubcategoryCouponRow!
                                                            .cupons,
                                                      ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                Color(
                                                                    0xFFF29D35),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<CouponRow>
                                                          gridViewCouponRowList =
                                                          snapshot.data!;
                                                      return GridView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        gridDelegate:
                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: 2,
                                                          mainAxisSpacing: 10.0,
                                                          childAspectRatio: 1.0,
                                                        ),
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            gridViewCouponRowList
                                                                .length,
                                                        itemBuilder: (context,
                                                            gridViewIndex) {
                                                          final gridViewCouponRow =
                                                              gridViewCouponRowList[
                                                                  gridViewIndex];
                                                          return wrapWithModel(
                                                            model: _model
                                                                .cardcupongridModels1
                                                                .getModel(
                                                              gridViewCouponRow
                                                                  .couponId,
                                                              gridViewIndex,
                                                            ),
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                CardcupongridWidget(
                                                              key: Key(
                                                                'Keygzo_${gridViewCouponRow.couponId}',
                                                              ),
                                                              subcategoryimage:
                                                                  columnSubcategoryCouponRow
                                                                      ?.subcategoryImagePath,
                                                              subcategoryimageblur:
                                                                  columnSubcategoryCouponRow
                                                                      ?.imageBlurSubcategory,
                                                              cuponName:
                                                                  gridViewCouponRow
                                                                      .couponName,
                                                              categoryIconColor:
                                                                  widget
                                                                      .iconcategorycolor!,
                                                              cuponId:
                                                                  gridViewCouponRow
                                                                      .couponId,
                                                              categpryIconWhite:
                                                                  widget
                                                                      .iconcategorywhite!,
                                                              subcategoryName:
                                                                  columnSubcategoryCouponRow!
                                                                      .name,
                                                              subcategoryname:
                                                                  columnSubcategoryCouponRow
                                                                      ?.name,
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  KeepAliveWidgetWrapper(
                                    builder: (context) => FutureBuilder<
                                        List<SubcategoryCouponRow>>(
                                      future: SubcategoryCouponTable()
                                          .querySingleRow(
                                        queryFn: (q) => q.eq(
                                          'id',
                                          widget.listsubcateg?[1],
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  Color(0xFFF29D35),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<SubcategoryCouponRow>
                                            columnSubcategoryCouponRowList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final columnSubcategoryCouponRow =
                                            columnSubcategoryCouponRowList
                                                    .isNotEmpty
                                                ? columnSubcategoryCouponRowList
                                                    .first
                                                : null;
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model:
                                                  _model.cardSubcategoryModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: CardSubcategoryWidget(
                                                iconCategory:
                                                    widget.iconcategorycolor,
                                                categoryId: widget.categoryid,
                                                subcategoryName:
                                                    columnSubcategoryCouponRow
                                                        ?.name,
                                                subcategoryDescription:
                                                    columnSubcategoryCouponRow
                                                        ?.subcategoryDescription,
                                                categoryshortname:
                                                    widget.categoryshortname!,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: FutureBuilder<
                                                    List<CouponRow>>(
                                                  future:
                                                      CouponTable().queryRows(
                                                    queryFn: (q) => q.in_(
                                                      'coupon_id',
                                                      columnSubcategoryCouponRow!
                                                          .cupons,
                                                    ),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              Color(0xFFF29D35),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<CouponRow>
                                                        gridViewCouponRowList =
                                                        snapshot.data!;
                                                    return GridView.builder(
                                                      padding: EdgeInsets.zero,
                                                      gridDelegate:
                                                          SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 2,
                                                        crossAxisSpacing: 10.0,
                                                        mainAxisSpacing: 10.0,
                                                        childAspectRatio: 1.0,
                                                      ),
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          gridViewCouponRowList
                                                              .length,
                                                      itemBuilder: (context,
                                                          gridViewIndex) {
                                                        final gridViewCouponRow =
                                                            gridViewCouponRowList[
                                                                gridViewIndex];
                                                        return wrapWithModel(
                                                          model: _model
                                                              .cardcupongridModels2
                                                              .getModel(
                                                            gridViewCouponRow
                                                                .couponId,
                                                            gridViewIndex,
                                                          ),
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child:
                                                              CardcupongridWidget(
                                                            key: Key(
                                                              'Keyzbd_${gridViewCouponRow.couponId}',
                                                            ),
                                                            subcategoryimage:
                                                                columnSubcategoryCouponRow
                                                                    ?.subcategoryImagePath,
                                                            subcategoryimageblur:
                                                                columnSubcategoryCouponRow
                                                                    ?.imageBlurSubcategory,
                                                            cuponName:
                                                                gridViewCouponRow
                                                                    .couponName,
                                                            categoryIconColor:
                                                                widget
                                                                    .iconcategorycolor!,
                                                            cuponId:
                                                                gridViewCouponRow
                                                                    .couponId,
                                                            categpryIconWhite:
                                                                widget
                                                                    .iconcategorywhite!,
                                                            subcategoryName:
                                                                columnSubcategoryCouponRow!
                                                                    .name,
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
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
              ],
            ),
          ),
        );
      },
    );
  }
}
