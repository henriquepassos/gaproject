% SUS.M          (Stochastic Universal Sampling)
%
% This function performs selection with tournament selection
%
% Syntax:  NewChrIx = sus(FitnV, Nsel)
%
% Input parameters:
%    FitnV     - Column vector containing the fitness values of the
%                individuals in the population.
%    Nsel      - number of individuals to be selected
%
% Output parameters:
%    NewChrIx  - column vector containing the indexes of the selected
%                individuals relative to the original population, shuffled.
%                The new population, ready for mating, can be obtained
%                by calculating OldChrom(NewChrIx,:).


function NewChrIx = tournament(FitnV,Nsel)
    NewChrIx = zeros(Nsel,1);
    k=5;
% Identify the population size (Nind)
   [Nind,ans] = size(FitnV);
% Perform tournament selection
   for i = 1 : Nsel,
       indices = randi(Nind, k, 1);
       selIndex = -1;
       for j = 1 : k
           if(selIndex == -1 || FitnV(indices(j)) > FitnV(selIndex))
               selIndex = indices(j);
           end
       end
       NewChrIx(i) = selIndex;
   end

% Shuffle new population
   [ans, shuf] = sort(rand(Nsel, 1));
   NewChrIx = NewChrIx(shuf);


% End of function
