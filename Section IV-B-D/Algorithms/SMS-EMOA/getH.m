function H = getH(M,N)
%this function is used to get the value of H 

H = 1;
    while nchoosek(H+M,M-1) <= N
        H = H + 1;
    end

end

