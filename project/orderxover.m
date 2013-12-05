% Order crossover for TSP
%
% Syntax:  NewChrom = seqconstxover(OldChrom, XOVR)
%
% Input parameters:
%    OldChrom  - Matrix containing the chromosomes of the old
%                population. Each line corresponds to one individual
%                (in any form, not necessarily real values).
%    XOVR      - Probability of recombination occurring between pairs
%                of individuals.
%
% Output parameter:
%    NewChrom  - Matrix containing the chromosomes of the population
%                after mating, ready to be mutated and/or evaluated,
%                in the same format as OldChrom.


function NewChrom = orderxover(OldChrom, XOVR)

    NewChrom= crossover_path(OldChrom,XOVR,'order_crossover');



end

