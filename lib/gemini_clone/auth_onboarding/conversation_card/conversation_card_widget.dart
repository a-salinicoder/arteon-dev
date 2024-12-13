import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'conversation_card_model.dart';
export 'conversation_card_model.dart';

class ConversationCardWidget extends StatefulWidget {
  const ConversationCardWidget({
    super.key,
    required this.convoName,
    required this.action,
  });

  final String? convoName;
  final Future Function()? action;

  @override
  State<ConversationCardWidget> createState() => _ConversationCardWidgetState();
}

class _ConversationCardWidgetState extends State<ConversationCardWidget> {
  late ConversationCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConversationCardModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CONVERSATION_CARD_conversationCard_ON_IN');
      logFirebaseEvent('conversationCard_update_component_state');
      _model.name = widget.convoName;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        width: 210.0,
        height: 44.0,
        decoration: BoxDecoration(
          color: _model.mouseRegionHovered
              ? FlutterFlowTheme.of(context).alternate
              : FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(44.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 4.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                Icons.chat_bubble_outline_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 20.0,
              ),
              Expanded(
                child: Text(
                  valueOrDefault<String>(
                    widget.convoName,
                    'My Conversation',
                  ).maybeHandleOverflow(
                    maxChars: 50,
                    replacement: '…',
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodySmallFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodySmallFamily),
                      ),
                ),
              ),
              if (_model.mouseRegionHovered ?? true)
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 36.0,
                  icon: Icon(
                    Icons.more_vert_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 20.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent(
                        'CONVERSATION_CARD_more_vert_outlined_ICN');
                    logFirebaseEvent('IconButton_execute_callback');
                    await widget.action?.call();
                  },
                ),
            ].divide(const SizedBox(width: 8.0)),
          ),
        ),
      ),
    );
  }
}
