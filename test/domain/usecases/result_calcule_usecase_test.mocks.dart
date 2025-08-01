// Mocks generated by Mockito 5.4.6 from annotations
// in drive_calculator/test/domain/usecases/result_calcule_usecase_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:drive_calculator/domain/entites/result_calcule.dart' as _i5;
import 'package:drive_calculator/domain/repositories/result_calcule_repository.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

/// A class which mocks [ResultCalculeRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockResultCalculeRepository extends _i1.Mock
    implements _i3.ResultCalculeRepository {
  @override
  _i4.Future<_i2.Either<Exception, double>> calculate(
    _i5.ResultCalcule? resultCalcule,
  ) =>
      (super.noSuchMethod(
            Invocation.method(#calculate, [resultCalcule]),
            returnValue: _i4.Future<_i2.Either<Exception, double>>.value(
              _FakeEither_0<Exception, double>(
                this,
                Invocation.method(#calculate, [resultCalcule]),
              ),
            ),
            returnValueForMissingStub:
                _i4.Future<_i2.Either<Exception, double>>.value(
                  _FakeEither_0<Exception, double>(
                    this,
                    Invocation.method(#calculate, [resultCalcule]),
                  ),
                ),
          )
          as _i4.Future<_i2.Either<Exception, double>>);
}
