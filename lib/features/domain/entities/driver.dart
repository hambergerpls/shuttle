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

import 'package:flutter/cupertino.dart';
import 'package:shuttle/features/domain/entities/job.dart';
import 'package:shuttle/features/domain/entities/route.dart';
import 'package:shuttle/features/domain/entities/user.dart';
import 'package:shuttle/features/domain/entities/vehicle.dart';

class Driver extends User {

  final Vehicle vehicle;
  List<TravelRoute> routes = [];
  List<Job> jobs = [];
  
  Driver(String name, String phoneNumber, {required this.vehicle}) : super(name: name, phoneNumber: phoneNumber);

  @override
  List<Object> get props => [name, phoneNumber, wallet, vehicle, routes, jobs];

}