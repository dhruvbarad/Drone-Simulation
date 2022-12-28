# Team-010-17-homework04

Hanan Abdirahman (abdir074)

Dhruv Barad (barad019) 

Margaret Degen (degen047)

Ann Huynh (huynh441)

# What is the project about?

The project is about simulating a car-ride sharing application with  self-autonomous vehicles using a Drone. The system behaves similarly to transportation services like Uber and Lyft.   This project offers insight on future implementation of self-autonomous cars for apps like Uber and Lyft. 


# How to run the simulation?
Run the following command line arguments:
## Go to the project directory
cd /path/to/repo/project

## Build the project
make -j

## Run the project (./build/web-app <port> <web folder>)
./build/bin/transit_service 8081 apps/transit_service/web/
Once the project has opened:
Open http://127.0.0.1:8081/
Open http://127.0.0.1:8081/schedule.html
Schedule trip
View battery on terminal


# What does the simulation do?
The user, which is represented as a robot, schedules a trip to where they would like to go on the University of Minnesota - Twin Cities east and west bank. The self-autonomous vehicle, which is represented by a drone, will pick up the robot from where they are located and take them to their destination. 

# New feature
## What does it do?
Our group implemented a battery wrapped around the drone. We added recharge stations for when the drone cannot make a scheduled trip with the amount of percentage left and needs to recharge. When the robot schedules a trip, the drone will calculate the path. It will determine if it needs to go to the nearest recharge station prior to picking up the customer. After recharging, the drone will pick up the customer and complete the scheduled trip.
 
## Why is it significantly interesting?
The new feature adds realism to our simulation. A drone needs a battery in order to run since batteries are not infinitely long lasting. The drone will recharge before picking up a robot like how Ubers never get gas when they are driving customers.

## How does it add to existing work?
Adding a battery to the drone builds on the realistic aspect of our simulation. Any kind of vehicle cannot run infinitely. Having to go to a recharge station before or after a trip is the reality that drivers experience. This impacts the path that the drone would take prior to the battery implementation. Before, the drone would pick up the robot and take it to its destination. Now, the drone must calculate if it has enough charge to make the duration of going to the robots location, taking the robot to its desired location, and from the desired location to a recharging station or the next scheduled trip. 


## Which design pattern did you choose to implement it and why?
We used the decorator design pattern to implement the battery wrapped around the drone. The decorator pattern allows attaching new behaviors to objects by placing them inside special wrapper objects that contain the behavior. The simulation is fully functional with the removal of the battery since it is not a key component. Also, we used the factory design pattern for the recharging stations. The factory design pattern provides an interface for creating objects and letting subclasses to alter the type of objects that will be created. It allows for easier extension of the recharge stations to the simulation independently from the rest of the code. 


## Instruction to use the new feature
Run the simulation as instructed above. The battery implementation is not user-interactable. Once a trip is scheduled, the drone will determine if it has enough battery to make the trip. If it does, it will pick up the robot and take them to their desired location. If not, the drone will go to a recharge station before picking up the robot.

# Sprint Retrospective

(Ann) create tasks for the sprint and add them to the Jira board.

(Meg + Dhruv): added recharge stations + added them on graph

(Hanan): created base decorator class and battery class.

(Hanan + Meg): wrapped the battery around the drone.

(All): Fixed a segmentation fault in the Battery class so that we can implement movement logic.

(Meg): Strategy to move the drone to the recharge station.

(Dhruv+Meg+Ann): met for discussing logic

(Hanan): Doxygen/comments/google style coding

(Ann): Readme writeup

(Dhruv+Meg): Did live share pair programming to complete all distance functions, update logic, and fix all errors.

## What went well?
Pair programming: One person would share their screen while the others made suggestions on what to change or implement during the sprint. 
Live share: We would frequently screen share to work on the battery implementation. No one was ever working alone. 
Group discussion on logic: We were able to communicate whether via text or group call to discuss logic for the battery implementation.

## What went wrong?
Time scheduling/manangment: There were times in the sprint when all members could not meet to discuss issues and work on the backlog. 
Unrealistic expectations of obtainable goals for this sprint: This sprint we started off with too many goals that could not be achieved in the time frame we had.

## What can be improved for future sprints?
More scheduled check-ins on how the sprint is going. Looking forward, we could schedule check-ins and worktime at the beginning of the sprint. For example, we could schedule to meet every Friday at 4pm. 
Starting off with more realistic goals at the beginning of the sprint and adding more to the backlog if all goals are completed before the sprint cycle is complete.  In the future we should try to manage our expectations of obtainable goals.
ideas for future sprints? 
Multiple drones: We could add more “drivers” to our simulation to help relieve demand.
Weather system: We could add a weather system that would impact the drones path and/or ability to drive.
Color changing: We could add color changing to the battery to indicate battery levels.


## Video Link
https://drive.google.com/file/d/1Q-HR8JegYCKsf597EdaIXoDJF9Y1AXj3/view?usp=sharing
## UML: 
https://drive.google.com/file/d/1oWgoGVQyQsJIbrqaz8wAhyuyss7wm_tp/view

## Link to the docker: 
https://hub.docker.com/repository/docker/hananmabdirahman/homework04-finished

