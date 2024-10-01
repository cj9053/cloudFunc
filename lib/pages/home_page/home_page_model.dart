import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (genRandNum)] action in randNumButt widget.
  ApiCallResponse? apiResult;
  // Stores action output result for [Backend Call - API (squareNumAPI)] action in squareNumButt widget.
  ApiCallResponse? squareNum;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
