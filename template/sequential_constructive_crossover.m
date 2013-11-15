% low level function for calculating an offspring
% given 2 parent in the Parents - argument
% Parents is a matrix with 2 rows, each row
% represent the genocode of the parent
%
% Input parameters:
%    Parents         - The parents' chromosomes

function Offspring=sequential_constructive_crossover(Parents)
    global Dist;

    Offspring = zeros(1,size(Parents,2));
    Offspring(1) = 1;
    for i = 2 : size(Parents,2)
        [next1, next2] = scxover_searchNextNodes(Parents, Offspring, Offspring(i-1));
        if(Dist(Offspring(i-1),next1) <= Dist(Offspring(i-1),next2))
            Offspring(i) = next1;
        else
            Offspring(i) = next2;
        end
    end
end
    
    

% end function
