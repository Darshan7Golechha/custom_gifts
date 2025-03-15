//ignore: unused-code
class MockException implements Exception {
  final String message;
  const MockException({this.message = ''});
}

class ServerException implements Exception {
  //ignore: unused-code
  final int code;
  final String message;
  const ServerException({this.code = 0, this.message = ''});
}

class CacheException implements Exception {
  final String message;
  const CacheException({required this.message});
}

class OtherException implements Exception {
  final String message;
  const OtherException({this.message = ''});
}

class DownloadErrorException implements Exception {
  const DownloadErrorException();
}
