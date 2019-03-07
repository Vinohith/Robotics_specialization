# QUIZ 4

---

<br><br>

**1.** What sensors would you rely on for state estimation in an office building with vertical walls without too much clutter due to furniture when the lighting is poor?

**Ans : ** 

- [x] IMU
- [ ] GPS
- [ ] Cameras
- [x] Laser Scanner

<br><br>

**2.** Given a desired thrust vector
$$
t = \sin(30^\circ) \cos(45^\circ)\mathbf{a_1} + \sin(30^\circ) \sin(45^\circ)\mathbf{a_2} + \cos(30^\circ)\mathbf{a_3}
$$
and a desired yaw angle, 45. Compute the desired rotation matrix, R_des

**Ans : ** 
$$
\left[\begin{array}{cc} 
0.6124 & -0.7071 & 0.3536\\
0.6124 & 0.7071 & 0.3536 \\
-0.5 & 0 & 0.866
\end{array}\right]
$$
<br><br>

**3.** What is the rotation matrix that describes the attitude error if the current rotation matrix is given by R and the desired rotation matrix is R_des:
$$
R = \left[\begin{array}{cc} 
0.7244 & 0.1294 & 0.6771\\
0.6424 & -0.483 & -0.595 \\
0.25 & 0866 & -0.433
\end{array}\right]
$$

$$
R_{des} = \left[\begin{array}{cc} 
0 & 0 & 1\\
1 & 0 & 0 \\
0 & 1 & 0
\end{array}\right]
$$

**Ans : ** 
$$
\left[\begin{array}{cc} 
0.6424 & 0.25 & 0.7244\\
-0.483 & 0.866 & 0.1294 \\
-0.595 & -0.433 & 0.6771
\end{array}\right]
$$
<br><br>

**4.** What sensors are most likely to fail when operating indoors in a building with glass walls?

**Ans : **

- [x] Laser Scanners
- [x] Cameras
- [ ] IMU
- [x] GPS

<br><br>

**5.** What sensors are most likely to fail when the robot is flying outdoors, close to the ground near the wall  of a tall building?

**Ans : ** 

- [ ] IMU
- [x] GPS
- [ ] Cameras
- [ ] Laser Scanners