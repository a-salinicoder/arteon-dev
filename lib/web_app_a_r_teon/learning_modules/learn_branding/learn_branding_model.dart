import '/flutter_flow/flutter_flow_util.dart';
import '/web_app_a_r_teon/main_web_page/sidebar_all_page/sidebar_all_page_widget.dart';
import 'learn_branding_widget.dart' show LearnBrandingWidget;
import 'package:flutter/material.dart';

class LearnBrandingModel extends FlutterFlowModel<LearnBrandingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SidebarAllPage component.
  late SidebarAllPageModel sidebarAllPageModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    sidebarAllPageModel = createModel(context, () => SidebarAllPageModel());
  }

  @override
  void dispose() {
    sidebarAllPageModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}