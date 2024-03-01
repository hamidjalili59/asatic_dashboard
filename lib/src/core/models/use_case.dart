// ignore_for_file: one_member_abstracts

///
abstract class UseCase<R, P> {
  ///
  Future<R?> call({required P param});
}

///
class NoParams {}
