import '/flutter_flow/flutter_flow_util.dart';
import 'account_forgot_password_widget.dart' show AccountForgotPasswordWidget;
import 'package:flutter/material.dart';

class AccountForgotPasswordModel
    extends FlutterFlowModel<AccountForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}