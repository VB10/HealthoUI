import 'package:flutter/material.dart';
import 'package:healthoui/ui/shared/theme.dart';
import 'package:healthoui/ui/shared/ui_helper.dart';
import 'package:healthoui/ui/shared/widget/button/rounded_text_button.dart';
import 'package:healthoui/ui/shared/widget/card/rounded_rectange_card.dart';
import 'package:healthoui/ui/shared/widget/dropdown/custom_dropdown_button.dart';
import 'package:healthoui/ui/shared/widget/padding/base_padding_enum.dart';
import './find_workout_plan_view_model.dart';

class FindWorkoutPlanView extends FindWorkoutPlanViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      appBar: UIHelper.appBar("Find a Workout Plan"),
      body: Padding(
        padding: EdgeInsets.all(SpaceValue.LOW),
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 20,
            children: <Widget>[
              goalDropDown,
              levelDropDown,
              weeksDropDown,
              goalDropDown,
              findWorkoutButton
            ],
          ),
        ),
      ),
    );
  }

  Widget get findWorkoutButton => RoundedTextButton(
        spaceLevel: BasePaddingLevel.LOW,
        title: "Find Workout Plan",
        color: yellowSearchCardColor,
        onPressed: () {},
      );

  Widget paddingDropDown(Widget child) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: SpaceValue.VERY_LOW_HALF, horizontal: SpaceValue.MEDIUM),
      child: child,
    );
  }

  Widget get goalDropDown => RoundedRectangleCard(
          child: paddingDropDown(
        CustomDropDownButton(
          values: ["Choose Level", "1", "2"],
        ),
      ));

  Widget get levelDropDown => RoundedRectangleCard(
        child: paddingDropDown(
          CustomDropDownButton(
            values: ["No of week", "1", "2"],
          ),
        ),
      );

  Widget get weeksDropDown => RoundedRectangleCard(
        child: paddingDropDown(
          CustomDropDownButton(
            values: ["Days per Week", "1", "2"],
          ),
        ),
      );

  Widget get daysDropDown => RoundedRectangleCard(
        child: paddingDropDown(
          CustomDropDownButton(
            values: ["Choose Goal", "1", "2"],
          ),
        ),
      );
}

// before dropdown
// DropdownButton<String>(
//         isExpanded: true,
//         onChanged: (val) {},
//         value: "Choose Goal",
//         items: [
//           DropdownMenuItem(
//             child: Text("1"),
//             value: "Choose Goal",
//           ),
//           DropdownMenuItem(
//             child: Text("1"),
//             value: "1",
//           )
//         ],
//       )

// before dropdown

// Widget get findWorkoutButton => RoundedTextButton(
//       spaceLevel: BasePaddingLevel.LOW,
//       title: "Find Workout Plan",
//       color: yellowSearchCardColor,
//       onPressed: () {},
//     );

// Widget get goalDropDown => RoundedRectangleCard(
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//             vertical: SpaceValue.VERY_LOW_HALF,
//             horizontal: SpaceValue.MEDIUM),
//         child: CustomDropDownButton(
//           values: ["Choose Level", "1", "2"],
//         ),
//       ),
//     );

// Widget get levelDropDown => RoundedRectangleCard(
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//             vertical: SpaceValue.VERY_LOW_HALF, horizontal: SpaceValue.MEDIUM),
//         child: CustomDropDownButton(
//           values: ["No of week", "1", "2"],
//         ),
//       ),
//     );

// Widget get weeksDropDown => RoundedRectangleCard(
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//             vertical: SpaceValue.VERY_LOW_HALF, horizontal: SpaceValue.MEDIUM),
//         child: CustomDropDownButton(
//           values: ["Days per Week", "1", "2"],
//         ),
//       ),
//     );

// Widget get daysDropDown => RoundedRectangleCard(
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//             vertical: SpaceValue.VERY_LOW_HALF, horizontal: SpaceValue.MEDIUM),
//         child: CustomDropDownButton(
//           values: ["Choose Goal", "1", "2"],
//         ),
//       ),
//     );
