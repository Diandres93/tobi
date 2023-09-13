import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'signinwith_google_copy_model.dart';
export 'signinwith_google_copy_model.dart';

class SigninwithGoogleCopyWidget extends StatefulWidget {
  const SigninwithGoogleCopyWidget({Key? key}) : super(key: key);

  @override
  _SigninwithGoogleCopyWidgetState createState() =>
      _SigninwithGoogleCopyWidgetState();
}

class _SigninwithGoogleCopyWidgetState
    extends State<SigninwithGoogleCopyWidget> {
  late SigninwithGoogleCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SigninwithGoogleCopyModel());

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
          width: 230.0,
          height: 44.0,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Iniciar Sesión con Google',
                    icon: Icon(
                      Icons.add,
                      color: Colors.transparent,
                      size: 20.0,
                    ),
                    options: FFButtonOptions(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                      color: Colors.white,
                      textStyle: GoogleFonts.getFont(
                        'Roboto',
                        color: Color(0xFF606060),
                        fontSize: 17.0,
                      ),
                      elevation: 4.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 0.0,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.83, 0.00),
                child: Container(
                  width: 22.0,
                  height: 22.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
