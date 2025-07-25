
import 'package:dartz/dartz.dart';
import 'package:drive_calculator/domain/entites/result_calcule.dart';
import 'package:drive_calculator/domain/repositories/result_calcule_repository.dart';
import 'package:drive_calculator/domain/usescases/result_calcule_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'result_calcule_usecase_test.mocks.dart';


main() {

  final usecase = ResultCalculeUsecaseImpl();
  test('should return a double when calculate is called', () async {
    
    final result = await usecase.call(
      ResultCalcule(
        priceFuel: 5.0,
        totalFuel: 20.0,
        initialKm: 100.0,
        endKm: 200.0,
      ),  
    );
    
    expect(result, isA<Right<Exception, double>>());
    expect(result.getOrElse(() => 0.0), 100.0);
  });

  test('should return an exception when calculate fails', () async {
  
    
    final result = await usecase.call(
      ResultCalcule(
        priceFuel: 0.0,  
        totalFuel: 20.0,
        initialKm: 100.0,
        endKm: 200.0,
      ),
    );
    
    expect(result, isA<Left<Exception, double>>());
    expect(result.fold((l) => l, (r) => r), isA<Exception>());
  });
}