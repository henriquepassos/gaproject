% Insertion mutation
%

function NewChrom = insertion(OldChrom,Representation);

NewChrom=OldChrom;

if Representation==1 
	NewChrom=adj2path(NewChrom);
end

% select two positions in the tour

rndi=zeros(1,2);

while rndi(1)==rndi(2)
	rndi=rand_int(1,2,[1 size(NewChrom,2)]);
end
%rndi = sort(rndi);
%NewChrom(rndi(1):rndi(2)) = NewChrom(rndi(2):-1:rndi(1));
%NewChrom(rndi(1))=NewChrom(rndi(2));
%NewChrom(rndi(2))=buffer;
to_left = rndi(1)<rndi(2);
for i=min(rndi):max(rndi)
    if i==rndi(2)
        NewChrom(i)=OldChrom(rndi(1));
    elseif to_left
        NewChrom(i)=OldChrom(i+1);
    else
        NewChrom(i)=OldChrom(i-1);

    end
end


if Representation==1
	NewChrom=path2adj(NewChrom);
end


% End of function
