import 'package:drive_calculator/domain/entites/result_calcule.dart';
import 'package:dartz/dartz.dart';  

abstract class ResultCalculeRepository
{
  Future<Either<Exception,double>> calculate(ResultCalcule resultCalcule);
}


