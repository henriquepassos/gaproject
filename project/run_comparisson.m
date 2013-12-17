function mean = run_comparisson( times, x, y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER, MUTATION, SELECTION, LOCALLOOP, ah1, ah2, ah3 ,k)
%RUN Summary of this function goes here
%   Detailed explanation goes here
sum = zeros(1,MAXGEN);
for i=1:times
    best = run_ga_comparisson(x, y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER, MUTATION, SELECTION, LOCALLOOP, ah1, ah2, ah3);
    B= best;
    B(B == 0) = NaN;
    minMean=min(B);
    best(best==0) = minMean;
    sum=best+sum;
end
mean = sum/times;
%B= mean;
%B(B == 0) = NaN;
%minMean=min(B);
%mean(mean==0) = minMean;


end

