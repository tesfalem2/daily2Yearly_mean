function [Pyearly] = daily2Yearly_mean(P)
% this is a more robust code to convert daily to yearly aggregate by
% accounting lip year variation. It is designed for 1983-2017
P=rand(12786,1);

StartDate = datenum(1983,01,01);
EndDate = datenum(2017,12,31);

YearlyVec = datevec(StartDate:EndDate);
Pyearly = nan(35,1);
for i=1983:2017
    Index_yr = YearlyVec(:,1) == i;
%     Pyearly{i-1982,:} = sum(P(Index_yr,:)); 
    Pyearly(i-1982,:) = mean(P(Index_yr,:)); 
end

% a=1983:2017;
