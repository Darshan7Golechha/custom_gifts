import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/infrastructure/user/datasource/user_remote.dart';
import 'package:flutter_application_1/locator.dart';
import 'package:http/http.dart' as http;

class MailingService {
  static const String mailTypeWelcome = 'welcome';
  static const String mailTypeCommentAlbum = 'commentAlbum';
  static const String mailTypeCommentPost = 'commentPost';
  static const String mailTypeSubscriber = 'commentSubscriber';

  final String domain = 'CG.com';
  final String apiKey = 'bdbac3c0a5e9fb68e818e06906fa5e4e-1c7e8847-f731aeca';

  Future<void> sendMail(
    String toUserID,
    String type, {
    String postID = '',
    String albumID = '',
    String userID = '',
  }) async {
    try {
      final user =
          (await locator<UserRemoteDataSource>().getUser(toUserID)).toDomain();

      final String apiUrl = 'https://api.mailgun.net/v3/$domain/messages';

      final Map<String, dynamic> requestBody = getDetails(user.email, type);

      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Authorization': 'Basic ${base64Encode(utf8.encode('api:$apiKey'))}',
        },
        body: requestBody,
      );

      if (response.statusCode == 200) {
        debugPrint('Message sent successfully');
        debugPrint(jsonDecode(response.body));
      } else {
        debugPrint('Failed to send message');
        debugPrint('Response status: ${response.statusCode}');
        debugPrint('Response body: ${response.body}');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Map<String, dynamic> getDetails(String email, String type,
      {String postID = '', String albumID = '', String userID = ''}) {
    String html = '';
    String subject = '';

    switch (type) {
      case MailingService.mailTypeWelcome:
        subject = 'Welcome to CG';
        html =
            '<html lang=""><img src="https://firebasestorage.googleapis.com/v0/b/myse-8.appspot.com/o/my_secrets%2Fmysec(r).png?alt=media&token=506e857a-0df6-4819-926e-0e7d014a9397" alt=""/> </html>';
        //'<p style="text-align: center;color: #6d6f72;"><strong><span style="color: rgb(0, 0, 0);"> &nbsp;</span></strong><span style="color: rgb(0, 0, 0);"><strong>WELCOME</strong></span></p> <p style="text-align: center;color: #6d6f72;"><span style="color: rgb(0, 0, 0);">Video Meetings, Conferences &amp; Picture Sharing</span></p> <p><span style="color: rgb(0, 0, 0);">Welcome to CG world! Here you can express and impress with no boundaries. With us you will love every facet of your individuality! Like Diamond everyone has so many different angles...</span></p> <p><span style="color: rgb(0, 0, 0);">Send Messages Create Albums Live Stream Upload Videos Map Search</span></p> <p><span style="color: rgb(0, 0, 0);"><strong>*Surprise</strong><strong>&nbsp;</strong><strong>Audiences</strong><strong>&nbsp;</strong><strong>with</strong><strong>&nbsp;</strong><strong>Awesome</strong><strong>&nbsp;</strong><strong>posts</strong></span></p> <p style="color: #6d6f72;"><span style="color: rgb(0, 0, 0);">Don&rsquo;t forget to complete the veriﬁcation process to unlock all the in application features.</span></p> <p><span style="color: rgb(0, 0, 0);"><br></span></p> <p style="text-align: center;color: #6d6f72;"><span style="color: rgb(0, 0, 0);"><strong>Let&rsquo;s</strong><strong>&nbsp;</strong></span><strong><span style="color: rgb(0, 0, 0);">Connect</span></strong></p>';
        break;
      case MailingService.mailTypeCommentPost:
        subject = 'Someone commented on your Post!';
        html =
            '<div>     <div>         <div>             <div><br></div>         </div>Hope this email finds you well. <br><br>We wanted to inform you that there&apos;s a new comment on your recent post. <br><br>View the comment <a data-fr-linked="true" href="http://CG.com/page/notifications">here</a> <br><br>Engaging with your audience helps foster a sense of community and adds value to the content you share. Feel free to reply directly to the comment or moderate it if necessary. <br><br>Thank you for being an active member of our community. If you have any questions or need further assistance, please don&apos;t hesitate to reach out.     </div> </div>';
        break;
      case MailingService.mailTypeCommentAlbum:
        subject = 'Someone commented on your Album!';
        html =
            '<div>     <div>         <div>             <div><br></div>         </div>Hope this email finds you well. <br><br>We wanted to inform you that there&apos;s a new comment on your recent album. <br><br>View the comment <a data-fr-linked="true" href="http://CG.com/page/notifications">here</a> <br><br>Engaging with your audience helps foster a sense of community and adds value to the content you share. Feel free to reply directly to the comment or moderate it if necessary. <br><br>Thank you for being an active member of our community. If you have any questions or need further assistance, please don&apos;t hesitate to reach out.     </div> </div>';
        break;
      case MailingService.mailTypeSubscriber:
        subject = 'Hurray! You have a new subscriber';
        html =
            '<div>     <div>         <div>             <div><br></div>         </div>Hope this email finds you well. <br><br>We wanted to inform you that someone subscribed to your profile. <br><br>View the subscriber <a href="http://CG.com/page/notifications">here</a><br><br>Thank you for being an active member of our community. If you have any questions or need further assistance, please don&apos;t hesitate to reach out.     </div> </div>';

        break;
      default:
        subject = '';
        html = '';
        break;
    }

    return {
      'from': 'CG Team <team@CG.com>',
      'to': email,
      'subject': subject,
      'html': html,
    };
  }
}
