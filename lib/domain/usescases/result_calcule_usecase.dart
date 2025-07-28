// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drive_calculator/domain/entites/result_calcule.dart';
import 'package:drive_calculator/domain/repositories/result_calcule_repository.dart';
import 'package:dartz/dartz.dart';

abstract class ResultCalculeUsecase {
  Future<Either<Exception, double>> call(ResultCalcule resultCalcule);
}

class ResultCalculeUsecaseImpl extends ResultCalculeUsecase {
  @override
  Future<Either<Exception, double>> call(ResultCalcule resultCalcule) {
    try {
      final distance = resultCalcule.endKm - resultCalcule.initialKm;
      if (distance == 0) {
        throw Exception('Distância não pode ser zero');
      }
      final autonomy = distance / (resultCalcule.totalFuel / resultCalcule.priceFuel);
      final cost = autonomy * resultCalcule.priceFuel;
      return Future.value(Right(cost));
    } catch (e) {
      return Future.value(Left(Exception('Erro no cálculo')));
    }
  }
}

// distancia / (precoL * valor abastecido)