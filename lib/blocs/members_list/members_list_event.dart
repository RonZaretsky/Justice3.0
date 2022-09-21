part of 'members_list_bloc.dart';

@immutable
abstract class MembersListEvent {}

class LoadMembersJsonEvent extends MembersListEvent {
  final String jsonPath;
  LoadMembersJsonEvent({
    required this.jsonPath,
  });
}

class AddMemberEvent extends MembersListEvent {
  final Member newMember;
  AddMemberEvent({
    required this.newMember,
  });
}
