import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'sheetmenuprofile_model.dart';
export 'sheetmenuprofile_model.dart';

class SheetmenuprofileWidget extends StatefulWidget {
  const SheetmenuprofileWidget({Key? key}) : super(key: key);

  @override
  _SheetmenuprofileWidgetState createState() => _SheetmenuprofileWidgetState();
}

class _SheetmenuprofileWidgetState extends State<SheetmenuprofileWidget> {
  late SheetmenuprofileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SheetmenuprofileModel());

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
      width: 500.0,
      height: 500.0,
      decoration: BoxDecoration(
        color: Color(0xFFD6CFCF),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(0.0, -3.0),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.settings_outlined,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 50.0,
                    ),
                    Text(
                      'Configuración',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.support_agent,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 50.0,
                    ),
                    Text(
                      'Soporte',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.question_mark,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 50.0,
                    ),
                    Text(
                      'Preguntas Frecuentes',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
            Text(
              _model.cuponescaneado!,
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
            FFButtonWidget(
              onPressed: () async {
                _model.cuponescaneado = await FlutterBarcodeScanner.scanBarcode(
                  '#C62828', // scanning line color
                  'Cancelar', // cancel button text
                  true, // whether to show the flash icon
                  ScanMode.QR,
                );

                _model.soundPlayer ??= AudioPlayer();
                if (_model.soundPlayer!.playing) {
                  await _model.soundPlayer!.stop();
                }
                _model.soundPlayer!.setVolume(1.0);
                _model.soundPlayer!
                    .setAsset('assets/audios/transactions.mp3')
                    .then((_) => _model.soundPlayer!.play());

                _model.ordencreada = await OrderTable().insert({
                  'unicode': _model.cuponescaneado,
                });
                await showDialog(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: Text('Exitoso'),
                      content: Text(_model.cuponescaneado!),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(alertDialogContext),
                          child: Text('Ok'),
                        ),
                      ],
                    );
                  },
                );

                setState(() {});
              },
              text: 'Escanear un cupón',
              options: FFButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).alternate,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                GoRouter.of(context).prepareAuthEvent();
                await authManager.signOut();
                GoRouter.of(context).clearRedirectLocation();

                FFAppState().update(() {
                  FFAppState().seller = false;
                });

                context.pushNamedAuth('HomePage', context.mounted);
              },
              text: 'Cerrar mi sesión',
              options: FFButtonOptions(
                height: 30.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).error,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Color(0xFF2E2E2E),
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
          ],
        ),
      ),
    );
  }
}
