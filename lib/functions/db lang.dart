import 'package:flutter/cupertino.dart';

import '../json/lang_application_list.dart';
import '../json/media_application_list.dart';


ValueNotifier<List<LanguageApplicant>>language_applicant_list=ValueNotifier([]);
ValueNotifier<List<MediaApplicant>>media_applicant_list=ValueNotifier([]);

void addApplicantL(LanguageApplicant val1){
  language_applicant_list.value.add(val1);
  language_applicant_list.notifyListeners();
  //send msg to listner to build the list
  print(val1.toString());

}
void addApplicantM(MediaApplicant val2){
  media_applicant_list.value.add(val2);
  media_applicant_list.notifyListeners();
  //send msg to listner to build the list
  print(val2.toString());

}
