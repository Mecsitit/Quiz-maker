import '../backend/backend.dart';
import '../edit_aquiz/edit_aquiz_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../play_game/play_game_widget.dart';
import '../flutter_flow/admob_util.dart' as admob;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class EditGameWidget extends StatefulWidget {
  const EditGameWidget({
    Key key,
    this.quizDetail,
    this.questionDetail,
  }) : super(key: key);

  final QuizTitleRecord quizDetail;
  final QuizRecord questionDetail;

  @override
  _EditGameWidgetState createState() => _EditGameWidgetState();
}

class _EditGameWidgetState extends State<EditGameWidget> {
  PagingController<DocumentSnapshot, QuizRecord> _pagingController;
  Query _pagingQuery;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool interstitialAdSuccess;

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
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlayGameWidget(
                  quizDetail: widget.quizDetail,
                ),
              ),
            );

            interstitialAdSuccess = await admob.showInterstitialAd();

            setState(() {});
          },
        ),
        title: Text(
          'Edit Quiz',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).black600,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  //height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).black600,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).black600,
                        ),
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                               height: MediaQuery.of(context).size.height * 1,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: PagedListView<DocumentSnapshot<Object>,
                                    QuizRecord>(
                                  pagingController: () {
                                    final Query<Object> Function(Query<Object>)
                                    queryBuilder = (quizRecord) =>
                                        quizRecord.where('quiztitle',
                                            isEqualTo:
                                            widget.quizDetail.reference);
                                    if (_pagingController != null) {
                                      final query =
                                      queryBuilder(QuizRecord.collection);
                                      if (query != _pagingQuery) {
                                        // The query has changed
                                        _pagingQuery = query;

                                        _pagingController.refresh();
                                      }
                                      return _pagingController;
                                    }

                                    _pagingController =
                                        PagingController(firstPageKey: null);
                                    _pagingQuery =
                                        queryBuilder(QuizRecord.collection);
                                    _pagingController
                                        .addPageRequestListener((nextPageMarker) {
                                      queryQuizRecordPage(
                                        queryBuilder: (quizRecord) =>
                                            quizRecord.where('quiztitle',
                                                isEqualTo:
                                                widget.quizDetail.reference),
                                        nextPageMarker: nextPageMarker,
                                        pageSize: 25,
                                        isStream: false,
                                      ).then((page) {
                                        _pagingController.appendPage(
                                          page.data,
                                          page.nextPageMarker,
                                        );
                                      });
                                    });
                                    return _pagingController;
                                  }(),
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  builderDelegate:
                                  PagedChildBuilderDelegate<QuizRecord>(
                                    // Customize what your widget looks like when it's loading the first page.
                                    firstPageProgressIndicatorBuilder: (_) =>
                                        Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color: FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                            ),
                                          ),
                                        ),

                                    itemBuilder: (context, _, listViewIndex) {
                                      final listViewQuizRecord = _pagingController
                                          .itemList[listViewIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 12, 16, 0),
                                        child: Container(
                                          width: 100,
                                          height: 250,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF5183C5),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4,
                                                color: Color(0x2B202529),
                                                offset: Offset(0, 2),
                                              )
                                            ],
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      EditAquizWidget(
                                                        questionDetailedit:
                                                        listViewQuizRecord,
                                                        quizDetailedit:
                                                        widget.quizDetail,
                                                      ),
                                                ),
                                              );
                                            },
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsetsDirectional
                                                        .fromSTEB(0, 5, 0, 5),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 0,
                                                      shape:
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                      ),
                                                      child: Container(
                                                        width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                            0.9,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .secondaryBackground,
                                                            width: 0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(16, 0,
                                                              4, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize.max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                            children: [
                                                              Text(
                                                                listViewQuizRecord
                                                                    .question,
                                                                style: FlutterFlowTheme
                                                                    .of(context)
                                                                    .subtitle2,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional
                                                        .fromSTEB(0, 5, 0, 5),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 0,
                                                      shape:
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                      ),
                                                      child: Container(
                                                        width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                            0.9,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .secondaryBackground,
                                                            width: 0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(16, 0,
                                                              4, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize.max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                listViewQuizRecord
                                                                    .option1,
                                                                style: FlutterFlowTheme
                                                                    .of(context)
                                                                    .subtitle2,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional
                                                        .fromSTEB(0, 5, 0, 5),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 0,
                                                      shape:
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                      ),
                                                      child: Container(
                                                        width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                            0.9,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .secondaryBackground,
                                                            width: 0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(16, 0,
                                                              4, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize.max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                listViewQuizRecord
                                                                    .option2,
                                                                style: FlutterFlowTheme
                                                                    .of(context)
                                                                    .subtitle2,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional
                                                        .fromSTEB(0, 5, 0, 5),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 0,
                                                      shape:
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                      ),
                                                      child: Container(
                                                        width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                            0.9,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .secondaryBackground,
                                                            width: 0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(16, 0,
                                                              4, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize.max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                listViewQuizRecord
                                                                    .option3,
                                                                style: FlutterFlowTheme
                                                                    .of(context)
                                                                    .subtitle2,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional
                                                        .fromSTEB(0, 5, 0, 5),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 0,
                                                      shape:
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                      ),
                                                      child: Container(
                                                        width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                            0.9,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(8),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .secondaryBackground,
                                                            width: 0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(16, 0,
                                                              4, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize.max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                listViewQuizRecord
                                                                    .option4,
                                                                style: FlutterFlowTheme
                                                                    .of(context)
                                                                    .subtitle2,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
