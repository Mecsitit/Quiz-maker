import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../play_game/play_game_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddQuestionWidget extends StatefulWidget {
  const AddQuestionWidget({
    Key key,
    this.quizTitle,
  }) : super(key: key);

  final QuizTitleRecord quizTitle;

  @override
  _AddQuestionWidgetState createState() => _AddQuestionWidgetState();
}

class _AddQuestionWidgetState extends State<AddQuestionWidget> {
  TextEditingController answer1Controller;
  TextEditingController questionController;
  TextEditingController answer2Controller;
  TextEditingController answer3Controller;
  TextEditingController answer4Controller;
  TextEditingController correctAnswerController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    answer1Controller = TextEditingController();
    questionController = TextEditingController();
    answer2Controller = TextEditingController();
    answer3Controller = TextEditingController();
    answer4Controller = TextEditingController();
    correctAnswerController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Create MCQ',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Outfit',
                color: Color(0xFF14181B),
                fontSize: 28,
                fontWeight: FontWeight.normal,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 48,
              icon: Icon(
                Icons.close_rounded,
                color: Color(0xFF57636C),
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                        child: TextFormField(
                          controller: questionController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Question',
                            hintText: 'Question',
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF57636C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF1F4F8),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF1F4F8),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1.override(
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
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                        child: TextFormField(
                          controller: answer1Controller,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Answer1',
                            hintText: 'Answer1',
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF57636C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF1F4F8),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF1F4F8),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF14181B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                        child: TextFormField(
                          controller: answer2Controller,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Answer2',
                            hintText: 'Answer2',
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF57636C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF1F4F8),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF1F4F8),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF14181B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                        child: TextFormField(
                          controller: answer3Controller,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Answer3',
                            hintText: 'Answer3',
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF57636C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF1F4F8),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF1F4F8),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF14181B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                        child: TextFormField(
                          controller: answer4Controller,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Answer4',
                            hintText: 'Answer4',
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF57636C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF1F4F8),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF1F4F8),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF14181B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                        child: TextFormField(
                          controller: correctAnswerController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Correct Answer',
                            hintText: 'Correct Answer',
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF57636C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF1F4F8),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF1F4F8),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF14181B),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 16),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final quizCreateData = createQuizRecordData(
                              question: questionController.text,
                              option1: answer1Controller.text,
                              option2: answer2Controller.text,
                              option3: answer3Controller.text,
                              option4: answer4Controller.text,
                              corrrectAnswer: correctAnswerController.text,
                              user: currentUserReference,
                              quiztitle: widget.quizTitle.reference,
                              questionNumber: widget.quizTitle.numberOfQyestions,
                            );
                            await QuizRecord.collection.doc().set(quizCreateData);
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PlayGameWidget(
                                  quizDetail: widget.quizTitle,
                                ),
                              ),
                            );
                          },
                          text: 'Add Question',
                          options: FFButtonOptions(
                            width: 270,
                            height: 50,
                            color: Color(0xFF4B39EF),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(height: 300,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
