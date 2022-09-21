// To parse this JSON data, do
//
//     final member = memberFromJson(jsonString);

import 'dart:convert';

List<Member> membersFromJson(String str) =>
    List<Member>.from(json.decode(str).map((x) => Member.fromJson(x)));

String memberToJson(List<Member> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Member {
  String uuid;
  String fullName;
  int personalNumber;
  String memberRank;
  String phoneNumber;
  bool isCommander;
  DateTime lastRegularDay;
  DateTime lastShabat;
  DateTime lastHoliday;
  DateTime beforeLastShabat;
  DateTime notAvailableUntil;
  String section;
  DateTime releaseDate;
  DateTime kevaDate;
  int regularDayFreq;
  int shabatFreq;
  DateTime birthday;
  Member({
    required this.uuid,
    required this.fullName,
    required this.personalNumber,
    required this.memberRank,
    required this.phoneNumber,
    required this.isCommander,
    required this.lastRegularDay,
    required this.lastShabat,
    required this.lastHoliday,
    required this.beforeLastShabat,
    required this.notAvailableUntil,
    required this.section,
    required this.releaseDate,
    required this.kevaDate,
    required this.regularDayFreq,
    required this.shabatFreq,
    required this.birthday,
  });

  factory Member.fromJson(Map<String, dynamic> json) => Member(
        uuid: json["uuid"],
        fullName: json["fullName"],
        personalNumber: json["personalNumber"],
        memberRank: json["memberRank"],
        phoneNumber: json["phoneNumber"],
        isCommander: json["isCommander"],
        lastRegularDay: DateTime.parse(json["lastRegularDay"]),
        lastShabat: DateTime.parse(json["lastShabat"]),
        lastHoliday: DateTime.parse(json["lastHoliday"]),
        beforeLastShabat: DateTime.parse(json["beforeLastShabat"]),
        notAvailableUntil: DateTime.parse(json["notAvailableUntil"]),
        section: json["section"],
        releaseDate: DateTime.parse(json["releaseDate"]),
        kevaDate: DateTime.parse(json["kevaDate"]),
        regularDayFreq: json["regularDayFreq"],
        shabatFreq: json["shabatFreq"],
        birthday: DateTime.parse(json["birthday"]),
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "fullName": fullName,
        "personalNumber": personalNumber,
        "memberRank": memberRank,
        "phoneNumber": phoneNumber,
        "isCommander": isCommander,
        "lastRegularDay": lastRegularDay,
        "lastShabat": lastShabat,
        "lastHoliday": lastHoliday,
        "beforeLastShabat": beforeLastShabat,
        "notAvailableUntil": notAvailableUntil,
        "section": section,
        "releaseDate": releaseDate,
        "kevaDate": kevaDate,
        "regularDayFreq": regularDayFreq,
        "shabatFreq": shabatFreq,
        "birthday": birthday,
      };

  @override
  String toString() {
    return 'Member(uuid: $uuid fullName: $fullName personalNumber: $personalNumber, memberRank: $memberRank, phoneNumber: $phoneNumber, isCommander: $isCommander, lastRegularDay: $lastRegularDay, lastShabat: $lastShabat, lastHoliday: $lastHoliday, beforeLastShabat: $beforeLastShabat, notAvailableUntil: $notAvailableUntil, section: $section, releaseDate: $releaseDate, kevaDate: $kevaDate, regularDayFreq: $regularDayFreq, shabatFreq: $shabatFreq, birthday: $birthday)';
  }
}
