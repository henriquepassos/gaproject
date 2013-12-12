function script(x, y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER, MUTATION, SELECTION, LOCALLOOP, ah1, ah2, ah3)
% usage: script(x, y, 
%               NIND, MAXGEN, NVAR, 
%               ELITIST, STOP_PERCENTAGE, 
%               PR_CROSS, PR_MUT, CROSSOVER, 
%               ah1, ah2, ah3)
%
%
% x, y: coordinates of the cities
% NIND: number of individuals
% MAXGEN: maximal number of generations
% ELITIST: percentage of elite population
% STOP_PERCENTAGE: percentage of equal fitness (stop criterium)
% PR_CROSS: probability for crossover
% PR_MUT: probability for mutation
% OPT: the optional parameter for the selection operator
% CROSSOVER: the crossover operator
% SELECTION: the selection operator
% calculate distance matrix between each pair of cities
% ah1, ah2, ah3: axes handles to visualise tsp
{NIND MAXGEN NVAR ELITIST STOP_PERCENTAGE PR_CROSS PR_MUT OPT CROSSOVER MUTATION SELECTION LOCALLOOP}

means = zeros(21);
times = 5;
j = 1;
for i = 0 : 0.05 : 1
    means(j) = run(times, x, y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, i, OPT, CROSSOVER, MUTATION, SELECTION, LOCALLOOP, ah1, ah2, ah3 );
end

plot(0:0.05:1, means);


end
