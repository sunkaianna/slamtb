function [l, L_rf, L_sf, L_obs, L_n, N] = retroProjLmk(Rob,Sen,Obs,Opt)

    switch Sen.type

        % camera pinHole
        case {'pinHole'}
            % type of lmk to init
            switch Opt.init.initType
                case {'idpPnt'}
                    % INIT LMK OF TYPE: Inverse depth point
                    [l, L_rf, L_sf, L_sk, L_sd, L_obs, L_n] = ...
                        retroProjIdpPntFromPinHoleOnRob( ...
                        Rob.frame, ...
                        Sen.frame, ...
                        Sen.par.k, ...
                        Sen.par.d, ...
                        Obs.meas.y, ...
                        Opt.init.idpPnt.nonObsMean) ;

                    N = Opt.init.idpPnt.nonObsStd^2 ;
        
                case {'hmgPnt'}
                    % INIT LMK OF TYPE: Homogeneous point
                    [l, L_rf, L_sf, L_sk, L_sd, L_obs, L_n] = ...
                        retroProjHmgPntFromPinHoleOnRob( ...
                        Rob.frame, ...
                        Sen.frame, ...
                        Sen.par.k, ...
                        Sen.par.d, ...
                        Obs.meas.y, ...
                        Opt.init.hmgPnt.nonObsMean) ;

                    N = Opt.init.hmgPnt.nonObsStd^2 ;
                
                case {'plkLin'}
                    % INIT LMK OF TYPE: Plucker line
                    [l, L_rf, L_sf, L_sk, L_obs, L_n] = ...
                        retroProjPlkLinFromPinHoleOnRob( ...
                        Rob.frame, ...
                        Sen.frame, ...
                        Sen.par.k, ...
                        Obs.exp.e, ...
                        Opt.init.plkLin.nonObsMean) ;

                    N = diag(Opt.init.plkLin.nonObsStd.^2) ;
                    
                otherwise
                    error('??? Unknown landmark type to initialize ''%s''.',Opt.init.initType)
            end

        otherwise % -- Sen.type
            % Print an error and exit
            error('??? Unknown sensor type. ''%s''.',Sen.type);
    end % -- Sen.type

