function psidref = psidref(vcog,vcogd,bref)
    % parameters
    aymax = 8*us;

    psidmax = 1/(vcog*cos(bref))*(aymax - vcogd*sin(bref))

    if abs(psid) <= abs(psidmax)
        psidref = psid
    else 
        psidref = psidmax
    end
end