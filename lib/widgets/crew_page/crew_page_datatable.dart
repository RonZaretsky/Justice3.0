import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:justice3/blocs/members_list/members_list_bloc.dart';
import 'package:justice3/models/member_model.dart';
import 'package:justice3/utils.dart';

Widget BuildDataTable(BuildContext context) {
  final members = context.watch<MembersListBloc>().state.membersList.toList();

  // final members = <Member>[
  // Member(
  //   uuid: 'uuid',
  //   fullName: 'fullName',
  //   personalNumber: 12345,
  //   memberRank: 'memberRank',
  //   phoneNumber: 'phoneNumber',
  //   isCommander: true,
  //   lastRegularDay: DateTime.now(),
  //   lastShabat: DateTime.now(),
  //   lastHoliday: DateTime.now(),
  //   beforeLastShabat: DateTime.now(),
  //   notAvailableUntil: DateTime.now(),
  //   section: 'section',
  //   releaseDate: DateTime.now(),
  //   kevaDate: DateTime.now(),
  //   regularDayFreq: 3,
  //   shabatFreq: 3,
  //   birthday: DateTime.now(),
  // );
  // ];

  final columns = [
    'יום הולדת',
    'סבב שבת',
    'סבב חול',
    'כניסה לקבע',
    'תאריך שחרור',
    'מדור',
    'לא זמין עד',
    'שבת לפני אחרונה',
    'חג אחרון',
    'שבת אחרונה',
    'יום חול אחרון',
    'מפקד',
    'מספר טלפון',
    'דרגה',
    'מספר אישי',
    'שם'
  ];

  return DataTable(
    columns: _getColumns(columns),
    rows: _getUsers(members),
    columnSpacing: 10.0,
  );
}

List<DataColumn> _getColumns(List<String> columns) {
  return columns.map((String column) {
    return DataColumn(label: Text(column));
  }).toList();
}

List<DataRow> _getUsers(List<Member> members) {
  return members.map((Member member) {
    final cells = [
      member.birthday,
      member.shabatFreq,
      member.regularDayFreq,
      member.kevaDate,
      member.releaseDate,
      member.section,
      member.notAvailableUntil,
      member.beforeLastShabat,
      member.lastHoliday,
      member.lastShabat,
      member.lastRegularDay,
      member.isCommander,
      member.phoneNumber,
      member.memberRank,
      member.personalNumber,
      member.fullName
    ];
    return DataRow(
      cells: Utils.modelBuilder(cells, (index, cell) {
        if (cell.runtimeType == DateTime) {
          DateTime dateTime = DateTime.parse(cell.toString());
          final DateFormat formatter = DateFormat('yyyy-MM-dd');
          final String formatted = formatter.format(dateTime);
          return DataCell(Text(formatted));
        }
        return DataCell(Text('$cell'));
      }),
    );
  }).toList();
}
