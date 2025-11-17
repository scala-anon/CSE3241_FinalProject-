--
-- File generated with SQLiteStudio v3.4.17 on Sun Nov 2 19:03:02 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Checks_Out
CREATE TABLE Checks_Out (
    rental_id     INTEGER,
    equipment_id  INTEGER,
    check_out_date DATE,
    PRIMARY KEY (rental_id, equipment_id),
    FOREIGN KEY (rental_id) REFERENCES Rentals(rental_id),
    FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id)
);
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (33, 5, '2025-06-09');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (22, 4, '2025-09-03');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (5, 16, '2025-05-02');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (25, 37, '2025-02-23');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (24, 49, '2025-03-26');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (17, 32, '2025-03-08');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (16, 21, '2025-08-24');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (39, 7, '2025-04-24');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (10, 51, '2025-06-13');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (23, 30, '2025-01-14');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (34, 1, '2025-08-20');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (8, 48, '2025-02-23');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (14, 38, '2025-04-15');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (18, 46, '2025-10-12');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (15, 46, '2025-02-10');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (26, 10, '2025-07-09');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (16, 57, '2025-06-04');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (20, 1, '2025-03-01');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (32, 48, '2025-06-04');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (33, 12, '2025-03-25');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (22, 55, '2025-08-13');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (24, 45, '2025-09-24');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (19, 38, '2025-04-18');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (12, 13, '2025-07-31');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (3, 2, '2025-05-27');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (6, 58, '2025-04-19');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (30, 28, '2025-01-04');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (35, 42, '2025-04-29');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (14, 50, '2025-03-21');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (12, 3, '2025-04-27');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (36, 55, '2025-03-05');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (7, 52, '2025-05-08');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (7, 4, '2025-06-28');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (25, 1, '2025-08-13');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (13, 34, '2025-08-03');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (11, 19, '2025-04-30');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (30, 36, '2025-04-26');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (13, 12, '2025-10-24');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (37, 22, '2025-05-29');
INSERT INTO Checks_Out (rental_id, equipment_id, check_out_date) VALUES (16, 61, '2025-01-27');

-- Table: Deliveries
CREATE TABLE Deliveries (
    delivery_id      INTEGER PRIMARY KEY,
    pickup_time      DATETIME,
    delivery_time    DATETIME,
    status           TEXT,
    distance_traveled REAL,
    drone_id         INTEGER,
    delivery_type    TEXT,
    user_addr        TEXT,
    purchase_id      INTEGER,
    rental_id        INTEGER,
    FOREIGN KEY (drone_id) REFERENCES Drone(drone_id),
    FOREIGN KEY (purchase_id) REFERENCES Purchases(purchase_id),
    FOREIGN KEY (rental_id) REFERENCES Rentals(rental_id)
);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (1, '2025-01-24 16:02:00', '2025-01-24 20:02:00', 'In Transit', 121.55, 38, 'Rental', '6898 Elm Rd, Columbus, OH', NULL, 20);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (2, '2025-02-15 09:47:00', '2025-02-15 14:47:00', 'Delivered', 101.59, 28, 'Rental', '2057 Maple Ave, Cincinnati, OH', NULL, 2);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (3, '2025-10-13 13:43:00', '2025-10-13 16:43:00', 'Delayed', 12.84, 27, 'Rental', '3850 Oak St, Columbus, OH', NULL, 8);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (4, '2025-01-10 11:12:00', '2025-01-10 15:12:00', 'In Transit', 133.83, 25, 'Purchase', '7216 Oak St, Columbus, OH', 29, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (5, '2025-07-15 11:56:00', '2025-07-15 15:56:00', 'Delivered', 79.69, 36, 'Rental', '6572 Pine Dr, Toledo, OH', NULL, 30);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (6, '2025-08-08 13:34:00', '2025-08-08 15:34:00', 'In Transit', 100.17, 10, 'Purchase', '9666 Oak St, Cincinnati, OH', 6, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (7, '2025-08-20 12:12:00', '2025-08-20 16:12:00', 'Delivered', 133.42, 25, 'Purchase', '1957 Maple Ave, Columbus, OH', 33, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (8, '2025-03-24 16:55:00', '2025-03-24 19:55:00', 'In Transit', 3.1, 13, 'Purchase', '5345 Pine Dr, Cincinnati, OH', 32, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (9, '2025-12-20 15:57:00', '2025-12-20 19:57:00', 'Delivered', 19.79, 36, 'Purchase', '6515 Elm Rd, Cleveland, OH', 32, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (10, '2025-05-06 10:33:00', '2025-05-06 14:33:00', 'Delayed', 10.68, 7, 'Rental', '3850 Oak St, Columbus, OH', NULL, 11);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (11, '2025-12-05 14:52:00', '2025-12-05 16:52:00', 'In Transit', 99.6, 4, 'Rental', '8617 Pine Dr, Cleveland, OH', NULL, 30);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (12, '2025-03-28 14:22:00', '2025-03-28 15:22:00', 'In Transit', 19.0, 33, 'Purchase', '7548 Oak St, Dayton, OH', 34, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (13, '2025-05-03 10:18:00', '2025-05-03 11:18:00', 'Delayed', 31.06, 11, 'Rental', '1350 Cedar Ln, Cleveland, OH', NULL, 14);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (14, '2025-03-12 10:16:00', '2025-03-12 13:16:00', 'Delivered', 100.16, 26, 'Purchase', '6572 Pine Dr, Toledo, OH', 5, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (15, '2025-10-28 15:20:00', '2025-10-28 18:20:00', 'Delayed', 54.83, 9, 'Purchase', '9959 Maple Ave, Cleveland, OH', 13, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (16, '2025-06-24 14:36:00', '2025-06-24 17:36:00', 'Delayed', 44.83, 33, 'Purchase', '5345 Pine Dr, Cincinnati, OH', 40, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (17, '2025-07-03 09:37:00', '2025-07-03 14:37:00', 'In Transit', 113.02, 22, 'Purchase', '9791 Maple Ave, Dayton, OH', 9, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (18, '2025-04-16 14:08:00', '2025-04-16 19:08:00', 'In Transit', 99.57, 32, 'Rental', '3850 Oak St, Columbus, OH', NULL, 5);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (19, '2025-04-12 11:45:00', '2025-04-12 13:45:00', 'Delivered', 21.28, 31, 'Rental', '7548 Oak St, Dayton, OH', NULL, 9);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (20, '2025-04-14 16:08:00', '2025-04-14 17:08:00', 'Delivered', 132.9, 27, 'Rental', '6879 Elm Rd, Cincinnati, OH', NULL, 18);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (21, '2025-10-17 13:21:00', '2025-10-17 16:21:00', 'In Transit', 90.8, 3, 'Purchase', '3003 Elm Rd, Cleveland, OH', 26, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (22, '2025-03-24 14:01:00', '2025-03-24 19:01:00', 'In Transit', 119.3, 23, 'Rental', '9791 Maple Ave, Dayton, OH', NULL, 25);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (23, '2025-07-08 13:25:00', '2025-07-08 16:25:00', 'In Transit', 57.62, 3, 'Purchase', '7682 Cedar Ln, Cleveland, OH', 15, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (24, '2025-12-21 09:15:00', '2025-12-21 14:15:00', 'Delivered', 68.31, 1, 'Purchase', '168 Oak St, Columbus, OH', 26, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (25, '2025-09-27 14:40:00', '2025-09-27 15:40:00', 'In Transit', 24.84, 12, 'Purchase', '2057 Maple Ave, Cincinnati, OH', 17, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (26, '2025-02-11 15:55:00', '2025-02-11 17:55:00', 'Delayed', 107.23, 20, 'Rental', '2095 Oak St, Cincinnati, OH', NULL, 11);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (27, '2025-07-01 14:02:00', '2025-07-01 18:02:00', 'In Transit', 75.63, 29, 'Purchase', '7216 Oak St, Columbus, OH', 24, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (28, '2025-05-26 10:18:00', '2025-05-26 14:18:00', 'In Transit', 133.15, 36, 'Purchase', '7682 Cedar Ln, Cleveland, OH', 31, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (29, '2025-01-10 10:48:00', '2025-01-10 14:48:00', 'Delayed', 45.21, 18, 'Rental', '6572 Pine Dr, Toledo, OH', NULL, 10);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (30, '2025-01-18 16:43:00', '2025-01-18 18:43:00', 'Delivered', 117.2, 11, 'Purchase', '9693 Pine Dr, Cleveland, OH', 39, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (31, '2025-11-21 12:05:00', '2025-11-21 14:05:00', 'Delayed', 71.15, 33, 'Rental', '6879 Elm Rd, Cincinnati, OH', NULL, 17);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (32, '2025-08-01 14:49:00', '2025-08-01 16:49:00', 'In Transit', 65.86, 18, 'Purchase', '7049 Maple Ave, Cincinnati, OH', 32, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (33, '2025-01-08 11:20:00', '2025-01-08 14:20:00', 'In Transit', 49.82, 19, 'Purchase', '2523 Cedar Ln, Cleveland, OH', 21, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (34, '2025-01-27 09:18:00', '2025-01-27 13:18:00', 'Delayed', 123.56, 18, 'Purchase', '3104 Maple Ave, Columbus, OH', 25, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (35, '2025-08-20 09:43:00', '2025-08-20 13:43:00', 'In Transit', 28.43, 37, 'Rental', '9283 Elm Rd, Cleveland, OH', NULL, 2);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (36, '2025-01-18 08:10:00', '2025-01-18 12:10:00', 'In Transit', 125.02, 26, 'Rental', '9693 Pine Dr, Cleveland, OH', NULL, 2);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (37, '2025-09-23 11:37:00', '2025-09-23 13:37:00', 'Delivered', 139.87, 9, 'Purchase', '9791 Maple Ave, Dayton, OH', 21, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (38, '2025-12-18 09:47:00', '2025-12-18 10:47:00', 'Delivered', 134.25, 25, 'Purchase', '3104 Maple Ave, Columbus, OH', 2, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (39, '2025-07-01 16:43:00', '2025-07-01 19:43:00', 'In Transit', 39.66, 1, 'Purchase', '2057 Maple Ave, Cincinnati, OH', 15, NULL);
INSERT INTO Deliveries (delivery_id, pickup_time, delivery_time, status, distance_traveled, drone_id, delivery_type, user_addr, purchase_id, rental_id) VALUES (40, '2025-04-02 16:41:00', '2025-04-02 17:41:00', 'Delayed', 24.47, 20, 'Rental', '168 Oak St, Columbus, OH', NULL, 19);

-- Table: Delivers
CREATE TABLE Delivers (
    drone_id     INTEGER,
    equipment_no INTEGER,
    PRIMARY KEY (drone_id, equipment_no),
    FOREIGN KEY (drone_id) REFERENCES Drone(drone_id),
    FOREIGN KEY (equipment_no) REFERENCES Equipment(equipment_id)
);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (15, 36);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (27, 34);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (26, 44);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (31, 61);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (11, 53);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (6, 7);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (7, 2);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (29, 56);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (30, 33);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (26, 43);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (16, 7);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (25, 56);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (5, 30);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (40, 3);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (11, 50);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (7, 33);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (20, 18);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (15, 34);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (22, 21);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (40, 54);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (23, 41);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (36, 45);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (24, 12);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (7, 7);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (5, 28);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (6, 41);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (11, 39);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (2, 9);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (32, 50);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (11, 15);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (15, 13);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (32, 27);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (1, 31);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (13, 16);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (18, 34);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (3, 40);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (23, 9);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (34, 32);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (12, 11);
INSERT INTO Delivers (drone_id, equipment_no) VALUES (9, 34);

-- Table: Drone
CREATE TABLE Drone (
    drone_id            INTEGER PRIMARY KEY,
    name                TEXT,
    model               TEXT,
    serial_number       TEXT UNIQUE,
    status              TEXT,
    location            TEXT,
    manufacturer        TEXT,
    year                INTEGER,
    weight_capacity     REAL,
    distance_autonomy   REAL,
    max_speed           REAL,
    warranty_expiration DATE,
    warehouse_id        INTEGER,
    FOREIGN KEY (warehouse_id) REFERENCES Warehouse(warehouse_id)
);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (1, 'Not2Bad', '1/6/1900', 'SN10000', 'Maintenance', 'Columbus', 'DroneFac', 2001, 150.0, 193.0, 75.0, '1/20/2025', 4);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (2, 'AvgDrone', '1/7/1900', 'SN10001', 'Active', 'Cleveland', 'ValueDrone', 2021, 75.0, 166.0, 95.0, '10/14/2026', 3);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (3, 'Zipster95', '1/1/1900', 'SN10002', 'Maintenance', 'Cleveland', 'DroneFac', 2023, 2.0, 131.0, 65.0, '3/27/2026', 7);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (4, 'OldFaithful', '1/7/1900', 'SN10003', 'Maintenance', 'Toledo', 'ValueDrone', 2020, 140.0, 86.0, 65.0, '11/19/2027', 5);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (5, 'OldFaithful', '1/1/1900', 'SN10004', 'Maintenance', 'Toledo', 'DroneFac', 2021, 100.0, 79.0, 80.0, '1/20/2025', 4);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (6, '80Dr', '1/6/1900', 'SN10005', 'Maintenance', 'Toledo', 'DroneFac', 2023, 140.0, 63.0, 60.0, '1/20/2025', 3);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (7, 'AvgDrone', '1/1/1900', 'SN10006', 'Inactive', 'Cleveland', 'DroneFac', 2021, 150.0, 78.0, 70.0, '8/26/2024', 2);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (8, 'OldFaithful', '1/2/1900', 'SN10007', 'Inactive', 'Columbus', 'HitDrone', 2001, 115.0, 49.0, 90.0, '7/23/2026', 2);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (9, 'AvgDrone', '1/2/1900', 'SN10008', 'Active', 'Cincinnati', 'ValueDrone', 2021, 100.0, 144.0, 60.0, '11/8/2024', 4);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (10, 'OldFaithful', '1/1/1900', 'SN10009', 'Maintenance', 'Cincinnati', 'ForeverDrone', 2023, 85.0, 42.0, 70.0, '7/23/2026', 4);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (11, 'OldFaithful', '1/7/1900', 'SN10010', 'Maintenance', 'Columbus', 'ValueDrone', 2023, 100.0, 69.0, 70.0, '8/26/2024', 1);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (12, 'OldFaithful', '1/7/1900', 'SN10011', 'Active', 'Dayton', 'ValueDrone', 2020, 100.0, 144.0, 65.0, '11/19/2027', 5);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (13, 'OldFaithful', '1/4/1900', 'SN10012', 'Active', 'Dayton', 'ValueDrone', 2023, 115.0, 166.0, 70.0, '1/20/2025', 1);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (14, 'iDrone', '1/1/1900', 'SN10013', 'Active', 'Toledo', 'HitDrone', 2021, 125.0, 177.0, 70.0, '11/8/2024', 1);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (15, 'AvgDrone', '1/1/1900', 'SN10014', 'Inactive', 'Cleveland', 'DroneFac', 2020, 115.0, 49.0, 95.0, '1/20/2025', 2);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (16, 'AvgDrone', '1/7/1900', 'SN10015', 'Maintenance', 'Toledo', 'HitDrone', 2020, 75.0, 199.0, 95.0, '11/8/2024', 3);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (17, 'AvgDrone', '1/6/1900', 'SN10016', 'Maintenance', 'Dayton', 'HitDrone', 2023, 75.0, 184.0, 95.0, '8/26/2024', 2);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (18, 'Zipster95', '1/2/1900', 'SN10017', 'Active', 'Dayton', 'HitDrone', 2021, 100.0, 172.0, 70.0, '3/27/2026', 6);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (19, 'iDrone', '1/4/1900', 'SN10018', 'Inactive', 'Toledo', 'HitDrone', 2021, 115.0, 29.0, 85.0, '11/19/2027', 1);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (20, '75Dr', '1/1/1900', 'SN10019', 'Inactive', 'Cincinnati', 'ValueDrone', 2001, 100.0, 57.0, 85.0, '10/14/2026', 6);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (21, 'AvgDrone', '1/1/1900', 'SN10020', 'Inactive', 'Dayton', 'ForeverDrone', 2021, 85.0, 31.0, 65.0, '11/19/2027', 3);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (22, 'OldFaithful', '1/1/1900', 'SN10021', 'Maintenance', 'Cincinnati', 'ForeverDrone', 2023, 150.0, 71.0, 95.0, '11/19/2027', 2);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (23, 'Not2Bad', '1/2/1900', 'SN10022', 'Maintenance', 'Cincinnati', 'ValueDrone', 2020, 85.0, 167.0, 65.0, '1/20/2025', 5);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (24, 'iDrone', '1/1/1900', 'SN10023', 'Active', 'Toledo', 'HitDrone', 2020, 100.0, 51.0, 80.0, '1/20/2025', 4);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (25, 'OldFaithful', '1/2/1900', 'SN10024', 'Maintenance', 'Toledo', 'manfact', 2023, 100.0, 92.0, 65.0, '7/23/2026', 4);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (26, 'Zipster95', '1/1/1900', 'SN10025', 'Maintenance', 'Cincinnati', 'ForeverDrone', 2023, 140.0, 73.0, 95.0, '1/20/2025', 4);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (27, 'OldFaithful', '1/7/1900', 'SN10026', 'Inactive', 'Cincinnati', 'ValueDrone', 2001, 115.0, 165.0, 80.0, '1/20/2025', 7);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (28, 'AvgDrone', '1/7/1900', 'SN10027', 'Maintenance', 'Columbus', 'ValueDrone', 2023, 140.0, 185.0, 65.0, '11/8/2024', 1);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (29, '80Dr', '1/2/1900', 'SN10028', 'Active', 'Columbus', 'HitDrone', 2001, 75.0, 77.0, 9.0, '3/27/2026', 6);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (30, 'Zipster95', '1/2/1900', 'SN10029', 'Inactive', 'Toledo', 'ValueDrone', 2020, 100.0, 161.0, 95.0, '10/14/2026', 5);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (31, 'Zipster95', '1/2/1900', 'SN10030', 'Maintenance', 'Toledo', 'ForeverDrone', 2023, 115.0, 113.0, 75.0, '8/26/2024', 3);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (32, 'Zipster95', '1/1/1900', 'SN10031', 'Active', 'Dayton', 'DroneFac', 2020, 115.0, 37.0, 95.0, '11/8/2024', 3);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (33, 'OldFaithful', '1/1/1900', 'SN10032', 'Inactive', 'Columbus', 'HitDrone', 2023, 100.0, 113.0, 85.0, '11/19/2027', 7);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (34, 'AvgDrone', '1/7/1900', 'SN10033', 'Inactive', 'Toledo', 'ForeverDrone', 2001, 125.0, 120.0, 85.0, '10/14/2026', 1);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (35, '75Dr', '1/4/1900', 'SN10034', 'Active', 'Cleveland', 'DroneFac', 2021, 115.0, 48.0, 80.0, '8/26/2024', 2);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (36, '75Dr', '1/1/1900', 'SN10035', 'Maintenance', 'Columbus', 'ValueDrone', 2001, 100.0, 124.0, 60.0, '10/14/2026', 5);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (37, 'Zipster95', '1/1/1900', 'SN10036', 'Inactive', 'Dayton', 'ForeverDrone', 2001, 100.0, 73.0, 65.0, '11/19/2027', 6);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (38, 'Zipster95', '1/1/1900', 'SN10037', 'Active', 'Toledo', 'HitDrone', 2023, 115.0, 80.0, 75.0, '10/14/2026', 4);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (39, '80Dr', '1/7/1900', 'SN10038', 'Active', 'Cleveland', 'ValueDrone', 2021, 150.0, 31.0, 90.0, '8/26/2024', 4);
INSERT INTO Drone (drone_id, name, model, serial_number, status, location, manufacturer, year, weight_capacity, distance_autonomy, max_speed, warranty_expiration, warehouse_id) VALUES (40, '80Dr', '1/6/1900', 'SN10039', 'Maintenance', 'Toledo', 'ValueDrone', 2001, 75.0, 108.0, 70.0, '11/19/2027', 1);

-- Table: Equipment
CREATE TABLE Equipment (
    equipment_id        INTEGER PRIMARY KEY,
    description         TEXT,
    type                TEXT,
    model               TEXT,
    year                INTEGER,
    serial_number       TEXT UNIQUE,
    status              TEXT,
    location            TEXT,
    dimensions          TEXT,
    weight              REAL,
    manufacturer        TEXT,
    warranty_expiration DATE,
    warehouse_id        INTEGER,
    FOREIGN KEY (warehouse_id) REFERENCES Warehouse(warehouse_id)
);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (1, 'Painting Essentials', 'Electric', 'nan', 2020, 'EQ10000', 'Available', 'Dayton', '13x19x31', 20.0, 'Water!', '2028-09-20', 2);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (2, 'Clean Those Pipes Package', 'Gardening', 'nan', 2022, 'EQ10001', 'Under Maintenance', 'Toledo', '50x16x31', 15.0, 'GardenTogether', '2026-12-31', 1);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (3, 'ComNetwork Standard Package', 'Plumbing', 'nan', 2023, 'EQ10002', 'Under Maintenance', 'Toledo', '50x14x20', 40.0, 'Water!', '2028-09-20', 4);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (4, 'Clean Those Pipes Package', 'Plumbing', '2.0', 2010, 'EQ10003', 'In Use', 'Cleveland', '15x25x42', 20.0, 'ConstructionABC', '2026-12-31', 4);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (5, 'Painting Essentials', 'Gardening', '6.0', 2008, 'EQ10004', 'Available', 'Cincinnati', '22x11x23', 10.0, 'Paint4Fun', '2028-09-20', 6);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (6, 'Water Irrigation Basics Package', 'Gardening', '5.0', 2010, 'EQ10005', 'Available', 'Columbus', '21x40x38', 20.0, 'Water!', '2027-05-15', 4);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (7, 'Gardening Basics Package', 'Painting', '4.0', 2019, 'EQ10006', 'In Use', 'Dayton', '20x16x23', 20.0, 'ElectricDance', '2026-12-31', 5);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (8, 'Water Irrigation Basics Package', 'Watering', '2.0', 2019, 'EQ10007', 'In Use', 'Columbus', '40x16x49', 20.0, 'Plumbing''r''Us', '2028-09-20', 6);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (9, 'Painting Essentials', 'Gardening', 'nan', 2019, 'EQ10008', 'Available', 'Dayton', '44x50x18', 25.0, 'Water!', '2026-12-31', 3);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (10, 'Gardening Basics Package', 'Plumbing', '4.0', 2022, 'EQ10009', 'Under Maintenance', 'Dayton', '27x24x22', 50.0, 'StandardNetworks', '2028-09-20', 4);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (11, 'Basic Electricity Pack', 'Computer & Network', '4.0', 2022, 'EQ10010', 'Under Maintenance', 'Cleveland', '46x18x37', 10.0, 'Poopers!', '2026-12-31', 7);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (12, 'Construction Pack', 'Plumbing', 'nan', 2008, 'EQ10011', 'Available', 'Dayton', '35x48x45', 25.0, 'Plumbing''r''Us', '2027-05-15', 6);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (13, 'Clean Those Pipes Package', 'Painting', '2.0', 2023, 'EQ10012', 'Under Maintenance', 'Dayton', '16x45x34', 50.0, 'Paint4Fun', '2028-09-20', 5);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (14, 'Clean Those Pipes Package', 'Computer & Network', '6.0', 2022, 'EQ10013', 'Under Maintenance', 'Cincinnati', '34x34x27', 20.0, 'ElectricDance', '2027-05-15', 4);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (15, 'Painting Essentials', 'Painting', '6.0', 2022, 'EQ10014', 'Available', 'Toledo', '17x44x48', 20.0, 'ConstructionABC', '2026-12-31', 3);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (16, 'Basic Electricity Pack', 'Gardening', '0.0', 2019, 'EQ10015', 'In Use', 'Columbus', '22x17x32', 25.0, 'Water!', '2027-05-15', 5);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (17, 'Painting Essentials', 'Electric', '2.0', 2022, 'EQ10016', 'In Use', 'Cleveland', '22x27x22', 50.0, 'ElectricDance', '2026-12-31', 6);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (18, 'Painting Essentials', 'Gardening', '5.0', 2010, 'EQ10017', 'Available', 'Dayton', '39x43x32', 20.0, 'ConstructionABC', '2027-05-15', 1);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (19, 'ComNetwork Standard Package', 'Computer & Network', '0.0', 2019, 'EQ10018', 'Under Maintenance', 'Toledo', '26x37x12', 10.0, 'ConstructionABC', '2028-09-20', 5);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (20, 'Construction Pack', 'Plumbing', '6.0', 2019, 'EQ10019', 'Under Maintenance', 'Cleveland', '50x39x46', 40.0, 'Paint4Fun', '2028-09-20', 6);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (21, 'Water Irrigation Basics Package', 'Plumbing', '5.0', 2022, 'EQ10020', 'In Use', 'Columbus', '47x47x35', 50.0, 'StandardNetworks', '2027-05-15', 6);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (22, 'Construction Pack', 'Computer & Network', '4.0', 2022, 'EQ10021', 'Available', 'Toledo', '44x21x44', 40.0, 'Plumbing''r''Us', '2026-12-31', 7);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (23, 'Painting Essentials', 'Painting', '2.0', 2008, 'EQ10022', 'In Use', 'Cleveland', '40x32x40', 25.0, 'ConstructionABC', '2027-05-15', 1);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (24, 'Construction Pack', 'Watering', '4.0', 2010, 'EQ10023', 'Available', 'Dayton', '30x10x28', 25.0, 'ConstructionABC', '2026-12-31', 2);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (25, 'ComNetwork Standard Package', 'Painting', 'nan', 2008, 'EQ10024', 'Available', 'Columbus', '11x33x46', 25.0, 'ConstructionABC', '2028-09-20', 6);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (26, 'ComNetwork Standard Package', 'Plumbing', 'nan', 2008, 'EQ10025', 'Available', 'Toledo', '19x18x31', 50.0, 'ConstructionABC', '2026-12-31', 4);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (27, 'Clean Those Pipes Package', 'Construction', '2.0', 2022, 'EQ10026', 'In Use', 'Dayton', '38x41x38', 40.0, 'Plumbing''r''Us', '2027-05-15', 6);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (28, 'Gardening Basics Package', 'Painting', '0.0', 2022, 'EQ10027', 'Under Maintenance', 'Dayton', '43x34x27', 50.0, 'Water!', '2027-05-15', 3);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (29, 'Construction Pack', 'Electric', '0.0', 2020, 'EQ10028', 'In Use', 'Dayton', '22x47x30', 40.0, 'Paint4Fun', '2026-12-31', 3);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (30, 'Painting Essentials', 'Computer & Network', '2.0', 2022, 'EQ10029', 'In Use', 'Toledo', '22x29x19', 40.0, 'Paint4Fun', '2027-05-15', 5);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (31, 'Water Irrigation Basics Package', 'Computer & Network', '2.0', 2023, 'EQ10030', 'Under Maintenance', 'Cincinnati', '33x16x17', 15.0, 'Plumbing''r''Us', '2027-05-15', 1);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (32, 'Painting Essentials', 'Computer & Network', '2.0', 2022, 'EQ10031', 'Available', 'Dayton', '42x24x36', 25.0, 'Plumbing''r''Us', '2028-09-20', 7);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (33, 'Painting Essentials', 'Painting', '6.0', 2010, 'EQ10032', 'Available', 'Cleveland', '17x41x42', 50.0, 'Poopers!', '2028-09-20', 7);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (34, 'Painting Essentials', 'Painting', '2.0', 2019, 'EQ10033', 'In Use', 'Cleveland', '32x23x30', 15.0, 'ConstructionABC', '2026-12-31', 7);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (35, 'Clean Those Pipes Package', 'Plumbing', 'nan', 2010, 'EQ10034', 'Available', 'Cleveland', '32x25x15', 10.0, 'Water!', '2027-05-15', 4);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (36, 'Gardening Basics Package', 'Electric', '4.0', 2008, 'EQ10035', 'In Use', 'Cleveland', '30x30x45', 40.0, 'ElectricDance', '2027-05-15', 1);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (37, 'Clean Those Pipes Package', 'Electric', '6.0', 2022, 'EQ10036', 'Under Maintenance', 'Toledo', '43x41x35', 20.0, 'Plumbing''r''Us', '2026-12-31', 1);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (38, 'Basic Electricity Pack', 'Gardening', '4.0', 2022, 'EQ10037', 'Available', 'Cincinnati', '15x14x12', 25.0, 'ElectricDance', '2027-05-15', 7);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (39, 'ComNetwork Standard Package', 'Watering', 'nan', 2023, 'EQ10038', 'Under Maintenance', 'Cincinnati', '41x36x20', 25.0, 'Paint4Fun', '2028-09-20', 7);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (40, 'Painting Essentials', 'Electric', '4.0', 2023, 'EQ10039', 'Under Maintenance', 'Cincinnati', '50x43x18', 20.0, 'ConstructionABC', '2027-05-15', 7);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (41, 'Painting Essentials', 'Computer & Network', '4.0', 2023, 'EQ10040', 'In Use', 'Cleveland', '16x45x22', 50.0, 'StandardNetworks', '2027-05-15', 3);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (42, 'Clean Those Pipes Package', 'Construction', '5.0', 2022, 'EQ10041', 'Under Maintenance', 'Toledo', '26x12x33', 25.0, 'Paint4Fun', '2028-09-20', 7);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (43, 'Painting Essentials', 'Watering', 'nan', 2022, 'EQ10042', 'Under Maintenance', 'Cleveland', '22x41x14', 10.0, 'ConstructionABC', '2026-12-31', 3);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (44, 'ComNetwork Standard Package', 'Construction', '2.0', 2020, 'EQ10043', 'In Use', 'Cleveland', '41x27x11', 10.0, 'Paint4Fun', '2026-12-31', 3);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (45, 'Water Irrigation Basics Package', 'Construction', 'nan', 2022, 'EQ10044', 'In Use', 'Cleveland', '11x22x24', 25.0, 'ElectricDance', '2027-05-15', 6);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (46, 'Gardening Basics Package', 'Plumbing', 'nan', 2022, 'EQ10045', 'Under Maintenance', 'Dayton', '22x50x35', 40.0, 'Paint4Fun', '2026-12-31', 3);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (47, 'ComNetwork Standard Package', 'Painting', '4.0', 2019, 'EQ10046', 'In Use', 'Dayton', '25x32x48', 25.0, 'ElectricDance', '2026-12-31', 6);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (48, 'Gardening Basics Package', 'Computer & Network', '5.0', 2022, 'EQ10047', 'Under Maintenance', 'Toledo', '28x47x44', 50.0, 'StandardNetworks', '2027-05-15', 6);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (49, 'ComNetwork Standard Package', 'Painting', '6.0', 2023, 'EQ10048', 'In Use', 'Cleveland', '27x16x39', 10.0, 'Paint4Fun', '2026-12-31', 3);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (50, 'Construction Pack', 'Electric', '6.0', 2020, 'EQ10049', 'Available', 'Cincinnati', '23x40x44', 40.0, 'Water!', '2028-09-20', 4);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (51, 'Construction Pack', 'Construction', '6.0', 2023, 'EQ10050', 'Available', 'Dayton', '40x21x19', 25.0, 'StandardNetworks', '2026-12-31', 1);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (52, 'Construction Pack', 'Painting', '2.0', 2022, 'EQ10051', 'Under Maintenance', 'Cincinnati', '48x28x35', 10.0, 'GardenTogether', '2028-09-20', 4);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (53, 'Painting Essentials', 'Electric', '0.0', 2019, 'EQ10052', 'Under Maintenance', 'Cincinnati', '33x14x38', 20.0, 'StandardNetworks', '2028-09-20', 4);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (54, 'Basic Electricity Pack', 'Plumbing', '5.0', 2010, 'EQ10053', 'In Use', 'Cleveland', '26x27x26', 10.0, 'Plumbing''r''Us', '2028-09-20', 2);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (55, 'Water Irrigation Basics Package', 'Electric', 'nan', 2020, 'EQ10054', 'Available', 'Toledo', '39x33x42', 20.0, 'StandardNetworks', '2026-12-31', 4);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (56, 'Basic Electricity Pack', 'Computer & Network', '5.0', 2019, 'EQ10055', 'In Use', 'Toledo', '26x12x41', 15.0, 'ElectricDance', '2028-09-20', 2);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (57, 'ComNetwork Standard Package', 'Poop', 'nan', 2008, 'EQ10056', 'Available', 'Dayton', '20x36x34', 25.0, 'Paint4Fun', '2026-12-31', 2);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (58, 'Clean Those Pipes Package', 'Plumbing', '0.0', 2010, 'EQ10057', 'Available', 'Columbus', '40x39x25', 25.0, 'Water!', '2027-05-15', 2);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (59, 'Clean Those Pipes Package', 'Computer & Network', '2.0', 2019, 'EQ10058', 'Under Maintenance', 'Cincinnati', '13x21x16', 25.0, 'Water!', '2028-09-20', 2);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (60, 'ComNetwork Standard Package', 'Construction', '4.0', 2020, 'EQ10059', 'Available', 'Toledo', '48x38x47', 40.0, 'GardenTogether', '2028-09-20', 4);
INSERT INTO Equipment (equipment_id, description, type, model, year, serial_number, status, location, dimensions, weight, manufacturer, warranty_expiration, warehouse_id) VALUES (61, 'Pooping Package!', 'Watering', 'nan', 2023, 'EQ10060', 'Available', 'Cleveland', '19x17x47', 25.0, 'ConstructionABC', '2028-09-20', 3);

-- Table: Maintenance_Logs
CREATE TABLE Maintenance_Logs (
    log_id           INTEGER PRIMARY KEY,
    maintenance_date DATE,
    maintenance_type TEXT,
    cost             REAL,
    technician_name  TEXT,
    notes            TEXT,
    equipment_id     INTEGER,
    drone_id         INTEGER,
    FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id),
    FOREIGN KEY (drone_id) REFERENCES Drone(drone_id)
);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (1, '2025-01-18', 'Hardware Inspection', 443.06, 'Casey Johnson', 'Repaired wiring and verified stability.', 21, 15);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (2, '2024-06-23', 'Hardware Inspection', 1335.63, 'Cameron Moore', 'Repaired wiring and verified stability.', 15, 29);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (3, '2025-02-14', 'Sensor Adjustment', 598.78, 'Morgan Lee', 'Minor hardware issue resolved.', 37, 20);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (4, '2024-11-28', 'Cleaning', 415.29, 'Jamie Clark', 'Replaced worn-out battery pack.', 34, 7);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (5, '2024-07-25', 'Calibration', 195.19, 'Taylor Brown', 'Adjusted drone balance for optimal flight.', 18, 1);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (6, '2024-03-28', 'Hardware Inspection', 1467.37, 'Cameron Moore', 'Cleaned internal components.', 13, 25);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (7, '2025-08-03', 'Calibration', 1469.89, 'Drew Williams', 'Replaced worn-out battery pack.', 31, 28);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (8, '2024-02-15', 'Software Update', 232.53, 'Casey Johnson', 'Calibrated sensors for improved accuracy.', 31, 17);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (9, '2025-05-03', 'Sensor Adjustment', 550.27, 'Jordan Smith', 'Cleaned internal components.', 51, 10);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (10, '2024-03-19', 'Hardware Inspection', 542.13, 'Drew Williams', 'Calibrated sensors for improved accuracy.', 2, 5);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (11, '2024-07-27', 'Software Update', 837.55, 'Drew Williams', 'Routine check completed successfully.', 50, 17);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (12, '2024-05-25', 'Software Update', 1204.88, 'Casey Johnson', 'Cleaned internal components.', 1, 38);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (13, '2025-05-30', 'Motor Replacement', 1336.6, 'Riley Davis', 'Performed safety inspection with no issues found.', 6, 36);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (14, '2024-10-23', 'Firmware Upgrade', 1075.75, 'Casey Johnson', 'Adjusted drone balance for optimal flight.', 14, 6);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (15, '2024-10-21', 'Hardware Inspection', 1323.83, 'Cameron Moore', 'Routine check completed successfully.', 26, 26);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (16, '2024-03-03', 'Battery Replacement', 1092.11, 'Drew Williams', 'Minor hardware issue resolved.', 36, 33);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (17, '2024-08-11', 'Battery Replacement', 985.99, 'Jamie Clark', 'Adjusted drone balance for optimal flight.', 57, 37);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (18, '2024-01-04', 'Motor Replacement', 195.18, 'Casey Johnson', 'Updated to latest firmware version.', 14, 18);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (19, '2024-09-25', 'Battery Replacement', 596.7, 'Casey Johnson', 'Minor hardware issue resolved.', 56, 13);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (20, '2024-05-29', 'Software Update', 1229.1, 'Taylor Brown', 'Calibrated sensors for improved accuracy.', 48, 9);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (21, '2024-11-15', 'Battery Replacement', 1384.7, 'Casey Johnson', 'Replaced faulty motor unit.', 57, 38);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (22, '2024-10-03', 'Motor Replacement', 88.74, 'Cameron Moore', 'Minor hardware issue resolved.', 34, 40);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (23, '2024-04-15', 'Software Update', 995.2, 'Drew Williams', 'Adjusted drone balance for optimal flight.', 25, 10);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (24, '2024-10-24', 'Sensor Adjustment', 924.82, 'Alex Carter', 'Replaced faulty motor unit.', 13, 19);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (25, '2024-01-04', 'Motor Replacement', 1438.17, 'Drew Williams', 'Replaced faulty motor unit.', 17, 4);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (26, '2025-01-15', 'Sensor Adjustment', 583.02, 'Cameron Moore', 'Replaced faulty motor unit.', 29, 33);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (27, '2025-03-15', 'Sensor Adjustment', 746.8, 'Jamie Clark', 'Replaced faulty motor unit.', 49, 26);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (28, '2024-03-12', 'Calibration', 1131.66, 'Casey Johnson', 'Replaced worn-out battery pack.', 60, 28);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (29, '2024-01-28', 'Sensor Adjustment', 1151.58, 'Morgan Lee', 'Minor hardware issue resolved.', 46, 37);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (30, '2024-10-15', 'Battery Replacement', 59.67, 'Casey Johnson', 'Adjusted drone balance for optimal flight.', 13, 38);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (31, '2024-03-06', 'Software Update', 125.02, 'Jordan Smith', 'Performed safety inspection with no issues found.', 19, 20);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (32, '2025-07-12', 'Battery Replacement', 1271.96, 'Drew Williams', 'Performed safety inspection with no issues found.', 1, 28);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (33, '2025-02-17', 'Hardware Inspection', 878.34, 'Jamie Clark', 'Updated to latest firmware version.', 1, 24);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (34, '2024-11-09', 'Motor Replacement', 275.27, 'Taylor Brown', 'Repaired wiring and verified stability.', 39, 33);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (35, '2025-03-07', 'Sensor Adjustment', 1178.5, 'Riley Davis', 'Minor hardware issue resolved.', 47, 31);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (36, '2024-07-14', 'Cleaning', 912.64, 'Morgan Lee', 'Minor hardware issue resolved.', 32, 21);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (37, '2024-10-23', 'Motor Replacement', 893.02, 'Drew Williams', 'Repaired wiring and verified stability.', 40, 18);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (38, '2024-11-22', 'Firmware Upgrade', 408.59, 'Jordan Smith', 'Replaced worn-out battery pack.', 55, 21);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (39, '2024-07-13', 'Motor Replacement', 314.64, 'Drew Williams', 'Replaced worn-out battery pack.', 44, 2);
INSERT INTO Maintenance_Logs (log_id, maintenance_date, maintenance_type, cost, technician_name, notes, equipment_id, drone_id) VALUES (40, '2025-01-06', 'Cleaning', 489.03, 'Taylor Brown', 'Performed safety inspection with no issues found.', 7, 40);

-- Table: Member
CREATE TABLE Member (
    user_id      INTEGER PRIMARY KEY,
    fname        TEXT,
    lname        TEXT,
    addr         TEXT,
    phone        TEXT,
    email        TEXT,
    start_date   DATE,
    distance     REAL,
    status       TEXT,
    warehouse_id INTEGER,
    FOREIGN KEY (warehouse_id) REFERENCES Warehouse(warehouse_id)
);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (1, 'Jamie', 'Davis', '869 Maple Ave, Cleveland, OH', '6145830662', 'jamie.davis@example.com', '2023-02-11', 36.46, 'Inactive', 1);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (2, 'Jamie', 'Taylor', '3104 Maple Ave, Columbus, OH', '6147907784', 'jamie.taylor@example.com', '2022-03-09', 26.91, 'Active', 4);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (3, 'Emerson', 'Smith', '6879 Elm Rd, Cincinnati, OH', '6145229752', 'emerson.smith@example.com', '2022-11-05', 2.45, 'Inactive', 6);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (4, 'Dakota', 'Jackson', '2261 Pine Dr, Cleveland, OH', '6149513405', 'dakota.jackson@example.com', '2023-01-02', 4.93, 'Active', 7);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (5, 'Riley', 'Martin', '7049 Maple Ave, Cincinnati, OH', '6141994389', 'riley.martin@example.com', '2021-11-28', 19.42, 'Active', 4);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (6, 'Riley', 'Thomas', '9962 Cedar Ln, Toledo, OH', '6143304155', 'riley.thomas@example.com', '2020-03-18', 20.95, 'Inactive', 1);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (7, 'Riley', 'Davis', '9791 Maple Ave, Dayton, OH', '6149632304', 'riley.davis@example.com', '2023-08-26', 5.86, 'Active', 4);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (8, 'Cameron', 'Gonzalez', '5203 Cedar Ln, Dayton, OH', '6141967703', 'cameron.gonzalez@example.com', '2022-03-08', 11.97, 'Inactive', 2);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (9, 'Reese', 'Williams', '5345 Pine Dr, Cincinnati, OH', '6147887708', 'reese.williams@example.com', '2020-06-22', 16.71, 'Inactive', 4);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (10, 'Emerson', 'Jackson', '7682 Cedar Ln, Cleveland, OH', '6142011754', 'emerson.jackson@example.com', '2022-01-01', 49.35, 'Active', 5);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (11, 'Taylor', 'Martinez', '6572 Pine Dr, Toledo, OH', '6141347328', 'taylor.martinez@example.com', '2023-09-16', 2.29, 'Active', 4);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (12, 'Rowan', 'Anderson', '4468 Pine Dr, Cincinnati, OH', '6141368286', 'rowan.anderson@example.com', '2022-10-06', 13.97, 'Active', 2);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (13, 'Rowan', 'Martinez', '168 Oak St, Columbus, OH', '6144080174', 'rowan.martinez@example.com', '2022-08-06', 9.35, 'Active', 3);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (14, 'Hayden', 'Garcia', '3850 Oak St, Columbus, OH', '6141784666', 'hayden.garcia@example.com', '2023-03-07', 36.16, 'Inactive', 1);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (15, 'Casey', 'Lopez', '5540 Elm Rd, Cleveland, OH', '6142952493', 'casey.lopez@example.com', '2022-04-26', 18.25, 'Active', 3);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (16, 'Drew', 'Moore', '8629 Elm Rd, Cleveland, OH', '6145715655', 'drew.moore@example.com', '2021-08-05', 29.8, 'Inactive', 5);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (17, 'Jamie', 'Johnson', '7809 Maple Ave, Dayton, OH', '6149630192', 'jamie.johnson@example.com', '2023-08-25', 18.24, 'Active', 1);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (18, 'Emerson', 'Hernandez', '8057 Cedar Ln, Cleveland, OH', '6142942833', 'emerson.hernandez@example.com', '2023-12-02', 3.04, 'Active', 5);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (19, 'Cameron', 'Moore', '8987 Pine Dr, Cleveland, OH', '6142087277', 'cameron.moore@example.com', '2021-12-11', 24.79, 'Inactive', 5);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (20, 'Drew', 'Lopez', '2095 Oak St, Cincinnati, OH', '6141469140', 'drew.lopez@example.com', '2022-06-24', 46.61, 'Inactive', 3);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (21, 'Casey', 'Jackson', '2001 Cedar Ln, Cleveland, OH', '6145388039', 'casey.jackson@example.com', '2021-04-01', 46.81, 'Inactive', 4);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (22, 'Morgan', 'Hernandez', '9693 Pine Dr, Cleveland, OH', '6148007013', 'morgan.hernandez@example.com', '2023-04-01', 1.47, 'Inactive', 2);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (23, 'Hayden', 'Johnson', '8617 Pine Dr, Cleveland, OH', '6144769877', 'hayden.johnson@example.com', '2022-11-07', 43.56, 'Inactive', 1);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (24, 'Peyton', 'Williams', '4983 Cedar Ln, Toledo, OH', '6143938424', 'peyton.williams@example.com', '2020-12-11', 33.57, 'Active', 3);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (25, 'Reese', 'Jones', '7216 Oak St, Columbus, OH', '6148961944', 'reese.jones@example.com', '2021-10-11', 43.59, 'Active', 2);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (26, 'Taylor', 'Smith', '3272 Maple Ave, Cleveland, OH', '6142784939', 'taylor.smith@example.com', '2022-02-18', 45.33, 'Inactive', 4);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (27, 'Rowan', 'Rodriguez', '2523 Cedar Ln, Cleveland, OH', '6146175878', 'rowan.rodriguez@example.com', '2022-05-12', 4.38, 'Inactive', 1);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (28, 'Avery', 'Taylor', '1350 Cedar Ln, Cleveland, OH', '6149163833', 'avery.taylor@example.com', '2021-09-09', 22.25, 'Inactive', 2);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (29, 'Casey', 'Gonzalez', '9113 Elm Rd, Dayton, OH', '6142087784', 'casey.gonzalez@example.com', '2021-01-21', 35.09, 'Active', 6);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (30, 'Casey', 'Williams', '1957 Maple Ave, Columbus, OH', '6142652468', 'casey.williams@example.com', '2020-06-10', 46.93, 'Active', 1);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (31, 'Rowan', 'Smith', '6898 Elm Rd, Columbus, OH', '6146684799', 'rowan.smith@example.com', '2023-03-20', 35.91, 'Active', 3);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (32, 'Casey', 'Hernandez', '9666 Oak St, Cincinnati, OH', '6146612311', 'casey.hernandez@example.com', '2022-07-30', 12.27, 'Active', 6);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (33, 'Kai', 'Williams', '2057 Maple Ave, Cincinnati, OH', '6146031841', 'kai.williams@example.com', '2020-03-26', 36.75, 'Active', 4);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (34, 'Riley', 'Miller', '7548 Oak St, Dayton, OH', '6144425843', 'riley.miller@example.com', '2024-01-10', 43.47, 'Active', 4);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (35, 'Emerson', 'Hernandez', '8424 Pine Dr, Toledo, OH', '6146430957', 'emerson.hernandez@example.com', '2022-11-27', 17.1, 'Active', 5);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (36, 'Avery', 'Anderson', '9959 Maple Ave, Cleveland, OH', '6141693306', 'avery.anderson@example.com', '2020-06-01', 39.66, 'Active', 3);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (37, 'Peyton', 'Jones', '7130 Maple Ave, Cincinnati, OH', '6148934229', 'peyton.jones@example.com', '2021-04-04', 8.56, 'Active', 7);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (38, 'Jamie', 'Martin', '3003 Elm Rd, Cleveland, OH', '6141772738', 'jamie.martin@example.com', '2021-08-14', 3.11, 'Inactive', 6);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (39, 'Riley', 'Taylor', '9283 Elm Rd, Cleveland, OH', '6149111964', 'riley.taylor@example.com', '2023-05-31', 38.88, 'Inactive', 2);
INSERT INTO Member (user_id, fname, lname, addr, phone, email, start_date, distance, status, warehouse_id) VALUES (40, 'Peyton', 'Davis', '6515 Elm Rd, Cleveland, OH', '6149118232', 'peyton.davis@example.com', '2021-05-04', 46.21, 'Active', 6);

-- Table: Purchase_Order
CREATE TABLE Purchase_Order (
    order_number       INTEGER PRIMARY KEY,
    element_type       TEXT,
    quantity           INTEGER,
    value              REAL,
    estimated_arrival_date DATE,
    actual_arrival_date    DATE,
    warehouse_id       INTEGER,
    supplier_id        INTEGER,
    FOREIGN KEY (warehouse_id) REFERENCES Warehouse(warehouse_id),
    FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (1, 'Maintenance Part', 24, 1185.76, '2025-04-21', '2025-01-22', 2, 14);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (2, 'Drone', 17, 2134.0, '2025-04-14', '2025-04-13', 2, 4);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (3, 'Sensor', 3, 1365.5, '2025-05-21', '2025-02-14', 6, 4);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (4, 'Maintenance Part', 31, 2359.79, '2025-01-05', '2025-06-15', 3, 2);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (5, 'Equipment', 10, 4659.34, '2025-02-16', '2025-03-18', 1, 1);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (6, 'Sensor', 24, 557.89, '2025-03-14', '2025-07-19', 4, 11);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (7, 'Maintenance Part', 20, 2460.99, '2025-06-29', '2025-05-05', 3, 11);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (8, 'Maintenance Part', 41, 4446.7, '2025-05-12', '2025-06-30', 3, 5);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (9, 'Equipment', 47, 1216.52, '2025-03-01', '2025-06-23', 6, 10);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (10, 'Equipment', 38, 1232.07, '2025-02-01', '2025-02-24', 6, 13);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (11, 'Drone', 48, 803.49, '2025-03-06', '2025-02-16', 6, 5);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (12, 'Equipment', 19, 1830.6, '2025-02-15', '2025-01-10', 1, 4);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (13, 'Drone', 46, 1837.02, '2025-03-26', '2025-02-07', 1, 2);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (14, 'Battery', 5, 2341.59, '2025-04-24', '2025-04-15', 4, 15);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (15, 'Tool Kit', 33, 3179.88, '2025-04-27', '2025-03-01', 3, 15);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (16, 'Maintenance Part', 6, 2120.65, '2025-01-22', '2025-01-23', 5, 12);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (17, 'Drone', 47, 1190.72, '2025-04-14', '2025-03-31', 5, 5);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (18, 'Equipment', 44, 3141.12, '2025-06-26', '2025-02-16', 7, 4);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (19, 'Tool Kit', 11, 3740.55, '2025-02-10', '2025-03-21', 1, 8);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (20, 'Tool Kit', 12, 2588.78, '2025-06-29', '2025-05-02', 2, 2);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (21, 'Maintenance Part', 5, 3861.96, '2025-04-11', '2025-03-11', 4, 7);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (22, 'Battery', 22, 4515.71, '2025-03-06', '2025-03-20', 4, 3);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (23, 'Battery', 29, 162.49, '2025-06-13', '2025-01-20', 2, 7);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (24, 'Drone', 21, 1444.16, '2025-05-30', '2025-07-11', 7, 10);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (25, 'Maintenance Part', 15, 3771.94, '2025-01-10', '2025-03-03', 4, 10);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (26, 'Drone', 39, 3844.44, '2025-04-11', '2025-04-23', 5, 13);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (27, 'Equipment', 32, 3813.72, '2025-03-05', '2025-04-21', 2, 6);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (28, 'Maintenance Part', 37, 4202.78, '2025-01-25', '2025-07-04', 5, 3);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (29, 'Maintenance Part', 26, 2263.36, '2025-02-23', '2025-06-27', 4, 9);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (30, 'Drone', 42, 1762.25, '2025-06-05', '2025-07-11', 6, 3);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (31, 'Equipment', 5, 2177.66, '2025-06-06', '2025-07-13', 1, 9);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (32, 'Maintenance Part', 46, 3284.12, '2025-04-09', '2025-07-17', 2, 9);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (33, 'Equipment', 49, 2848.01, '2025-01-25', '2025-03-06', 5, 5);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (34, 'Maintenance Part', 33, 3943.93, '2025-06-16', '2025-07-13', 2, 11);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (35, 'Equipment', 1, 4856.27, '2025-05-19', '2025-04-02', 6, 11);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (36, 'Drone', 4, 3784.62, '2025-06-04', '2025-04-17', 6, 6);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (37, 'Sensor', 41, 1926.91, '2025-03-04', '2025-04-18', 1, 15);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (38, 'Equipment', 49, 116.25, '2025-06-19', '2025-02-01', 1, 8);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (39, 'Maintenance Part', 6, 4745.69, '2025-05-22', '2025-02-15', 3, 6);
INSERT INTO Purchase_Order (order_number, element_type, quantity, value, estimated_arrival_date, actual_arrival_date, warehouse_id, supplier_id) VALUES (40, 'Sensor', 19, 4043.1, '2025-03-22', '2025-02-05', 5, 5);

-- Table: Purchases
CREATE TABLE Purchases (
    purchase_id         INTEGER PRIMARY KEY,
    user_no             INTEGER,
    equipment_no        INTEGER,
    element_type        TEXT,
    actual_arrival_date DATE,
    estimated_arrival_date DATE,
    value               REAL,
    FOREIGN KEY (user_no) REFERENCES Member(user_id),
    FOREIGN KEY (equipment_no) REFERENCES Equipment(equipment_id)
);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (1, 13, 52, 'Equipment', '2025-02-21', '2025-01-29', 492.2);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (2, 7, 26, 'Component', '2025-02-20', '2025-05-15', 6687.31);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (3, 15, 1, 'Accessory', '2025-06-20', '2025-01-22', 6507.88);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (4, 29, 32, 'Accessory', '2025-01-13', '2025-05-06', 7283.16);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (5, 23, 28, 'Component', '2025-06-03', '2025-04-06', 9363.56);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (6, 35, 46, 'Tool', '2025-04-30', '2025-02-26', 1907.96);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (7, 17, 5, 'Accessory', '2025-07-14', '2025-01-29', 5020.98);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (8, 33, 37, 'Drone', '2025-05-02', '2025-05-19', 567.89);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (9, 6, 18, 'Accessory', '2025-06-09', '2025-03-03', 314.7);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (10, 37, 46, 'Tool', '2025-04-15', '2025-04-20', 6924.88);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (11, 28, 17, 'Accessory', '2025-03-04', '2025-02-02', 4452.17);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (12, 18, 38, 'Component', '2025-05-26', '2025-03-12', 9017.4);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (13, 35, 58, 'Component', '2025-07-14', '2025-01-02', 5325.21);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (14, 32, 11, 'Equipment', '2025-06-18', '2025-01-16', 3630.65);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (15, 38, 12, 'Equipment', '2025-05-28', '2025-01-25', 2570.53);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (16, 25, 16, 'Component', '2025-07-14', '2025-03-22', 7314.15);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (17, 29, 6, 'Accessory', '2025-03-20', '2025-06-21', 806.29);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (18, 9, 43, 'Drone', '2025-03-26', '2025-06-17', 4778.62);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (19, 27, 8, 'Accessory', '2025-04-21', '2025-04-22', 8107.81);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (20, 4, 56, 'Component', '2025-03-24', '2025-04-21', 6757.13);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (21, 18, 3, 'Drone', '2025-01-30', '2025-06-22', 5562.11);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (22, 27, 7, 'Drone', '2025-01-21', '2025-03-31', 2806.09);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (23, 34, 8, 'Tool', '2025-07-14', '2025-04-29', 3674.69);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (24, 32, 7, 'Accessory', '2025-07-03', '2025-06-02', 3133.48);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (25, 25, 52, 'Equipment', '2025-03-31', '2025-05-28', 8601.9);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (26, 25, 3, 'Equipment', '2025-03-08', '2025-04-12', 5635.31);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (27, 18, 35, 'Equipment', '2025-05-12', '2025-04-22', 9273.46);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (28, 11, 23, 'Component', '2025-03-28', '2025-01-23', 3874.29);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (29, 22, 58, 'Accessory', '2025-01-06', '2025-03-08', 9415.37);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (30, 22, 55, 'Accessory', '2025-02-17', '2025-03-15', 2428.22);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (31, 34, 44, 'Equipment', '2025-04-18', '2025-03-01', 9781.16);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (32, 2, 40, 'Drone', '2025-06-17', '2025-05-14', 7674.3);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (33, 34, 49, 'Drone', '2025-01-24', '2025-02-21', 2909.94);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (34, 10, 16, 'Drone', '2025-03-03', '2025-05-14', 1357.01);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (35, 9, 59, 'Drone', '2025-05-07', '2025-05-14', 4729.04);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (36, 40, 47, 'Tool', '2025-01-27', '2025-05-20', 1424.48);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (37, 19, 15, 'Drone', '2025-05-23', '2025-06-30', 5314.65);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (38, 38, 47, 'Equipment', '2025-06-16', '2025-04-17', 7244.02);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (39, 3, 51, 'Equipment', '2025-06-14', '2025-06-12', 1569.56);
INSERT INTO Purchases (purchase_id, user_no, equipment_no, element_type, actual_arrival_date, estimated_arrival_date, value) VALUES (40, 31, 3, 'Accessory', '2025-06-19', '2025-02-05', 9272.5);

-- Table: Rentals
CREATE TABLE Rentals (
    rental_id   INTEGER PRIMARY KEY,
    user_no     INTEGER,
    due_date    DATE,
    status      TEXT,
    rental_fee  REAL,
    return_date DATE,
    FOREIGN KEY (user_no) REFERENCES Member(user_id)
);
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (1, 22, '2025-10-06', 'Active', 128.25, '');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (2, 8, '2025-08-15', 'Returned', 35.87, '2025-08-25');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (3, 27, '2025-03-29', 'Returned', 210.15, '2025-03-26');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (4, 10, '2025-09-28', 'Returned', 172.03, '2025-10-06');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (5, 11, '2025-04-26', 'Returned', 218.1, '2025-04-30');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (6, 14, '2025-05-08', 'Returned', 191.63, '');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (7, 25, '2025-08-10', 'Returned', 130.67, '2025-08-16');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (8, 30, '2025-03-08', 'Returned', 58.48, '2025-03-10');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (9, 7, '2025-06-11', 'Overdue', 263.33, '');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (10, 19, '2025-05-07', 'Returned', 81.34, '2025-05-06');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (11, 19, '2025-03-13', 'Returned', 134.17, '2025-03-14');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (12, 8, '2025-07-01', 'Returned', 77.2, '');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (13, 34, '2025-01-24', 'Returned', 256.0, '2025-02-03');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (14, 35, '2025-07-28', 'Returned', 115.41, '2025-07-25');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (15, 34, '2025-07-02', 'Returned', 216.89, '2025-07-09');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (16, 25, '2025-04-21', 'Returned', 34.64, '2025-04-20');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (17, 35, '2025-09-03', 'Active', 158.86, '');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (18, 24, '2025-07-23', 'Returned', 194.89, '2025-08-02');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (19, 21, '2025-09-13', 'Returned', 140.93, '2025-09-10');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (20, 5, '2025-08-11', 'Returned', 229.6, '2025-08-19');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (21, 18, '2025-07-14', 'Returned', 271.66, '2025-07-13');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (22, 8, '2025-05-02', 'Returned', 97.55, '');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (23, 31, '2025-03-11', 'Returned', 176.86, '2025-03-18');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (24, 16, '2025-01-31', 'Returned', 203.91, '2025-01-29');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (25, 31, '2025-07-24', 'Returned', 123.54, '2025-07-27');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (26, 37, '2025-10-04', 'Active', 245.96, '');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (27, 16, '2025-04-01', 'Overdue', 236.81, '');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (28, 32, '2025-02-14', 'Returned', 194.95, '2025-02-20');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (29, 21, '2025-10-17', 'Returned', 85.68, '2025-10-25');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (30, 25, '2025-03-28', 'Returned', 26.74, '2025-03-25');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (31, 5, '2025-10-10', 'Returned', 194.94, '2025-10-19');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (32, 28, '2025-05-11', 'Returned', 229.01, '2025-05-18');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (33, 38, '2025-09-17', 'Returned', 204.56, '2025-09-25');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (34, 21, '2025-10-06', 'Returned', 158.09, '');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (35, 30, '2025-05-26', 'Active', 118.62, '');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (36, 29, '2025-03-30', 'Returned', 115.76, '2025-04-05');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (37, 2, '2025-02-22', 'Returned', 197.56, '2025-02-22');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (38, 19, '2025-01-14', 'Returned', 268.98, '');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (39, 8, '2025-06-21', 'Returned', 258.92, '2025-06-20');
INSERT INTO Rentals (rental_id, user_no, due_date, status, rental_fee, return_date) VALUES (40, 1, '2025-02-01', 'Overdue', 238.97, '');

-- Table: Reviews
CREATE TABLE Reviews (
    review_id    INTEGER PRIMARY KEY,
    user_no      INTEGER,
    equipment_no INTEGER,
    rating       INTEGER,
    comment      TEXT,
    review_date  DATE,
    FOREIGN KEY (user_no) REFERENCES Member(user_id),
    FOREIGN KEY (equipment_no) REFERENCES Equipment(equipment_id)
);
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (1, 8, 14, 5, 'Compact design and lightweight.', '2024-09-25');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (2, 26, 12, 1, 'Excellent quality and performance.', '2024-10-13');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (3, 11, 59, 2, 'Good value for the price.', '2024-04-10');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (4, 15, 13, 4, 'Customer service was helpful.', '2024-05-31');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (5, 22, 25, 5, 'Sturdy and efficient equipment.', '2024-09-02');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (6, 40, 19, 3, 'Met all my expectations.', '2024-05-28');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (7, 24, 38, 5, 'Excellent quality and performance.', '2024-04-20');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (8, 30, 11, 2, 'Met all my expectations.', '2025-07-16');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (9, 6, 33, 2, 'Sturdy and efficient equipment.', '2025-04-13');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (10, 17, 34, 4, 'Not as durable as I hoped.', '2024-04-01');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (11, 31, 59, 5, 'Battery life could be better.', '2025-01-02');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (12, 40, 48, 3, 'Smooth operation and easy setup.', '2024-01-14');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (13, 1, 29, 1, 'Compact design and lightweight.', '2024-05-05');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (14, 15, 6, 2, 'Excellent quality and performance.', '2024-05-01');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (15, 30, 4, 3, 'Poor build quality for the price.', '2024-07-18');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (16, 11, 5, 5, 'Performs better than advertised.', '2024-05-13');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (17, 15, 20, 1, 'Instructions were unclear.', '2024-11-02');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (18, 26, 1, 5, 'Customer service was helpful.', '2025-03-25');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (19, 33, 53, 2, 'Not as durable as I hoped.', '2025-01-02');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (20, 4, 16, 3, 'Exceeded my expectations.', '2025-04-26');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (21, 5, 7, 1, 'Poor build quality for the price.', '2025-06-15');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (22, 18, 46, 4, 'Works as expected, very reliable.', '2024-05-25');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (23, 31, 9, 3, 'Met all my expectations.', '2024-04-30');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (24, 6, 45, 4, 'I use it daily without issues.', '2025-05-17');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (25, 16, 40, 2, 'Met all my expectations.', '2024-06-20');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (26, 37, 38, 2, 'High-quality materials used.', '2024-11-11');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (27, 19, 18, 3, 'I use it daily without issues.', '2025-03-27');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (28, 5, 23, 5, 'Would definitely purchase again.', '2024-12-23');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (29, 30, 34, 1, 'Perfect for my needs.', '2024-05-11');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (30, 28, 60, 4, 'I use it daily without issues.', '2024-04-08');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (31, 3, 23, 1, 'Sturdy and efficient equipment.', '2024-01-18');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (32, 33, 37, 1, 'Would definitely purchase again.', '2024-02-02');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (33, 35, 18, 3, 'Performs better than advertised.', '2024-04-09');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (34, 28, 1, 5, 'Exceeded my expectations.', '2025-04-28');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (35, 6, 44, 1, 'Not as durable as I hoped.', '2025-02-20');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (36, 1, 28, 3, 'Met all my expectations.', '2024-02-19');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (37, 10, 42, 2, 'Perfect for my needs.', '2024-01-22');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (38, 4, 19, 1, 'Good value for the price.', '2025-04-15');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (39, 1, 24, 3, 'High-quality materials used.', '2025-08-15');
INSERT INTO Reviews (review_id, user_no, equipment_no, rating, comment, review_date) VALUES (40, 16, 49, 2, 'Works as expected, very reliable.', '2025-04-15');

-- Table: Supplier
CREATE TABLE Supplier (
    supplier_id INTEGER PRIMARY KEY,
    name        TEXT,
    number      TEXT,
    email       TEXT,
    address     TEXT
);
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (1, 'DroneTech Supplies', '6141743946', 'dronetechsupplies@example.com', '4734 Broad St, Cincinnati, OH');
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (2, 'AeroParts Co.', '6141381915', 'aeropartsco.@example.com', '6670 Main St, Cincinnati, OH');
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (3, 'EquipMart', '6141903847', 'equipmart@example.com', '8832 Main St, Columbus, OH');
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (4, 'ToolWorks', '6147741790', 'toolworks@example.com', '899 High St, Cincinnati, OH');
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (5, 'SkyHigh Components', '6149467037', 'skyhighcomponents@example.com', '6509 Maple Ave, Toledo, OH');
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (6, 'Precision Gear', '6141190371', 'precisiongear@example.com', '3230 Main St, Cleveland, OH');
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (7, 'RoboParts Inc.', '6146143997', 'robopartsinc.@example.com', '6042 Main St, Columbus, OH');
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (8, 'Hardware Hub', '6145368512', 'hardwarehub@example.com', '2396 Broad St, Cincinnati, OH');
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (9, 'NextGen Supplies', '6142482873', 'nextgensupplies@example.com', '5837 Broad St, Toledo, OH');
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (10, 'MachinaTech', '6148743502', 'machinatech@example.com', '8726 Elm St, Cincinnati, OH');
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (11, 'ProEquip', '6149895965', 'proequip@example.com', '3423 Maple Ave, Cincinnati, OH');
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (12, 'DroneWorks', '6146874818', 'droneworks@example.com', '9205 Maple Ave, Dayton, OH');
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (13, 'MegaParts', '6148944118', 'megaparts@example.com', '1941 Elm St, Cincinnati, OH');
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (14, 'Ohio Supply Depot', '6144013700', 'ohiosupplydepot@example.com', '3600 Broad St, Cleveland, OH');
INSERT INTO Supplier (supplier_id, name, number, email, address) VALUES (15, 'Innovate Tools', '6149129820', 'innovatetools@example.com', '2664 Main St, Cleveland, OH');

-- Table: Warehouse
CREATE TABLE Warehouse (
    warehouse_id     INTEGER PRIMARY KEY,
    city             TEXT NOT NULL,
    address          TEXT,
    manager_name     TEXT,
    storage_capacity INTEGER,
    drone_capacity   INTEGER
);
INSERT INTO Warehouse (warehouse_id, city, address, manager_name, storage_capacity, drone_capacity) VALUES (1, 'Columbus', '2639 Quilly Lane, Columbus, OH, 43215', 'Maria Gonzalez', 213, 91);
INSERT INTO Warehouse (warehouse_id, city, address, manager_name, storage_capacity, drone_capacity) VALUES (2, 'Columbus', '109 Andell Road, Columbus, OH, 43215', 'Noah Martinez', 199, 70);
INSERT INTO Warehouse (warehouse_id, city, address, manager_name, storage_capacity, drone_capacity) VALUES (3, 'Columbus', '2573 James Martin Circle, Columbus, OH, 43085', 'Emma Davis', 198, 92);
INSERT INTO Warehouse (warehouse_id, city, address, manager_name, storage_capacity, drone_capacity) VALUES (4, 'Dayton', '1516 Ingram Street, Dayton, OH, 45408', 'Liam Johnson', 153, 52);
INSERT INTO Warehouse (warehouse_id, city, address, manager_name, storage_capacity, drone_capacity) VALUES (5, 'Dayton', '4249 Pringle Drive, Dayton, OH, 45469', 'Emma Davis', 165, 85);
INSERT INTO Warehouse (warehouse_id, city, address, manager_name, storage_capacity, drone_capacity) VALUES (6, 'Cleveland', '3041 Hiddenview Drive, Cleveland, OH, 44114', 'Lucas Young', 168, 56);
INSERT INTO Warehouse (warehouse_id, city, address, manager_name, storage_capacity, drone_capacity) VALUES (7, 'Cleveland', '2944 Sunny Glen Lane, Cleveland, OH, 44103', 'Ethan Thompson', 155, 73);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
