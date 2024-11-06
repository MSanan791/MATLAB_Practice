clc
clear all
%%
for i=1:1:30
    fprintf("%d", i)
    fprintf(" ")
end

i = 1;
fprintf('\n')
while i<=30
    fprintf('%d',i)
    fprintf(' ')
    i=i+1;
end


%%
fprintf('\n')
for j=1:1:60
    if( mod(j,2)== 0)
                
        fprintf("%d", j)
        fprintf(' ')
    end
end
j=1;
fprintf('\n')
while j<=60
    if( mod(j,2)== 0)
     
        fprintf("%d", j)
        fprintf(' ')
    end
    j=j+1;
end

%%
fprintf('\n')
for k=1:1:60
    if( mod(k,2) ~= 0)
        fprintf("%d", k)
        fprintf(' ')
    end

end

k=1;
fprintf('\n')
while k<=60
    if( mod(k,2)~= 0)
     
        fprintf("%d", k)
        fprintf(' ')
    end
    k=k+1;
end