import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:justice3/blocs/members_list/members_list_bloc.dart';
import 'package:justice3/global/crew_page_consts.dart';
import 'package:justice3/models/member_model.dart';
import 'package:justice3/utils.dart';

class BuildDataTable extends StatefulWidget {
  const BuildDataTable({Key? key}) : super(key: key);

  @override
  State<BuildDataTable> createState() => _BuildDataTableState();
}

class _BuildDataTableState extends State<BuildDataTable> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // _context = context;
    final members = context.watch<MembersListBloc>().state.membersList.toList();

    return DataTable(
      dividerThickness: 3.0,
      headingRowHeight: 80,
      horizontalMargin: 10.0,
      dataRowHeight: 80,
      headingRowColor: MaterialStateColor.resolveWith(
          (states) => Colors.black.withOpacity(0.3)),
      headingTextStyle:
          const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      columns: _getColumns(columns),
      rows: _getUsers(members),
      columnSpacing: 10.0,
    );
  }

  List<DataColumn> _getColumns(List<String> columns) {
    return columns.map((String column) {
      return DataColumn(
          label: Expanded(child: Text(column, textAlign: TextAlign.center)));
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
            final DateFormat formatter = DateFormat('dd-MM-yyyy');
            final String formatted = formatter.format(dateTime);
            return _buildDataCell(formatted, index, cell, member);
          }
          return _buildDataCell('$cell', index, cell, member);
        }),
      );
    }).toList();
  }

  DataCell _buildDataCell(String data, int index, Object? cell, Member member) {
    return DataCell(
        Center(
            child: Text(
          data,
          textAlign: TextAlign.center,
        )), onDoubleTap: () {
      switch (cell.runtimeType) {
        case String:
          _editStringIntType(member, index);
          break;
        case int:
          _editStringIntType(member, index);
          break;
        case DateTime:
          _editDateType(member, index);
          break;
      }
    });
  }

  Future _editStringIntType(Member member, int index) async {
    final newData = await showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(
          columns[index],
          textAlign: TextAlign.center,
        ),
        content: TextFormField(
          // initialValue: _whatAttributeToEditStringInt(member, index),
          controller: controller,
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(controller.text);
              },
              child: Text('אישור'))
        ],
      ),
    );
    _updateMemberIfStringInt(member, index, newData);
  }

  Future _editDateType(Member member, int index) async {
    final newData = await showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(
          columns[index],
          textAlign: TextAlign.center,
        ),
        content: DatePickerDialog(
          firstDate: DateTime.parse('19700101'),
          lastDate: DateTime.parse('30000101'),
          initialDate: _whatDateToEdit(member, index),
        ),
      ),
    );
  }

  DateTime _whatDateToEdit(Member member, int index) {
    switch (index) {
      case 0:
        return member.birthday;
      case 3:
        return member.kevaDate;
      case 4:
        return member.releaseDate;
      case 6:
        return member.notAvailableUntil;
      case 7:
        return member.beforeLastShabat;
      case 8:
        return member.lastHoliday;
      case 9:
        return member.lastShabat;
      case 10:
        return member.lastRegularDay;
      default:
        return DateTime.now();
    }
  }

  String _whatAttributeToEditStringInt(Member member, int index) {
    switch (index) {
      case 1:
        return member.shabatFreq.toString();
      case 2:
        return member.regularDayFreq.toString();
      case 5:
        return member.section.toString();
      case 12:
        return member.phoneNumber.toString();
      case 13:
        return member.memberRank.toString();
      case 14:
        return member.personalNumber.toString();
      case 15:
        return member.fullName.toString();
      default:
        return '';
    }
  }

  void _updateMemberIfStringInt(Member member, int index, String newData) {
    switch (index) {
      case 1:
        member.shabatFreq = int.parse(newData);
        break;

      case 2:
        member.regularDayFreq = int.parse(newData);
        break;

      case 5:
        member.section = newData;
        break;

      case 12:
        member.phoneNumber = newData;
        break;

      case 13:
        member.memberRank = newData;
        break;

      case 14:
        member.personalNumber = int.parse(newData);
        break;

      case 15:
        member.fullName = newData;
        break;

      default:
        break;
    }
    context
        .read<MembersListBloc>()
        .add(UpdateMemberEvent(updatedMember: member, memberUuid: member.uuid));
  }
}
