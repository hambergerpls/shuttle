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
import 'package:shuttle/features/domain/entities/travel.dart';

class Transaction extends Equatable {

  final double amount;
  final Travel travel;
  final DateTime datetime;

  const Transaction({required this.travel, required this.amount, required this.datetime});

  @override
  List<Object> get props => [travel, amount];

}