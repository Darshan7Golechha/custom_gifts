// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageDtoImpl _$$MessageDtoImplFromJson(Map<String, dynamic> json) =>
    _$MessageDtoImpl(
      conversationID: json['conversationID'] as String? ?? '',
      users: json['users'] as List<dynamic>? ?? [],
      lastMessage: json['lastMessage'] as String? ?? '',
      lastMessageTime: (json['lastMessageTime'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$MessageDtoImplToJson(_$MessageDtoImpl instance) =>
    <String, dynamic>{
      'conversationID': instance.conversationID,
      'users': instance.users,
      'lastMessage': instance.lastMessage,
      'lastMessageTime': instance.lastMessageTime,
    };
