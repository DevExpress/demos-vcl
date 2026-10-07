unit dxGanttControlFeaturesDemoStrConsts;

interface

type
  TdxDescriptionInfo = record
    ID: Integer;
    Description: string;
  end;

const
  DescriptionsInfo: array[0..4] of TdxDescriptionInfo =
  ((ID: 0; Description: 'This demo illustrates the Gantt Control with the base Gantt Chart functionality: tasks, ' +
                        'summaries, milestones, and dependencies. The control displays project tasks as horizontal bars ' +
                        'organized in a tree list. You can drag and resize tasks to change their start/end date and ' +
                        'duration, and link them with dependencies.'),
   (ID: 1; Description: 'This demo shows how the Gantt Control manages large amounts of data.'),
   (ID: 2; Description: 'This demo shows how to import ExpressScheduler data to the Gantt Control.'),
   (ID: 3; Description: 'Extended attributes are custom fields that allow a user to add additional data related to tasks ' +
                        'or resources (for instance, the costs related to each task or other supplemental text). ' +
                        'This demo shows how to use custom fields in the task and resource sheets. ' +
                        'Right-click a column header and click "Insert Column" or "More..." in the context menu to add a column.'),
   (ID: 4; Description: 'This demo shows how to compare your current project schedule with the baseline. Go to the Options pane ' +
                        'and select the last saved baseline from the combo box to compare current and planned projects.'));

implementation

end.
