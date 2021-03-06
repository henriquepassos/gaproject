function xovercomparissson(X,Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER, MUTATION, SELECTION, LOCALLOOP, ah1, ah2, ah3)
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
{X Y NIND MAXGEN NVAR ELITIST STOP_PERCENTAGE PR_CROSS PR_MUT OPT CROSSOVER MUTATION SELECTION LOCALLOOP}

figure;
hold on;
times = 5;


%run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER', MUTATION, SELECTION, LOCALLOOP, ah1, ah2, ah3);

 
mean_xalt=run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, 'xalt_edges', MUTATION, SELECTION, LOCALLOOP, ah1, ah2, ah3);
mean_ox=run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, 0.65, 0.2167, OPT, 'orderxover', MUTATION, SELECTION, LOCALLOOP, ah1, ah2, ah3 )   ;
mean_scx=run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, 0.95, 0.2, OPT, 'scxover', MUTATION, SELECTION, LOCALLOOP, ah1, ah2, ah3);
 
plot(1:MAXGEN, mean_xalt,'color','blue');
plot(1:MAXGEN, mean_ox,'color','red');
plot(1:MAXGEN, mean_scx,'color','green');

%mean_inversion=run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, 0.5, 0.1333, OPT, CROSSOVER', 'inversion', SELECTION, LOCALLOOP, ah1, ah2, ah3);
%mean_insertion=run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, 0.45, 0.1667, OPT, CROSSOVER', 'insertion', SELECTION, LOCALLOOP, ah1, ah2, ah3);
%mean_inversioninsertion=run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, 0.33, 0.4167, OPT, CROSSOVER', 'inversioninsertion', SELECTION, LOCALLOOP, ah1, ah2, ah3);

%plot(1:MAXGEN, mean_inversion,'color','blue');
%plot(1:MAXGEN, mean_insertion,'color','red');
%plot(1:MAXGEN, mean_inversioninsertion,'color','green');


%mean_sus=run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER', MUTATION, 'sus', LOCALLOOP, ah1, ah2, ah3);
%mean_prop=run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER, MUTATION, 'proportionate', LOCALLOOP, ah1, ah2, ah3);
%mean_tournament_2=run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER, MUTATION, 'tournament', LOCALLOOP, ah1, ah2, ah3,2);
%mean_tournament_3=run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER, MUTATION, 'tournament', LOCALLOOP, ah1, ah2, ah3,3);
%mean_tournament_4=run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER, MUTATION, 'tournament', LOCALLOOP, ah1, ah2, ah3,4);
%mean_tournament_5=run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER, MUTATION, 'tournament', LOCALLOOP, ah1, ah2, ah3);
%mean_tournament_6=run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER, MUTATION, 'tournament', LOCALLOOP, ah1, ah2, ah3,6);
%mean_tournament_7=run_comparisson(times, X, Y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER, MUTATION, 'tournament', LOCALLOOP, ah1, ah2, ah3,7);


%plot(1:MAXGEN, mean_sus,'color','blue');
%plot(1:MAXGEN, mean_prop,'color','red');
%plot(1:MAXGEN, mean_tournament_2,'color','red');
%plot(1:MAXGEN, mean_tournament_3,'color','blue');
%plot(1:MAXGEN, mean_tournament_4,'color','green');
%plot(1:MAXGEN, mean_tournament_5,'color','green');
%plot(1:MAXGEN, mean_tournament_6,'color','black');
%plot(1:MAXGEN, mean_tournament_7,'color','magenta');

xlabel('Generations');
ylabel('Performance');
legend('alternating edges','order crossover','sequential constructive');
%legend('stochastic universal sampling','fitness proportionate selection','tournament selection (k=5)');
%legend('simple inversion','insertion','inversion')
%legend('k=2','k=3','k=4','k=5', 'k=6', 'k=7');


end
