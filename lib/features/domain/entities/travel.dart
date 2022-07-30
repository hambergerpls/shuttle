// Copyright (C) 2022 Danial Hanif
// 
// This file is part of Shuttle.
// 
// Shuttle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// Shuttle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with Shuttle.  If not, see <http://www.gnu.org/licenses/>.

import 'package:equatable/equatable.dart';
import 'package:shuttle/features/domain/entities/job.dart';
import 'package:shuttle/features/domain/entities/payment_method.dart';
import 'package:shuttle/features/domain/entities/stop.dart';

enum TravelStatus {
  waiting,
  travelling,
  ended,
}

class Travel extends Equatable {

  final PaymentMethod paymentMethod;
  final Stop startPoint;
  final Stop endPoint;
  final Job job;
  final TravelStatus travelStatus;
  
  Travel({required this.paymentMethod, required this.job, required this.startPoint, required this.endPoint, required this.travelStatus});

  
  @override
  List<Object> get props => [paymentMethod, startPoint, endPoint, job];
}