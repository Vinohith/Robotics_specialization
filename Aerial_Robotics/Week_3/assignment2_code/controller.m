function [ u1, u2 ] = controller(~, state, des_state, params)
%CONTROLLER  Controller for the planar quadrotor
%
%   state: The current state of the robot with the following fields:
%   state.pos = [y; z], state.vel = [y_dot; z_dot], state.rot = [phi],
%   state.omega = [phi_dot]
%
%   des_state: The desired states are:
%   des_state.pos = [y; z], des_state.vel = [y_dot; z_dot], des_state.acc =
%   [y_ddot; z_ddot]
%
%   params: robot parameters

%   Using these current and desired states, you have to compute the desired
%   controls

u1 = 0;
u2 = 0;

% FILL IN YOUR CODE HERE
%Kpy = 5;
Kpy = 200;
Kpz = 1000;

Kvy = 200;
Kvz = 200;

%Kpphi = 250;
%Kvphi = 1000;
Kvphi = 200;
Kpphi = 1000;

ez = des_state.pos(2) - state.pos(2);
ez_dot = des_state.vel(2) - state.vel(2);

ez = des_state.pos(2) - state.pos(2);
ez_dot = des_state.vel(2) - state.vel(2);

ez = des_state.pos(2) - state.pos(2);
ez_dot = des_state.vel(2) - state.vel(2);
u1 = params.mass * (des_state.acc(2) + Kvz*ez_dot + Kpz*ez + params.gravity);

ey = des_state.pos(1) - state.pos(1);
ey_dot = des_state.vel(1) - state.vel(1);
phi = -(des_state.acc(1) + Kvy*ey_dot + Kpy*ey) / (params.gravity);

ephi = 0 - state.rot(1);
ephi_dot = phi - state.omega(1);
u2 = params.Ixx * (Kvphi*ephi_dot + Kpphi*ephi);

end

