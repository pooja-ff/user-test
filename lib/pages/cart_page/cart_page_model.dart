import '/components/cart_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  double finalPrice = 0.0;

  ///  State fields for stateful widgets in this page.

  // Model for CartItem component.
  late CartItemModel cartItemModel1;
  // Model for CartItem component.
  late CartItemModel cartItemModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    cartItemModel1 = createModel(context, () => CartItemModel());
    cartItemModel2 = createModel(context, () => CartItemModel());
  }

  void dispose() {
    cartItemModel1.dispose();
    cartItemModel2.dispose();
  }

  /// Additional helper methods are added here.

}
