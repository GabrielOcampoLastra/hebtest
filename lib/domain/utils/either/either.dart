import 'package:freezed_annotation/freezed_annotation.dart';

part 'either.freezed.dart';

@freezed
sealed class Either<L,R> with _$Either {
  const factory Either.left(L value) = Left;
  const factory Either.right(R value) = Right;
}