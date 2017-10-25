# Particle-Swarm-Optimization
This program uses Particle swarm Optimization to find the Global Minima of a function.\
Fitness Function Used: Six hump Camel Back Function\
Given by

![camel62](https://user-images.githubusercontent.com/15217992/31983530-3fb56da2-b97b-11e7-873b-1a2496240275.png)\
where x1 and x2 are the two variables.\
-3<x1<3\
-2<x2<2\

A 2D matrix of dimension 50x7 is taken. Each row corresponds to one swarm. Thus there are total 50 swarms. The first two columns gives the position of each swarm. The 3rd and 4th column gives the pbest. The 5th and 6th column gives the updated velocity components of the swarm along x1 and x2 axes. Finally the last cloumn gives the gbest value of the fitness function.\

Snapshots provided below shows the swarm's tracking of the global minima. Here u=x1, v=x2

![screenshot from 2017-10-24 21-08-28](https://user-images.githubusercontent.com/15217992/31983928-168a365e-b97d-11e7-81fb-ed12acf21916.png)
![screenshot from 2017-10-24 21-08-56](https://user-images.githubusercontent.com/15217992/31983931-1792b4ae-b97d-11e7-951d-7e3dc3fb682a.png)
![screenshot from 2017-10-24 21-09-15](https://user-images.githubusercontent.com/15217992/31983932-180707d2-b97d-11e7-9346-02a4ff2a776a.png)
![screenshot from 2017-10-24 21-09-40](https://user-images.githubusercontent.com/15217992/31983937-19615a9c-b97d-11e7-8bdf-7522317804dc.png)
![screenshot from 2017-10-24 20-31-43](https://user-images.githubusercontent.com/15217992/31983927-15c2ee32-b97d-11e7-9605-cd84fc5cc660.png)
