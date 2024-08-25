
import '../model/servings_model.dart';

class SampleServingsDataSource{

  final sampleServings = [
    const ServingsModel(
        habitName: 'Eat Rainbow',
        completeStatus: 'Practicing',
        progressPercent: 0.6,
        servingsValue:'*average servings',
        servingList:[ [3, 0], [2, 0],[1, 0],[5, 0],[4, 0],[2, 0],[1, 0]],
        avgValue:'2.6',
        percentage: '60%'
    ),
    const ServingsModel(
        habitName: 'Meditate',
        completeStatus: 'Practicing',
        progressPercent: 1,
        servingsValue:'*average time(in min)',
        servingList:[ [20, 0], [10, 0],[5, 0],[10, 0],[0, 0],[25, 0],[8, 0]],
        avgValue:'11.1',
        percentage: '100%'
    ),
    const ServingsModel(
        habitName: 'Eat Slowly',
        completeStatus: 'Habit',
        progressPercent: 1,
        servingsValue:'*average time(in min)',
        servingList:[ [3, 0], [10, 0],[5, 0],[10, 0],[0, 0],[12, 0],[8, 0]],
        avgValue:'6.9',
        percentage: '100%'
    ),
    const ServingsModel(
        habitName: 'Reduced Fast Food',
        completeStatus: 'Habit',
        progressPercent: .75,
        servingsValue:'*Times per day(avg)',
        servingList:[ [1, 0], [2, 0],[0, 0],[1, 0],[3, 0],[1, 0],[0, 0]],
        avgValue:'6.9',
        percentage: '75%'
    ),
    const ServingsModel(
        habitName: 'Smart Drink Choices',
        completeStatus: 'Practicing',
        progressPercent: 1,
        servingsValue:'*Sweetened drinks consumed daily (avg)',
        servingList:[ [1, 0], [2, 0],[0, 0],[1, 0],[3, 0],[1, 0],[0, 0]],
        avgValue:'1.1',
        percentage: '100%'
    ),
    const ServingsModel(
        habitName: 'Healthy Snacks',
        completeStatus: 'Practicing',
        progressPercent: .2,
        servingsValue:'*Healthy Snacks',
        servingList:[ [1, 0], [2, 0],[0, 0],[1, 0],[3, 0],[1, 0],[0, 0]],
        avgValue:'1.1',
        percentage: '20%'
    ),
    const ServingsModel(
        habitName: 'Smart Intermittent Feeding',
        completeStatus: 'Practicing',
        progressPercent: .3,
        servingsValue:'*Hours without calories(daily)',
        servingList:[ [7, 0], [8, 0],[8, 0],[10, 0],[7, 0],[12, 0],[8, 0]],
        avgValue:'1.1',
        percentage: '30%'
    ),
    const ServingsModel(
        habitName: 'Reduced Toxins',
        completeStatus: 'Practicing',
        progressPercent: .1,
        servingsValue:'*Products with toxins used in household',
        servingList:[ [10, 0], [8, 0],[-2, 0]],
        avgValue:'0',
        percentage: '10%'
    ),
  ];
}