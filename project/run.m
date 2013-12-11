function mean = run( times, x, y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER, MUTATION, SELECTION, LOCALLOOP, ah1, ah2, ah3 )
%RUN Summary of this function goes here
%   Detailed explanation goes here
sum = 0;
for i=1:times
    best = run_ga_novisuals(x, y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER, MUTATION, SELECTION, LOCALLOOP, ah1, ah2, ah3);
    sum=best+sum;
end
mean = sum/times;

end

