import 'package:flutter/material.dart';
import '../models/selected_days_model.dart';

import './days_week.dart';

class DaysWeekView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new SelectableWidget(
      new SelectedDaysModel()
    );
  }
}