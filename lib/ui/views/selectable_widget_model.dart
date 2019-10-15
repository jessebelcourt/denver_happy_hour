//Create a view model for each selectable Widget
class SelectableWidgetViewModel {
  bool isSelected;
  String day;

  SelectableWidgetViewModel(this.day, {this.isSelected = false});
}