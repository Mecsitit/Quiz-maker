import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../forgot_password/forgot_password_widget.dart';
import '../home_student/home_student_widget.dart';
import '../register/register_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailAddressController;
  TextEditingController passwordController;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          'assets/images/logoTranslation@3x.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 140,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F4F8),
                            ),
                            alignment: AlignmentDirectional(-1, 0),
                            child: Text(
                              'Sign In',
                              style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF090F13),
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 200),
                                  reverseDuration: Duration(milliseconds: 200),
                                  child: RegisterWidget(),
                                ),
                              );
                            },
                            child: Container(
                              width: 140,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFF1F4F8),
                              ),
                              alignment: AlignmentDirectional(-1, 0),
                              child: Text(
                                'Sign Up',
                                style:
                                FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF95A1AC),
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Get started by creating an account below.',
                            style:
                            FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF57636C),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
                      child: TextFormField(
                        controller: emailAddressController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          hintStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                          EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF1D2429),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: !passwordVisibility,
                        decoration: InputDecoration(
                          labelStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          hintStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                          EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                                  () => passwordVisibility = !passwordVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              passwordVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Color(0xFF95A1AC),
                              size: 22,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF1D2429),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // FlutterFlowIconButton(
                    //   borderColor: Colors.transparent,
                    //   borderRadius: 30,
                    //   borderWidth: 1,
                    //   buttonSize: 50,
                    //   fillColor: Color(0xFFDBE2E7),
                    //   icon: FaIcon(
                    //     FontAwesomeIcons.google,
                    //     color: Color(0xFF57636C),
                    //     size: 20,
                    //   ),
                    //   onPressed: () async {
                    //     final user = await signInWithGoogle(context);
                    //     if (user == null) {
                    //       return;
                    //     }
                    //     await Navigator.pushAndRemoveUntil(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => HomeStudentWidget(),
                    //       ),
                    //           (r) => false,
                    //     );
                    //   },
                    // ),
                    FFButtonWidget(
                      onPressed: () async {
                        final user = await signInWithEmail(
                          context,
                          emailAddressController.text,
                          passwordController.text,
                        );
                        if (user == null) {
                          return;
                        }

                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeStudentWidget(),
                          ),
                              (r) => false,
                        );
                      },
                      text: 'Login',
                      options: FFButtonOptions(
                        width: 150,
                        height: 50,
                        color: Color(0xFF090F13),
                        textStyle:
                        FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ],
                ),
              ),
              Container(height: 100,),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 24),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPasswordWidget(),
                          ),
                        );
                      },
                      text: 'Forgot Password?',
                      options: FFButtonOptions(
                        width: 170,
                        height: 40,
                        color: Color(0xFFDBE2E7),
                        textStyle: FlutterFlowTheme.of(context).subtitle2,
                        elevation: 0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).gray200,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
              Container(height: 400,),
            ],
          ),
        ),
      ),
    );
  }
}
