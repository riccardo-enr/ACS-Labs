function bref = betaref(beta,vcog)
    % parameters
    vcog1 = 40; % [m/s]
    b0 = 10; % deg
    b1 = 7; % deg

    % beta max computation
    if vcog >= vcog1
        bmax = b0 - b1*(vcog/vcog1);
    else
        bmax = b0 - b1;
    end

    if abs(beta) <= abs(bmax)
        bref = beta;
    else
        bref = bmax;
    end
end
