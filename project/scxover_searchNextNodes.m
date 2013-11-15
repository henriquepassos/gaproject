% low level function for calculating an offspring
% given 2 parent in the Parents - argument
% Parents is a matrix with 2 rows, each row
% represent the genocode of the parent
%
% Input parameters:
%    parents         - The parents' chromosomes
%    offspring       - Array with the (incomplete) offspring
%    node            - Current node

function [next1, next2] = scxover_searchNextNodes(parents, offspring, node)
    ind1 = find(parents(1,:) == node) + 1;
    ind2 = find(parents(2,:) == node) + 1;
    sizeCheck = size(parents,2)+1;
    
    if(ind1 == sizeCheck)
            ind1 = 2;
    end
    if(ind2 == sizeCheck)
            ind2 = 2;
    end
    

    while(find(offspring == parents(1,ind1)) ~=  0) 
        ind1 = ind1 + 1;
        if(ind1 == sizeCheck)
            ind1 = 2;
        end
    end
    while(find(offspring == parents(2,ind2)) ~=  0) 
        ind2 = ind2 + 1;
        if(ind2 == sizeCheck)
            ind2 = 2;
        end
    end
    next1 = parents(1,ind1);
    next2 = parents(2,ind2);  
end
    
    

% end function
