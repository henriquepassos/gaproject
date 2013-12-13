function script(DATASETS, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, PR_CROSS, PR_MUT, OPT, CROSSOVER, MUTATION, SELECTION, LOCALLOOP, ah1, ah2, ah3)
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
{DATASETS NIND MAXGEN NVAR ELITIST STOP_PERCENTAGE PR_CROSS PR_MUT OPT CROSSOVER MUTATION SELECTION LOCALLOOP}

figure;
hold on;

step = 0.05;
means = zeros(1/step+1,1);
times = 10;
minis = zeros(3,1);
    
for k = 1 : 3
    data = load(['datasets/' DATASETS{k+3}]);
    x=data(:,1)/max([data(:,1);data(:,2)]);y=data(:,2)/max([data(:,1);data(:,2)]);
    NVAR=size(data,1);

    j = 1;
    for i = 0 : step : 1
        means(j) = run(times, x, y, NIND, MAXGEN, NVAR, ELITIST, STOP_PERCENTAGE, i, 0.2167, OPT, CROSSOVER, MUTATION, SELECTION, LOCALLOOP, ah1, ah2, ah3 );
        j = j + 1;
    end

    if(k == 1)
        means = means / 3.35 - 1;
        [x y] = min(means);
        minis(k) = (y-1) * step;
        plot(0:step:1, means,'color','blue');
    elseif (k == 2)
        means = means / 2.973 - 1;
        [x y] = min(means);
        minis(k) = (y-1) * step;
        plot(0:step:1, means,'color','red');
    else
        means = means / 3.2424 - 1;
        [x y] = min(means);
        minis(k) = (y-1) * step;
        plot(0:step:1, means,'color','green');
    end
            
end

xlabel('Elitism');
ylabel('Performance');
legend('rondrit016','rondrit018','rondrit023');

minis

end
