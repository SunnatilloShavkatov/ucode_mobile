import 'package:dartz/dartz.dart';
import 'package:ucode_mobile/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {}
