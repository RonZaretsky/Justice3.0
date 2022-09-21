part of 'members_list_bloc.dart';

class MembersListState {
  final List<Member> membersList;
  MembersListState({
    required this.membersList,
  });

  factory MembersListState.initial() => MembersListState(membersList: []);

  @override
  List<Object> get props => [membersList];

  @override
  String toString() => 'MembersListState(membersList: $membersList)';

  MembersListState copyWith({
    List<Member>? membersList,
  }) {
    return MembersListState(
      membersList: membersList ?? this.membersList,
    );
  }
}
