import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:justice3/models/member_model.dart';
import 'package:meta/meta.dart';

part 'members_list_event.dart';
part 'members_list_state.dart';

class MembersListBloc extends Bloc<MembersListEvent, MembersListState> {
  MembersListBloc() : super(MembersListState.initial()) {
    on<LoadMembersJsonEvent>(_parseJson);
    on<AddMemberEvent>(_addMember);
    on<UpdateMemberEvent>(_updatedMember);
  }

  void _parseJson(
      LoadMembersJsonEvent event, Emitter<MembersListState> emit) async {
    final file = await rootBundle.loadString(event.jsonPath);

    emit(state.copyWith(membersList: membersFromJson(file)));
  }

  void _addMember(AddMemberEvent event, Emitter<MembersListState> emit) {
    final newMembers = [...state.membersList, event.newMember];
    emit(state.copyWith(membersList: newMembers));
  }

  void _updatedMember(UpdateMemberEvent event, Emitter<MembersListState> emit) {
    final updateMembers = state.membersList.map((Member member) {
      if (member.uuid == event.memberUuid) {
        return event.updatedMember;
      }
      return member;
    }).toList();
    emit(state.copyWith(membersList: updateMembers));
  }
}
