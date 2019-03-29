function Out = GenerateFunction(in,deg)

n = length(in);

if (deg > 5)
    deg = 5;
end

Out = ones(1,3);

ind1 = 2; ind2 = 5; ind3 = 11; ind4 = 21; ind5 = 36;
if (deg >= 1)
    for i = 1:n
        Out(ind1,:) = in(i);
        ind1 = ind1+1;
        if (deg >= 2)
            for j = i:n
                Out(ind2,:) = in(i)*in(j);
                ind2 = ind2+1;
                if (deg >= 3)
                    for k = j:n
                        Out(ind3,:) = in(i)*in(j)*in(k); 
                        ind3 = ind3+1;
                        if (deg >= 4)
                            for h = k:n
                                Out(ind4,:) = in(i)*in(j)*in(k)*in(h);
                                ind4 = ind4+1;
                                if (deg >= 5)
                                    for p = h:n
                                        Out(ind5,:) = in(i)*in(j)*in(k)*in(h)*in(p);
                                        ind5 = ind5+1;
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
%[a,b] = size(Out);
%theta = ones(a,b);

%Out = theta.*Out;