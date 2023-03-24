import '/backend/api_requests/api_calls.dart';
import '/components/category_widget_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for CategoryWidget component.
  late CategoryWidgetModel categoryWidgetModel1;
  // Model for CategoryWidget component.
  late CategoryWidgetModel categoryWidgetModel2;
  // Model for CategoryWidget component.
  late CategoryWidgetModel categoryWidgetModel3;
  // Model for CategoryWidget component.
  late CategoryWidgetModel categoryWidgetModel4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    categoryWidgetModel1 = createModel(context, () => CategoryWidgetModel());
    categoryWidgetModel2 = createModel(context, () => CategoryWidgetModel());
    categoryWidgetModel3 = createModel(context, () => CategoryWidgetModel());
    categoryWidgetModel4 = createModel(context, () => CategoryWidgetModel());
  }

  void dispose() {
    textController?.dispose();
    categoryWidgetModel1.dispose();
    categoryWidgetModel2.dispose();
    categoryWidgetModel3.dispose();
    categoryWidgetModel4.dispose();
  }

  /// Additional helper methods are added here.

}
