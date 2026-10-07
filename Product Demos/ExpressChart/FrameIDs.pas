unit FrameIDs;

interface

const
  HighlightFeaturesGroupIndex = 0;
  ChartViewsGroupIndex = 1;

  ChartControlLineID = 1;
  ChartControlAreaID = 2;
  ChartControlBarID = 3;
  ChartControlPieID = 4;
  ChartControlDoughnutID = 5;
  ChartControlMultipleDiagramsID = 6;
  ChartControlSecondaryAxesID = 7;
  ChartControlLogarithmicAxesID = 8;

  StartFrameID = ChartControlSecondaryAxesID;

resourcestring
  ChartControlLineName = 'Line';
  ChartControlAreaName = 'Area';
  ChartControlBarName = 'Bar';
  ChartControlPieName = 'Pie';
  ChartControlDoughnutName = 'Doughnut';
  ChartControlMultipleDiagramsName = 'Multiple Views';
  ChartControlSecondaryAxes = 'Secondary Axes';
  ChartControlLogarithmicAxes = 'Logarithmic Scale';

implementation

end.
