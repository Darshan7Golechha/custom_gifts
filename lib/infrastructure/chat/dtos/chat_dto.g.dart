// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatDtoImpl _$$ChatDtoImplFromJson(Map<String, dynamic> json) =>
    _$ChatDtoImpl(
      createdDate: (json['createdDate'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      imageURL: json['imageURL'] as String? ?? '',
      videoURL: json['videoURL'] as String? ?? '',
      voiceURL: json['voiceURL'] as String? ?? '',
      senderUserID: json['senderUserID'] as String? ?? '',
      conversationID: json['conversationID'] as String? ?? '',
    );

Map<String, dynamic> _$$ChatDtoImplToJson(_$ChatDtoImpl instance) =>
    <String, dynamic>{
      'createdDate': instance.createdDate,
      'message': instance.message,
      'imageURL': instance.imageURL,
      'videoURL': instance.videoURL,
      'voiceURL': instance.voiceURL,
      'senderUserID': instance.senderUserID,
      'conversationID': instance.conversationID,
    };
