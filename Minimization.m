function thetaOpt = Minimization(theta,Data,matrix,Tslut,x0)
    
    MiniFun = @(theta) DiskretOdeSolver(theta,matrix,Tslut,x0);
    
    thetaOpt = lsqnonlin(MiniFun,theta);