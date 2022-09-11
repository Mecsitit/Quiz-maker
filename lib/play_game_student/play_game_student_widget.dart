import '../add_question/add_question_widget.dart';
import '../backend/backend.dart';
import '../edit_game/edit_game_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_student/home_student_widget.dart';
import '../profile/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PlayGameStudentWidget extends StatefulWidget {
  const PlayGameStudentWidget({
    Key key,
    this.quizDetail,
  }) : super(key: key);

  final QuizTitleRecord quizDetail;

  @override
  _PlayGameStudentWidgetState createState() => _PlayGameStudentWidgetState();
}

class _PlayGameStudentWidgetState extends State<PlayGameStudentWidget> {
  PagingController<DocumentSnapshot, QuizRecord> _pagingController;
  Query _pagingQuery;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  List<List<int>> a = [
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
  ];
  List<bool> answered = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  int correctQuestions = 0;

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
                builder: (context) => HomeStudentWidget(

                ),
              ),
            );
          },
        ),
        title: Text(
          'Play and Learn',
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
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            //height: 100,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child:
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Quiz cod - ',
                        style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        widget.quizDetail.quizCode,
                        style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: FFButtonWidget(
                //     onPressed: () async {
                //       await Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => AddQuestionWidget(
                //             quizTitle: widget.quizDetail,
                //           ),
                //         ),
                //       );
                //     },
                //     text: 'Add questions',
                //     options: FFButtonOptions(
                //       width: 200,
                //       height: 44,
                //       color: FlutterFlowTheme.of(context).primaryColor,
                //       textStyle:
                //       FlutterFlowTheme.of(context).subtitle2.override(
                //         fontFamily: 'Poppins',
                //         color: Colors.white,
                //       ),
                //       borderSide: BorderSide(
                //         color: Colors.transparent,
                //         width: 1,
                //       ),
                //     ),
                //   ),
                // ),
                // Generated code for this Row Widget...
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     FFButtonWidget(
                //       onPressed: () async {
                //         await Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => AddQuestionWidget(
                //               quizTitle: widget.quizDetail,
                //             ),
                //           ),
                //         );
                //       },
                //       text: 'Add questions',
                //       options: FFButtonOptions(
                //         width: 200,
                //         height: 40,
                //         color: FlutterFlowTheme.of(context).primaryColor,
                //         textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                //           fontFamily: 'Poppins',
                //           color: Colors.white,
                //         ),
                //         borderSide: BorderSide(
                //           color: Colors.transparent,
                //           width: 1,
                //         ),
                //         borderRadius: BorderRadius.circular(12),
                //       ),
                //     ),
                //     FlutterFlowIconButton(
                //       borderColor: Colors.transparent,
                //       borderRadius: 30,
                //       borderWidth: 1,
                //       buttonSize: 60,
                //       icon: Icon(
                //         Icons.edit_outlined,
                //         color: Colors.blue,
                //         size: 30,
                //       ),
                //       onPressed: () async {
                //         await Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => EditGameWidget(
                //               quizDetail: widget.quizDetail,
                //             ),
                //           ),
                //         );
                //       },
                //     ),
                //     FlutterFlowIconButton(
                //       borderColor: Colors.transparent,
                //       borderRadius: 30,
                //       borderWidth: 1,
                //       buttonSize: 60,
                //       icon: Icon(
                //         Icons.delete_forever_rounded,
                //         color: Colors.blue,
                //         size: 30,
                //       ),
                //       onPressed: () async {
                //         var confirmDialogResponse = await showDialog<bool>(
                //           context: context,
                //           builder: (alertDialogContext) {
                //             return AlertDialog(
                //               title: Text('Delete Quiz'),
                //               content: Text('Are you sure you want to delete the quiz'),
                //               actions: [
                //                 TextButton(
                //                   onPressed: () =>
                //                       Navigator.pop(alertDialogContext, false),
                //                   child: Text('Cancel'),
                //                 ),
                //                 TextButton(
                //                   onPressed: () =>
                //                       Navigator.pop(alertDialogContext, true),
                //                   child: Text('Confirm'),
                //                 ),
                //               ],
                //             );
                //           },
                //         ) ??
                //             false;
                //         if (confirmDialogResponse) {
                //           await widget.quizDetail.reference.delete();
                //           await Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //               builder: (context) => HomeStudentWidget(),
                //             ),
                //           );
                //         }
                //       },
                //     ),
                //   ],
                // )

              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: StreamBuilder<List<QuizRecord>>(
                  stream: queryQuizRecord(
                    queryBuilder: (quizRecord) => quizRecord.where('quiztitle',
                        isEqualTo: widget.quizDetail.reference),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<QuizRecord> listViewQuizRecordList = snapshot.data;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: listViewQuizRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewQuizRecord =
                        listViewQuizRecordList[listViewIndex];
                        return Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                          child: Container(
                            width: 100,
                            //height: 250,
                            decoration: BoxDecoration(
                              color: answered[listViewIndex] == true
                                  ? Colors.white10
                                  : FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x2B202529),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 5),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Container(
                                      constraints: BoxConstraints(minHeight: 40),
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      //height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 4, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "(${(listViewIndex + 1).toString()}.)  ${listViewQuizRecord.question}",
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2,
                                                maxLines: 6,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 5),
                                  child: InkWell(
                                    onTap: () async {
                                      if (answered[listViewIndex] == false) {
                                        if (listViewQuizRecord.option1 == listViewQuizRecord.corrrectAnswer) {
                                          setState(() {
                                            a[listViewIndex][0] = 1;
                                            correctQuestions++;
                                          });
                                        } else {
                                          setState(() {
                                            a[listViewIndex][0] = 2;
                                          });
                                        }
                                        ;

                                        setState(() {
                                          answered[listViewIndex] = true;
                                        });
                                      }
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Container(
                                        width:
                                        MediaQuery.of(context).size.width *
                                            0.9,
                                        constraints: BoxConstraints(minHeight: 40),
                                        decoration: BoxDecoration(
                                          color: answered[listViewIndex] == true
                                              ? Colors.white54
                                              : Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 4, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'i. ${listViewQuizRecord.option1}',
                                                  maxLines: 6, // you can change it accordingly
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color:
                                                      a[listViewIndex][0] == 0
                                                          ? Colors.black
                                                          : a[listViewIndex]
                                                      [0] ==
                                                          1
                                                          ? Colors.green
                                                          : Colors.red),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 5),
                                  child: InkWell(
                                    onTap: () async {
                                      if (answered[listViewIndex] == false) {
                                        if (listViewQuizRecord.option2 ==
                                            listViewQuizRecord.corrrectAnswer) {
                                          setState(() {
                                            a[listViewIndex][1] = 1;
                                            correctQuestions++;
                                          });
                                        } else {
                                          setState(() {
                                            a[listViewIndex][1] = 2;
                                          });
                                        }
                                        setState(() {
                                          answered[listViewIndex] = true;
                                        });
                                      }
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Container(
                                        constraints: BoxConstraints(minHeight: 40),
                                        width:
                                        MediaQuery.of(context).size.width *
                                            0.9,
                                        // height: 40,
                                        decoration: BoxDecoration(
                                          color: answered[listViewIndex] == true
                                              ? Colors.white54
                                              :   Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 4, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'ii. ${listViewQuizRecord.option2}',
                                                  maxLines: 6, // you can change it accordingly
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color:
                                                      a[listViewIndex][1] == 0
                                                          ? Colors.black
                                                          : a[listViewIndex]
                                                      [1] ==
                                                          1
                                                          ? Colors.green
                                                          : Colors.red),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 5),
                                  child: InkWell(
                                    onTap: () async {
                                      if (answered[listViewIndex] == false) {
                                        if (listViewQuizRecord.option3 ==
                                            listViewQuizRecord.corrrectAnswer) {
                                          setState(() {
                                            a[listViewIndex][2] = 1;
                                            correctQuestions++;
                                          });
                                        } else {
                                          setState(() {
                                            a[listViewIndex][2] = 2;
                                          });
                                        }
                                        setState(() {
                                          answered[listViewIndex] = true;
                                        });
                                      }
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Container(
                                        constraints: BoxConstraints(minHeight: 40),
                                        width:
                                        MediaQuery.of(context).size.width *
                                            0.9,
                                        //height: 40,
                                        decoration: BoxDecoration(
                                          color: answered[listViewIndex] == true
                                              ? Colors.white54
                                              : Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 4, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'iii. ${listViewQuizRecord.option3}',
                                                  maxLines: 6, // you can change it accordingly
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color:
                                                      a[listViewIndex][2] == 0
                                                          ? Colors.black
                                                          : a[listViewIndex]
                                                      [2] ==
                                                          1
                                                          ? Colors.green
                                                          : Colors.red),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 5),
                                  child: InkWell(
                                    onTap: () async {
                                      if (answered[listViewIndex] == false) {
                                        if (listViewQuizRecord.option4 ==
                                            listViewQuizRecord.corrrectAnswer) {
                                          setState(() {
                                            a[listViewIndex][3] = 1;
                                            correctQuestions++;
                                          });
                                        } else {
                                          setState(() {
                                            a[listViewIndex][3] = 2;
                                          });
                                        }
                                        setState(() {
                                          answered[listViewIndex] = true;
                                        });
                                      }
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Container(
                                        constraints: BoxConstraints(minHeight: 40),
                                        width:
                                        MediaQuery.of(context).size.width *
                                            0.9,
                                        //height: 40,
                                        decoration: BoxDecoration(
                                          color: answered[listViewIndex] == true
                                              ? Colors.white54
                                              : Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 4, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'iv. ${listViewQuizRecord.option4}',
                                                  maxLines: 6, // you can change it accordingly
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color:
                                                      a[listViewIndex][3] == 0
                                                          ? Colors.black
                                                          : a[listViewIndex]
                                                      [3] ==
                                                          1
                                                          ? Colors.green
                                                          : Colors.red),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              FFButtonWidget(
                onPressed: () {
                  setState(() {
                    a = [
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                      [0, 0, 0, 0],
                    ];
                    answered = [
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                    ];
                    correctQuestions = 0;
                  });
                },
                text: 'Start again',
                options: FFButtonOptions(
                  width: 100,
                  height: 30,
                  color: Colors.black54,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Spacer(),
              Container(
                height: 50,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Marks - ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$correctQuestions',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
