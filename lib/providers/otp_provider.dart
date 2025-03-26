import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OtpProvider extends ChangeNotifier {
  String otpCode = "111111";
  int countdown = 60;
  bool canResend = false;
  Timer? _timer;


  OtpProvider(){
    startCountdown();
  }

  void startCountdown(){
    countdown = 60;
    canResend = false;
    notifyListeners();

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countdown > 0) {
        countdown--;
        notifyListeners();
      } else{
        canResend = true;
        timer.cancel();
        notifyListeners();
      }
    });
  }

  void verfifyCode(){
    if (otpCode.length == 6){
      Fluttertoast.showToast(msg: "OTP Verified: $otpCode");
    } else {
      Fluttertoast.showToast(msg: "Please enter a valid OTP.");
    }
  }

  void resendCode(){
    if (canResend){
      Fluttertoast.showToast(msg: "New OPT Sent!");
      startCountdown();
    }
  }

  void updateOtp(String code){
    otpCode = code;
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

}