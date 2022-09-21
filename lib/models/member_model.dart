// To parse this JSON data, do
//
//     final member = memberFromJson(jsonString);

import 'dart:convert';

List<Member> membersFromJson(String str) =>
    List<Member>.from(json.decode(str).map((x) => Member.fromJson(x)));

String memberToJson(List<Member> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Member {
  final String uuid;
  final String fullName;
  final int personalNumber;
  final String memberRank;
  final String phoneNumber;
  final bool isCommander;
  final String lastRegularDay;
  final String lastShabat;
  final String lastHoliday;
  final String beforeLastShabat;
  final String notAvailableUntil;
  final String section;
  final String releaseDate;
  final String kevaDate;
  final int regularDayFreq;
  final int shabatFreq;
  final String birthday;
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
        lastRegularDay: json["lastRegularDay"],
        lastShabat: json["lastShabat"],
        lastHoliday: json["lastHoliday"],
        beforeLastShabat: json["beforeLastShabat"],
        notAvailableUntil: json["notAvailableUntil"],
        section: json["section"],
        releaseDate: json["releaseDate"],
        kevaDate: json["kevaDate"],
        regularDayFreq: json["regularDayFreq"],
        shabatFreq: json["shabatFreq"],
        birthday: json["birthday"],
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
