import '/backend/supabase/supabase.dart';
import '/components/coupon_card_maingrid/coupon_card_maingrid_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gridcolumnsubcategory_model.dart';
export 'gridcolumnsubcategory_model.dart';

class GridcolumnsubcategoryWidget extends StatefulWidget {
  const GridcolumnsubcategoryWidget({
    Key? key,
    this.parameter1,
  }) : super(key: key);

  final int? parameter1;

  @override
  _GridcolumnsubcategoryWidgetState createState() =>
      _GridcolumnsubcategoryWidgetState();
}

class _GridcolumnsubcategoryWidgetState
    extends State<GridcolumnsubcategoryWidget> {
  late GridcolumnsubcategoryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GridcolumnsubcategoryModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
      child: FutureBuilder<List<CouponRow>>(
        future: CouponTable().queryRows(
          queryFn: (q) => q.eq(
            'subcategory_name',
            widget.parameter1,
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
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFF29D35),
                  ),
                ),
              ),
            );
          }
          List<CouponRow> gridViewCouponRowList = snapshot.data!;
          return GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 3.0,
              mainAxisSpacing: 3.0,
              childAspectRatio: 0.5,
            ),
            scrollDirection: Axis.vertical,
            itemCount: gridViewCouponRowList.length,
            itemBuilder: (context, gridViewIndex) {
              final gridViewCouponRow = gridViewCouponRowList[gridViewIndex];
              return Container(
                decoration: BoxDecoration(),
                child: CouponCardMaingridWidget(
                  key: Key(
                      'Keyh6d_${gridViewIndex}_of_${gridViewCouponRowList.length}'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
