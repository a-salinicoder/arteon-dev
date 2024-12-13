import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'login_create_account_page_widget.dart'
    show LoginCreateAccountPageWidget;
import 'package:flutter/material.dart';

class LoginCreateAccountPageModel
    extends FlutterFlowModel<LoginCreateAccountPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Fullname widget.
  FocusNode? fullnameFocusNode;
  TextEditingController? fullnameTextController;
  String? Function(BuildContext, String?)? fullnameTextControllerValidator;
  // State field(s) for Stagename widget.
  FocusNode? stagenameFocusNode;
  TextEditingController? stagenameTextController;
  String? Function(BuildContext, String?)? stagenameTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for ConfirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  // State field(s) for IG widget.
  FocusNode? igFocusNode;
  TextEditingController? igTextController;
  String? Function(BuildContext, String?)? igTextControllerValidator;
  // State field(s) for YT widget.
  FocusNode? ytFocusNode;
  TextEditingController? ytTextController;
  String? Function(BuildContext, String?)? ytTextControllerValidator;
  // State field(s) for Spotify widget.
  FocusNode? spotifyFocusNode;
  TextEditingController? spotifyTextController;
  String? Function(BuildContext, String?)? spotifyTextControllerValidator;
  // State field(s) for Role widget.
  FormFieldController<List<String>>? roleValueController;
  String? get roleValue => roleValueController?.value?.firstOrNull;
  set roleValue(String? val) =>
      roleValueController?.value = val != null ? [val] : [];
  // State field(s) for Genre widget.
  FormFieldController<List<String>>? genreValueController;
  String? get genreValue => genreValueController?.value?.firstOrNull;
  set genreValue(String? val) =>
      genreValueController?.value = val != null ? [val] : [];
  // State field(s) for Languages widget.
  FormFieldController<List<String>>? languagesValueController;
  String? get languagesValue => languagesValueController?.value?.firstOrNull;
  set languagesValue(String? val) =>
      languagesValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    confirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    fullnameFocusNode?.dispose();
    fullnameTextController?.dispose();

    stagenameFocusNode?.dispose();
    stagenameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();

    igFocusNode?.dispose();
    igTextController?.dispose();

    ytFocusNode?.dispose();
    ytTextController?.dispose();

    spotifyFocusNode?.dispose();
    spotifyTextController?.dispose();
  }
}
