

% Kalman filter 
% Christian Pilley
% 3-3-22

function s = Kalman_Filter(s)
    s.x = s.A * s.x ;
    s.P = s.A * s.P * s.A' + s.Q;
    K = s.P * s.H' * ((s.H * s.P * s.H + s.R)^-1);
    s.x = s.x + K * (s.z - (s.H * s.x));
    s.P = s.P - (K * s.H * s.P);
end