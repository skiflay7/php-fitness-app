SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS workouts;
DROP TABLE IF EXISTS exercises;
DROP TABLE IF EXISTS workout_details;
DROP TABLE IF EXISTS completed_exercises;
SET foreign_key_checks = 1;

CREATE TABLE users(
    userID INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    fname VARCHAR(50),
    lname VARCHAR(50),
    height INT,
    weight INT,
    PRIMARY KEY (userID)
);

CREATE TABLE workouts(
    workoutID INT NOT NULL AUTO_INCREMENT,
    workoutName VARCHAR(50) NOT NULL,
    numExercises INT NOT NULL,
    userID INT NOT NULL,
    workoutDate DATE NOT NULL,
    PRIMARY KEY (workoutID),
    FOREIGN KEY (userID) REFERENCES users(userID)
);

CREATE TABLE exercises(
    exID INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    muscleGroup VARCHAR(20),
    equipment VARCHAR(100),
    PRIMARY KEY (exID)
);

CREATE TABLE workout_details(
    workoutID INT NOT NULL,
    exID INT NOT NULL,
    FOREIGN KEY (workoutID) REFERENCES workouts(workoutID),
    FOREIGN KEY (exID) REFERENCES exercises(exID),
    PRIMARY KEY (workoutID, exID)
);

CREATE TABLE completed_exercises(
    workoutID INT NOT NULL,
    exID INT NOT NULL,
    numSet INT,
    reps INT,
    weight INT,
    FOREIGN KEY (workoutID) REFERENCES workouts(workoutID),
    FOREIGN KEY (exID) REFERENCES exercises(exID),
    PRIMARY KEY (workoutID, exID, numSet)
);

/*********************
* CHEST EXERCISES
*********************/
INSERT INTO exercises VALUES (null, "Flat BB Bench Press", "Chest", "Barbell, Flat Bench Press");
INSERT INTO exercises VALUES (null, "Incline BB Bench Press", "Chest", "Barbell, Incline Bench Press");
INSERT INTO exercises VALUES (null, "Decline BB Bench Press", "Chest", "Barbell, Decline Bench Press");
INSERT INTO exercises VALUES (null, "Flat DB Bench Press", "Chest", "Dumbells, Flat Bench");
INSERT INTO exercises VALUES (null, "Incline DB Bench Press", "Chest", "Dumbells, Incline Bench");
INSERT INTO exercises VALUES (null, "Decline DB Bench Press", "Chest", "Dumbells, Decline Bench");
INSERT INTO exercises VALUES (null, "Flat DB Fly", "Chest", "Dumbells, Flat Bench");
INSERT INTO exercises VALUES (null, "Incline DB Fly", "Chest", "Dumbells, Incline Bench");
INSERT INTO exercises VALUES (null, "Decline DB Fly", "Chest", "Dumbells, Decline Bench");
INSERT INTO exercises VALUES (null, "Cable Fly", "Chest", "Dual Cable Machine");

/*********************
* BACK EXERCISES
*********************/
INSERT INTO exercises VALUES (null, "Bent Over BB Row", "Back", "Barbell");
INSERT INTO exercises VALUES (null, "Bent Over DB Row", "Back", "Dumbells, Flat Bench");
INSERT INTO exercises VALUES (null, "Seated Cable Row", "Back", "Cable Machine, Grip Attachment");
INSERT INTO exercises VALUES (null, "Lat Pull Down (Wide)", "Back", "Lat Pull Down Machine, Wide Bar Attachment");
INSERT INTO exercises VALUES (null, "Lat Pull Down (Close)", "Back", "Lat Pull Down Machine, V-Grip Attachment");
INSERT INTO exercises VALUES (null, "Cable Lat Push Down", "Back", "Single Cable, Flat Bar Attachment");
INSERT INTO exercises VALUES (null, "Deadlift", "Back", "Barbell");

/*********************
* TRICEP EXERCISES
*********************/
INSERT INTO exercises VALUES (null, "DB Kickback", "Triceps", "Dumbells");
INSERT INTO exercises VALUES (null, "Skull Crusher", "Triceps", "EZ-Curl Bar, Flat Bench");
INSERT INTO exercises VALUES (null, "Cable Pushdown", "Triceps", "Single Cable Machine, Bar Attachment");
INSERT INTO exercises VALUES (null, "Close Grip BB Bench Press", "Triceps", "Flat Bench Press, Barbell");
INSERT INTO exercises VALUES (null, "Dips", "Triceps", "Dip Machine/Two Benches");
INSERT INTO exercises VALUES (null, "Overhead Extensions", "Triceps", "Dumbell");
INSERT INTO exercises VALUES (null, "One Arm Overhead Extensions", "Triceps", "Dumbell");

/*********************
* BICEP EXERCISES
*********************/
INSERT INTO exercises VALUES (null, "Alternating DB Curl", "Biceps", "Dumbells");
INSERT INTO exercises VALUES (null, "BB Curl", "Biceps", "Barbell");
INSERT INTO exercises VALUES (null, "Seated Incline DB Curl", "Biceps", "Inclined Bench, Dumbells");
INSERT INTO exercises VALUES (null, "Hammer Curl", "Biceps", "Dumbells");
INSERT INTO exercises VALUES (null, "Cable Curl", "Biceps", "Single Cable Machine, Bar Attachment");
INSERT INTO exercises VALUES (null, "BB Preacher Curl", "Biceps", "Barbell, Preacher Curl Bench");
INSERT INTO exercises VALUES (null, "BB Preacher Curl", "Biceps", "Dumbell, Preacher Curl Bench");

/*********************
* LEG EXERCISES
*********************/
INSERT INTO exercises VALUES (null, "Back Squat", "Legs", "Barbell, Squat Rack");
INSERT INTO exercises VALUES (null, "Front Squat", "Legs", "Barbell, Squat Rack");
INSERT INTO exercises VALUES (null, "Quad Extensions", "Legs", "Quad Extension Machine");
INSERT INTO exercises VALUES (null, "Leg Press", "Legs", "Leg Press Machine");
INSERT INTO exercises VALUES (null, "Hamstring Extensions", "Legs", "Hamstring Extension Machine");
INSERT INTO exercises VALUES (null, "BB Lunges", "Legs", "Barbell");
INSERT INTO exercises VALUES (null, "DB Lunges", "Legs", "Dumbells");
INSERT INTO exercises VALUES (null, "BB Calf Raise", "Legs", "Barbell, Platform");
INSERT INTO exercises VALUES (null, "DB Calf Raise", "Legs", "Dumbells, Platform");

/*********************
* SHOULDER EXERCISES
*********************/
INSERT INTO exercises VALUES (null, "Seated DB Shoulder Press", "Shoulders", "Back-Supporting Bench, Dumbells");
INSERT INTO exercises VALUES (null, "Arnolds", "Shoulders", "Back-Suppoirting Bench, Dumbells");
INSERT INTO exercises VALUES (null, "Lateral Raises", "Shoulders", "Dumbells");
INSERT INTO exercises VALUES (null, "DB Front Delt Raises", "Shoulders", "Dumbells");
INSERT INTO exercises VALUES (null, "EZ-Curl Front Delt Raises", "Shoulders", "EZ-Curl Bar");
INSERT INTO exercises VALUES (null, "Bent Over Rear Delt Fly", "Shoulders", "Dumbells");
INSERT INTO exercises VALUES (null, "Rear Delt Cable Fly", "Shoulders", "Dual Cable Machines, Hand Grip Attachment");
INSERT INTO exercises VALUES (null, "Seated BB Military Press", "Shoulders", "Back-Supporting Bench, Barbell");
INSERT INTO exercises VALUES (null, "Standing BB Military Press", "Shoulders", "Barbell");

COMMIT;