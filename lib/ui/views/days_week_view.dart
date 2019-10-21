import 'package:denver_happy_hour/ui/views/selectable_widget_model.dart';
import 'package:flutter/material.dart';

import './days_week.dart';

class DaysWeekView extends StatelessWidget {

    final List<String> days = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ];
  
  @override
  Widget build(BuildContext context) {
    return new SelectableWidget(
      new SelectableWidgetViewModel(isSelected: false, day: days[0])
    );
  }
}