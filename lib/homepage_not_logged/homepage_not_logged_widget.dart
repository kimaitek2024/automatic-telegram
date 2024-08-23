import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'homepage_not_logged_model.dart';
export 'homepage_not_logged_model.dart';

class HomepageNotLoggedWidget extends StatefulWidget {
  const HomepageNotLoggedWidget({super.key});

  @override
  State<HomepageNotLoggedWidget> createState() =>
      _HomepageNotLoggedWidgetState();
}

class _HomepageNotLoggedWidgetState extends State<HomepageNotLoggedWidget> {
  late HomepageNotLoggedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageNotLoggedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: FlutterFlowWebView(
            content: 'https://zktrade.website/',
            bypass: false,
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            verticalScroll: true,
            horizontalScroll: true,
          ),
        ),
      ),
    );
  }
}
