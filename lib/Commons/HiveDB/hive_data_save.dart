import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';

class HiveDataSave {
  static final _hiveBox = Hive.box(kDefaultHiveBox);
  static data(
      {var userId = "",
      var emailId = "",
      var fullName = "",
      var phoneNumber = "",
      var userImage = "",
      var address = "",
      var dob = "",
      var gender = "",
      var countryId = "",
      var stateId = "",
      var profession = "",
      var qualification = "",
      var pinCode = "",
      var fatherName = "",
      var userType = "",
      var partnerId = "",
      var orgSector = ""}) {
    debugPrint("-------------------New Hive Input-------------------");
    debugPrint("UserId: " + userId.toString());
    debugPrint("emailId: " + emailId.toString());
    debugPrint("fullName: " + fullName.toString());
    debugPrint("phoneNumber: " + phoneNumber.toString());
    debugPrint("userImage: " + userImage.toString());
    debugPrint("address: " + address.toString());
    debugPrint("dob: " + dob.toString());
    debugPrint("countryId: " + countryId.toString());
    debugPrint("stateId: " + stateId.toString());
    debugPrint("profession: " + profession.toString());
    debugPrint("qualification: " + qualification.toString());
    debugPrint("pinCode: " + pinCode.toString());
    debugPrint("fatherName: " + fatherName.toString());
    debugPrint("userType: " + userType.toString());
    debugPrint("partnerId: " + partnerId.toString());
    debugPrint("orgSector: " + orgSector.toString());
    debugPrint("gender: " + gender.toString());

    debugPrint("-------------------End Hive Input-------------------");

    // if (userId != "" && userId != null) _hiveBox.put(TXT.user_id, userId);
    // if (emailId != "" && emailId != null) _hiveBox.put(TXT.email_id, emailId);
    // if (fullName != "" && fullName != null) {
    //   _hiveBox.put(TXT.full_name, fullName);
    // }
    // if (phoneNumber != "" && phoneNumber != null) {
    //   _hiveBox.put(TXT.phone_no, phoneNumber);
    // }
    // if (userImage != "" && userImage != null) {
    //   _hiveBox.put(TXT.user_image, userImage);
    // }
    // if (address != "" && address != null) _hiveBox.put(TXT.address, address);
    // if (dob != "" && dob != null) _hiveBox.put(TXT.dob, dob);
    // if (gender != "" && gender != null) _hiveBox.put(TXT.gender, gender);
    // if (countryId != "" && countryId != null) {
    //   _hiveBox.put(TXT.country_id, countryId);
    // }
    // if (stateId != "" && stateId != null) _hiveBox.put(TXT.state_id, stateId);
    // if (profession != "" && profession != null) {
    //   _hiveBox.put(TXT.profession, profession);
    // }
    // if (qualification != "" && qualification != null) {
    //   _hiveBox.put(TXT.qualifcation, qualification);
    // }
    // if (pinCode != "" && pinCode != null) _hiveBox.put(TXT.pincode, pinCode);
    // if (fatherName != "" && fatherName != null) {
    //   _hiveBox.put(TXT.father_name, fatherName);
    // }
    // if (userType != "" && userType != null) {
    //   _hiveBox.put(TXT.user_type, userType);
    // }
    // if (partnerId != "" && partnerId != null) {
    //   _hiveBox.put(TXT.partner_id, partnerId);
    // }
    // if (orgSector != "" && orgSector != null) {
    //   _hiveBox.put(TXT.org_sector, orgSector);
    // }
  }
}
