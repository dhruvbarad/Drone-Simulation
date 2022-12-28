## Contributors (Group of 4)
Dhruv Barad

Meg Degen

Ann Huynh

Hanan Abdirahman

## What is the project about?
This project is a simulation to represent a drone delivery system. The simulation allows users to schedule trips of robots from source to destination. This simulation represents a Uber-like system where instead of cars, we used drones and instead of customers, we used robots.

## How to run the simulation
This simulation can be run through docker. 

You can pull the image using the command "docker pull dbarad/dronesimulation".

Once the image is build, you can run the container with the command "docker run -it --rm -p 8081:8081 dronesimulation".

This will start the webserver. Now navigate to "localhost:8081" on a web browser on your machine to see the simulation.

To schedule a trip, you have to navigate to the scheduling page (localhost:8081/schedule.html). When a trip is scheduled, you can navigate back to the home page and see the drone picking up the robot. Drone will also recharge if needed to complete the trip. On the home page, you can select views of different entities (drone/robot/recharge station).


