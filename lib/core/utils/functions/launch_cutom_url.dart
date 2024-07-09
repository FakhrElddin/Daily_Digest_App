import 'package:daily_digest/core/utils/functions/show_toast_message.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, {required String url}) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    showToastMessage(
      context,
      message: 'Cannot launch $url',
      state: ToastStates.error,
    );
  }
}
