class GeneralExeption implements Exception {
  final String message;
  const GeneralExeption({
    required this.message,
  });
}

class ServerExceptions implements Exception {
  final String message;
  const ServerExceptions({
    required this.message,
  });
}

class StatusCodeException implements Exception {
  final String message;
  const StatusCodeException({
    required this.message,
  });
}

class EmptyExecptions implements Exception {
  final String message;
  const EmptyExecptions({
    required this.message,
  });
}

class Failure {}
