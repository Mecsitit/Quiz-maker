import 'package:flutter/scheduler.dart';

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../create_quiz/create_quiz_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../play_game/play_game_widget.dart';
import '../play_game_student/play_game_student_widget.dart';
import '../profile/profile_widget.dart';
import '../flutter_flow/admob_util.dart' as admob;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeStudentWidget extends StatefulWidget {
  const HomeStudentWidget({Key key}) : super(key: key);

  @override
  _HomeStudentWidgetState createState() => _HomeStudentWidgetState();
}

class _HomeStudentWidgetState extends State<HomeStudentWidget> {
  TextEditingController questionController;
  bool interstitialAdSuccess;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      admob.loadInterstitialAd(
        "",
        "ca-app-pub-9906861794105751/7757938385",
        false,
      );
    });

    questionController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Play & Learn - Home',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      labelColor: Colors.black,
                      unselectedLabelColor:
                      Colors.black54,
                      labelPadding:
                          EdgeInsetsDirectional.fromSTEB(32, 0, 32, 0),
                      labelStyle: FlutterFlowTheme.of(context).subtitle1,
                      indicatorColor: FlutterFlowTheme.of(context).primaryColor,
                      tabs: [
                        Tab(
                          text: 'Teacher',
                        ),
                        Tab(
                          text: 'Student',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0x0014181B),
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground
                                      ],
                                      stops: [0, 0.7],
                                      begin: AlignmentDirectional(0, -1),
                                      end: AlignmentDirectional(0, 1),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        50, 24, 50, 25),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                CreateQuizWidget(),
                                          ),
                                        );
                                      },
                                      text: 'Create a Quiz',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 44,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height-228,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                                child: StreamBuilder<List<QuizTitleRecord>>(
                                  stream: queryQuizTitleRecord(
                                    queryBuilder: (quizTitleRecord) =>
                                        quizTitleRecord.where('CreatedBy',
                                            isEqualTo: currentUserReference),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                        ),
                                      );
                                    }
                                    List<QuizTitleRecord>
                                        listViewQuizTitleRecordList =
                                        snapshot.data;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          listViewQuizTitleRecordList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewQuizTitleRecord =
                                            listViewQuizTitleRecordList[
                                                listViewIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 12),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 3,
                                                  color: Color(0x411D2429),
                                                  offset: Offset(0, 1),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 8, 8, 8),
                                              child: InkWell(
                                                onTap: () async {


                                                  interstitialAdSuccess =
                                                      await admob
                                                          .showInterstitialAd();

                                                  setState(() {});
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          PlayGameWidget(
                                                            quizDetail:
                                                            listViewQuizTitleRecord,
                                                          ),
                                                    ),
                                                  );

                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 8, 4, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              listViewQuizTitleRecord
                                                                  .quizTitle,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .subtitle1,
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            4,
                                                                            8,
                                                                            0),
                                                                child:
                                                                    AutoSizeText(
                                                                  listViewQuizTitleRecord
                                                                      .description
                                                                      .maybeHandleOverflow(
                                                                    maxChars:
                                                                        70,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      4, 0, 0),
                                                          child: Icon(
                                                            Icons
                                                                .chevron_right_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0x0014181B),
                                        Colors.white
                                      ],
                                      stops: [0, 0.7],
                                      begin: AlignmentDirectional(0, -1),
                                      end: AlignmentDirectional(0, 1),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 16, 16, 0),
                                        child: TextFormField(
                                          controller: questionController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Add Quiz Code',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFF1F4F8),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFF1F4F8),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 32, 20, 12),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF14181B),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          textAlign: TextAlign.start,
                                          maxLines: 1,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 24, 0, 16),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            setState(() =>
                                                FFAppState().quizCode =
                                                    questionController.text);
                                          },
                                          text: 'Show quiz',
                                          options: FFButtonOptions(
                                            width: 270,
                                            height: 50,
                                            color: Color(0xFF4B39EF),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle1
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            elevation: 3,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height-478,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                                child: StreamBuilder<List<QuizTitleRecord>>(
                                  stream: queryQuizTitleRecord(
                                    queryBuilder: (quizTitleRecord) =>
                                        quizTitleRecord.where('quizCode',
                                            isEqualTo: FFAppState().quizCode),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                        ),
                                      );
                                    }
                                    List<QuizTitleRecord>
                                        listViewQuizTitleRecordList =
                                        snapshot.data;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          listViewQuizTitleRecordList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewQuizTitleRecord =
                                            listViewQuizTitleRecordList[
                                                listViewIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 12),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 3,
                                                  color: Color(0x411D2429),
                                                  offset: Offset(0, 1),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 8, 8, 8),
                                              child: InkWell(
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          PlayGameStudentWidget(
                                                        quizDetail:
                                                            listViewQuizTitleRecord,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 8, 4, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              listViewQuizTitleRecord
                                                                  .quizTitle,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .subtitle1,
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            4,
                                                                            8,
                                                                            0),
                                                                child:
                                                                    AutoSizeText(
                                                                  listViewQuizTitleRecord
                                                                      .quizTitle
                                                                      .maybeHandleOverflow(
                                                                    maxChars:
                                                                        70,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      4, 0, 0),
                                                          child: Icon(
                                                            Icons
                                                                .chevron_right_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
