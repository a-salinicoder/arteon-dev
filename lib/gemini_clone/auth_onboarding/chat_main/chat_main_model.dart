import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gemini_clone/auth_onboarding/conversation_card/conversation_card_widget.dart';
import '/gemini_clone/auth_onboarding/dark_switch/dark_switch_widget.dart';
import '/gemini_clone/thread_chats/thread_chats_widget.dart';
import '/flutter_flow/request_manager.dart';

import 'chat_main_widget.dart' show ChatMainWidget;
import 'package:flutter/material.dart';

class ChatMainModel extends FlutterFlowModel<ChatMainWidget> {
  ///  Local state fields for this page.

  DocumentReference? activeChat;

  bool hasActiveChat = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  ConversationsRecord? newConversation;
  // Models for conversationCard dynamic component.
  late FlutterFlowDynamicModels<ConversationCardModel> conversationCardModels;
  // Model for darkSwitch component.
  late DarkSwitchModel darkSwitchModel;
  // Model for thread_Chats component.
  late ThreadChatsModel threadChatsModel;

  /// Query cache managers for this widget.

  final _conversationsManager =
      StreamRequestManager<List<ConversationsRecord>>();
  Stream<List<ConversationsRecord>> conversations({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ConversationsRecord>> Function() requestFn,
  }) =>
      _conversationsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearConversationsCache() => _conversationsManager.clear();
  void clearConversationsCacheKey(String? uniqueKey) =>
      _conversationsManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    conversationCardModels =
        FlutterFlowDynamicModels(() => ConversationCardModel());
    darkSwitchModel = createModel(context, () => DarkSwitchModel());
    threadChatsModel = createModel(context, () => ThreadChatsModel());
  }

  @override
  void dispose() {
    conversationCardModels.dispose();
    darkSwitchModel.dispose();
    threadChatsModel.dispose();

    /// Dispose query cache managers for this widget.

    clearConversationsCache();
  }
}
