abstract class Result<T> {}

class Success<T> extends Result<T> {
  Success(this.data);
  final T data;
}

class Error<T> extends Result<T> {
  Error(this.errorCode);
  final String errorCode;
}