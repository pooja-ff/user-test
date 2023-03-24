import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blur_test_model.dart';
export 'blur_test_model.dart';

class BlurTestWidget extends StatefulWidget {
  const BlurTestWidget({Key? key}) : super(key: key);

  @override
  _BlurTestWidgetState createState() => _BlurTestWidgetState();
}

class _BlurTestWidgetState extends State<BlurTestWidget> {
  late BlurTestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlurTestModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional(0.0, 1.0),
        children: [
          Align(
            alignment: AlignmentDirectional(-4.5, -1.4),
            child: Container(
              width: 500.0,
              height: 500.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).tertiaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-4.5, -1.4),
            child: Container(
              width: 350.0,
              height: 350.0,
              decoration: BoxDecoration(
                color: Color(0xFFF09196),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(4.5, -0.95),
            child: Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 40.0,
                  sigmaY: 40.0,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x339A9A9A),
                    ),
                    alignment: AlignmentDirectional(0.0, 1.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
