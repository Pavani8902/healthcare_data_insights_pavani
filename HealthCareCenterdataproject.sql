create database healthcarecenterdata;
use healthcarecenterdata;
CREATE TABLE patients (
    patient_Id INT NOT NULL PRIMARY KEY,
    patient_name VARCHAR(255) NOT NULL,
    Age VARCHAR(10),
    Gender VARCHAR(10),
    Phone VARCHAR(20),
    Hospital_admitted VARCHAR(50)
);

CREATE TABLE doctors (
    doctorID INT NOT NULL PRIMARY KEY,
    doctorname VARCHAR(255) NOT NULL,
    Specialization VARCHAR(255),
    Phone VARCHAR(20),
    Duty_hospital VARCHAR(255),
    Experience VARCHAR(10)
);
CREATE TABLE medical_report (
     patient_Id INT NOT NULL,
     patient_name VARCHAR(255) NOT NULL,
     doctorname VARCHAR(255) NOT NULL,
     doctorID INT NOT NULL,
     Disease VARCHAR(255) NOT NULL,
     Doctors_Advice VARCHAR(255), -- Updated column name
     FOREIGN KEY (patient_Id) REFERENCES patients(patient_Id),
     FOREIGN KEY (doctorID) REFERENCES doctors(doctorID)
);
CREATE TABLE prescription (
    patient_Id INT NOT NULL,
    patient_name VARCHAR(255) NOT NULL,
    doctorname VARCHAR(255) NOT NULL,
    doctorID INT NOT NULL,
    Medicines VARCHAR(255) NOT NULL,
    Dosage VARCHAR(255) NOT NULL,
    Number_of_days INT NOT NULL,
    Disease VARCHAR(255),
    FOREIGN KEY (patient_Id) REFERENCES patients(patient_Id),
    FOREIGN KEY (doctorID) REFERENCES doctors(doctorID)
);
CREATE TABLE treatment_status (
    patient_Id INT NOT NULL,
    patient_name VARCHAR(255) NOT NULL,
    doctorID INT NOT NULL,
    doctorname VARCHAR(255) NOT NULL,
    patient_condition VARCHAR(255) NOT NULL,
    FOREIGN KEY (patient_Id) REFERENCES patients(patient_Id),
    FOREIGN KEY (doctorID) REFERENCES doctors(doctorID)
);
CREATE TABLE total_bill (
    patient_Id INT NOT NULL,
    patient_name VARCHAR(255) NOT NULL,
    Doctor_fee DECIMAL(10, 2),
    Medicine_bill DECIMAL(10, 2),
    dates Date,
    Grand_total DECIMAL(10, 2),
    FOREIGN KEY (patient_Id) REFERENCES patients(patient_Id)
);



INSERT INTO patients (patient_Id, patient_name, Age, Gender, Phone, Hospital_admitted) VALUES
(1, 'Aarav Mehta', 30, 'Male', '9876543210', 'Apollo Hospital'),
(2, 'Aisha Sharma', 25, 'Female', '9876543211', 'Apollo Hospital'),
(3, 'Ananya Patel', 28, 'Female', '9876543212', 'Apollo Hospital'),
(4, 'Arjun Reddy', 35, 'Male', '9876543213', 'Apollo Hospital'),
(5, 'Deepak Singh', 40, 'Male', '9876543214', 'Apollo Hospital'),
(6, 'Divya Kapoor', 32, 'Female', '9876543215', 'Apollo Hospital'),
(7, 'Ishan Gupta', 29, 'Male', '9876543216', 'Apollo Hospital'),
(8, 'Kavya Nair', 27, 'Female', '9876543217', 'Apollo Hospital'),
(9, 'Lakshmi Iyer', 33, 'Female', '9876543218', 'Apollo Hospital'),
(10, 'Madhav Joshi', 45, 'Male', '9876543219', 'Apollo Hospital'),
(11, 'Neha Verma', 26, 'Female', '9876543220', 'Apollo Hospital'),
(12, 'Nikhil Deshmukh', 31, 'Male', '9876543221', 'Apollo Hospital'),
(13, 'Priya Bhatt', 29, 'Female', '9876543222', 'Apollo Hospital'),
(14, 'Rohan Choudhury', 34, 'Male', '9876543223', 'Apollo Hospital'),
(15, 'Sanya Saxena', 24, 'Female', '9876543224', 'Apollo Hospital'),
(16, 'Sneha Rao', 30, 'Female', '9876543225', 'Apollo Hospital'),
(17, 'Tarun Malhotra', 37, 'Male', '9876543226', 'Apollo Hospital'),
(18, 'Varun Das', 28, 'Male', '9876543227', 'Apollo Hospital'),
(19, 'Vidya Menon', 35, 'Female', '9876543228', 'Apollo Hospital'),
(20, 'Yash Thakur', 32, 'Male', '9876543229', 'Apollo Hospital'),
(21, 'Akhil Kumar', 38, 'Male', '9876543230', 'Apollo Hospital'),
(22, 'Anjali Menon', 29, 'Female', '9876543231', 'Apollo Hospital'),
(23, 'Chandra Prakash', 47, 'Male', '9876543232', 'Apollo Hospital'),
(24, 'Gowri Shankar', 36, 'Male', '9876543233', 'Apollo Hospital'),
(25, 'Hemavati Devi', 42, 'Female', '9876543234', 'Apollo Hospital'),
(26, 'Indrajeet Singh', 39, 'Male', '9876543235', 'Apollo Hospital'),
(27, 'Janaki Iyer', 30, 'Female', '9876543236', 'Apollo Hospital'),
(28, 'Karthik Rao', 33, 'Male', '9876543237', 'Apollo Hospital'),
(29, 'Lakshmi Bai', 44, 'Female', '9876543238', 'Apollo Hospital'),
(30, 'Mohanlal Nair', 50, 'Male', '9876543239', 'Apollo Hospital'),
(31, 'Nalini Devi', 34, 'Female', '9876543240', 'Apollo Hospital'),
(32, 'Om Prakash', 60, 'Male', '9876543241', 'Apollo Hospital'),
(33, 'Priya Sharma', 27, 'Female', '9876543242', 'Apollo Hospital'),
(34, 'Rahul Varma', 41, 'Male', '9876543243', 'Apollo Hospital'),
(35, 'Seetha Lakshmi', 35, 'Female', '9876543244', 'Apollo Hospital'),
(36, 'Tanisha Kapoor', 26, 'Female', '9876543245', 'Apollo Hospital'),
(37, 'Uma Maheshwari', 52, 'Female', '9876543246', 'Apollo Hospital'),
(38, 'Vikram Singh', 48, 'Male', '9876543247', 'Apollo Hospital'),
(39, 'Yamini Patel', 31, 'Female', '9876543248', 'Apollo Hospital'),
(40, 'Yogesh Iyer', 29, 'Male', '9876543249', 'Apollo Hospital'),
(41, 'Krishna Mukherjee', 28, 'Female', '9876543237', 'Apollo Hospital'),
(42, 'Shireen Mirza', 30, 'Female', '9876543238', 'Apollo Hospital'),
(43, 'Neena Kulkarni', 55, 'Female', '9876543239', 'Apollo Hospital'),
(44, 'Sangram Singh', 40, 'Male', '9876543240', 'Apollo Hospital'),
(45, 'Mihika Verma', 35, 'Female', '9876543241', 'Apollo Hospital'),
(46, 'Avantika Hundal', 32, 'Female', '9876543242', 'Apollo Hospital'),
(47, 'Raj Singh Arora', 38, 'Male', '9876543243', 'Apollo Hospital'),
(48, 'Gautam Ahuja', 30, 'Male', '9876543244', 'Apollo Hospital'),
(49, 'Kaushal Kapoor', 36, 'Male', '9876543245', 'Apollo Hospital'),
(50, 'Pankaj Bhatia', 45, 'Male', '9876543246', 'Apollo Hospital'),
(51, 'Shahnaz Rizwan', 48, 'Female', '9876543247', 'Apollo Hospital'),
(52, 'Neeru Agarwal', 52, 'Female', '9876543248', 'Apollo Hospital'),
(53, 'Shruti Bapna', 34, 'Female', '9876543249', 'Apollo Hospital'),
(54, 'Neel Motwani', 29, 'Male', '9876543250', 'Apollo Hospital'),
(55, 'Vineet Kumar Chaudhary', 42, 'Male', '9876543251', 'Apollo Hospital'),
(56, 'Ribbhu Mehra', 37, 'Male', '9876543252', 'Apollo Hospital'),
(57, 'Avinash Mishra', 31, 'Male', '9876543253', 'Apollo Hospital'),
(58, 'Krishna Soni', 26, 'Male', '9876543254', 'Apollo Hospital'),
(59, 'Pavan Reddy', 27, 'Male', '9876543255', 'Apollo Hospital'),
(60, 'Gurucharan', 34, 'Male', '9876543256', 'Apollo Hospital'),
(61, 'Ashwitha', 39, 'Female', '9876543257', 'Apollo Hospital'),
(62, 'Harshdeep', 37, 'Male', '9876543258', 'Apollo Hospital'),
(63, 'Devansh', 35, 'Female', '9876543259', 'Apollo Hospital'),
(64, 'Sumith', 41, 'Male', '9876543260', 'Apollo Hospital'),
(65, 'Divyanshi', 28, 'Female', '9876543261', 'Apollo Hospital'),
(66, 'Anant Sharma', 32, 'Male', '9876543262', 'Apollo Hospital'),
(67, 'Gaurav Dixit', 29, 'Male', '9876543263', 'Apollo Hospital'),
(68, 'Kritika Trivedi', 28, 'Female', '9876543264', 'Apollo Hospital'),
(69, 'Neeraj Tiwari', 35, 'Male', '9876543265', 'Apollo Hospital'),
(70, 'Deepika Dubey', 30, 'Female', '9876543266', 'Apollo Hospital'),
(71, 'Amir Khan', 40, 'Male', '9876543267', 'Apollo Hospital'),
(72, 'Fatima Sheikh', 35, 'Female', '9876543268', 'Apollo Hospital'),
(73, 'Zaid Ahmed', 32, 'Male', '9876543269', 'Apollo Hospital'),
(74, 'Aisha Siddiqui', 28, 'Female', '9876543270', 'Apollo Hospital'),
(75, 'Salman Ali', 45, 'Male', '9876543271', 'Apollo Hospital'),
(76, 'Ethan Thomas', 31, 'Male', '9876543272', 'Apollo Hospital'),
(77, 'Olivia Mathew', 29, 'Female', '9876543273', 'Apollo Hospital'),
(78, 'Samuel Abraham', 33, 'Male', '9876543274', 'Apollo Hospital'),
(79, 'Grace Joseph', 32, 'Female', '9876543275', 'Apollo Hospital'),
(80, 'Benjamin David', 37, 'Male', '9876543276', 'Apollo Hospital'),
(81, 'Chloe Mathew', 28, 'Female', '9876543277', 'Apollo Hospital'),
(82, 'Luke Thomas', 39, 'Male', '9876543278', 'Apollo Hospital'),
(83, 'Sophia Abraham', 36, 'Female', '9876543279', 'Apollo Hospital'),
(84, 'Daniel David', 34, 'Male', '9876543280', 'Apollo Hospital'),
(85, 'Emily Joseph', 30, 'Female', '9876543281', 'Apollo Hospital'),
(86, 'Armaan Khan', 42, 'Male', '9876543282', 'Apollo Hospital'),
(87, 'Sana Khan', 38, 'Female', '9876543283', 'Apollo Hospital'),
(88, 'Imran Patel', 41, 'Male', '9876543284', 'Apollo Hospital'),
(89, 'Ayesha Khan', 37, 'Female', '9876543285', 'Apollo Hospital'),
(90, 'Vibha Shukla', 33, 'Female', '9876543286', 'Apollo Hospital'),
(91, 'Aryan Pathak', 40, 'Male', '9876543287', 'Apollo Hospital'),
(92, 'Nandini Dave', 34, 'Female', '9876543288', 'Apollo Hospital'),
(93, 'Parth Chaturvedi', 36, 'Male', '9876543289', 'Apollo Hospital'),
(94, 'Meenakshi Tripathi', 38, 'Female', '9876543290', 'Apollo Hospital'),
(95, 'Pramod Kumar', 45, 'Male', '9876543291', 'Apollo Hospital'),
(96, 'Thanmai Reddy', 42, 'Female', '9876543292', 'Apollo Hospital'),
(97, 'Satya Sharma', 39, 'Male', '9876543293', 'Apollo Hospital'),
(98, 'Shakir Khan', 41, 'Female', '9876543294', 'Apollo Hospital'),
(99, 'Snigdha Gupta', 47, 'Male', '9876543295', 'Apollo Hospital'),
(100, 'Nikitha Patel', 34, 'Female', '9876543296', 'Apollo Hospital');



INSERT INTO doctors (doctorID, doctorname, Specialization, Phone, Duty_hospital, Experience) VALUES
(101, 'Anusha Patel', 'Critical Care Physicians', '9876543210', 'Apollo Hospital', '15 years'),
(102, 'Imran Jain', 'General Practioners', '9876543211', 'Apollo Hospital', '10 years'),
(103, 'Swapna Katugul', 'Emergency Room Doctors', '9876543212', 'Apollo Hospital', '8 years'),
(104, 'Nirnaya Sake', 'General Practioners', '9876543213', 'Apollo Hospital', '12 years'),
(105, 'Jagruthi Menon', 'Critical Care Physicians', '9876543214', 'Apollo Hospital', '20 years'),
(106, 'Mithun Sharma', 'Emergency Room Doctors', '9876543215', 'Apollo Hospital', '18 years'),
(107, 'Ashok Chakravarthy', 'General Practioners', '9876543216', 'Apollo Hospital', '14 years'),
(108, 'Ranjith Reddy', 'Critical Care Physicians', '9876543217', 'Apollo Hospital', '17 years'),
(109, 'Bhargav Reddy', 'Emergency Room Doctors', '9876543218', 'Apollo Hospital', '9 years'),
(110, 'Asish Patel', 'Emergency Room Doctors', '9876543219', 'Apollo Hospital', '13 years'),
(201, 'Meeri Matha', 'Critical Care Physicians', '9876543220', 'Apollo Hospital', '15 years'),
(202, 'Sushmi Reddy', 'General Practioners', '9876543221', 'Apollo Hospital', '10 years'),
(203, 'Shravani Boggur', 'Emergency Room Doctors', '9876543222', 'Apollo Hospital', '8 years'),
(204, 'Amarnath Reddy', 'General Practioners', '9876543223', 'Apollo Hospital', '12 years'),
(205, 'Manohar Royal', 'Critical Care Physicians', '9876543224', 'Apollo Hospital', '20 years'),
(206, 'Sathish Kumar', 'Emergency Room Doctors', '9876543225', 'Apollo Hospital', '18 years'),
(207, 'Padmavathi Sharma', 'General Practioners', '9876543226', 'Apollo Hospital', '14 years'),
(208, 'Hema Dube', 'Critical Care Physicians', '9876543227', 'Apollo Hospital', '17 years'),
(209, 'Balakrishna Gowd', 'Emergency Room Doctors', '9876543228', 'Apollo Hospital', '9 years'),
(210, 'Srinivas Naidu', 'Emergency Room Doctors', '9876543229', 'Apollo Hospital', '13 years'),
(301, 'Jaypal Reddy', 'Critical Care Physicians', '9876543230', 'Apollo Hospital', '15 years'),
(302, 'John Samuel', 'General Practioners', '9876543231', 'Apollo Hospital', '10 years'),
(303, 'Raja Reddy', 'Emergency Room Doctors', '9876543232', 'Apollo Hospital', '8 years'),
(304, 'Amar Royal', 'General Practioners', '9876543233', 'Apollo Hospital', '12 years'),
(305, 'Kiranmai Gowd', 'Critical Care Physicians', '9876543234', 'Apollo Hospital', '20 years'),
(306, 'Deepthi Jordan', 'Emergency Room Doctors', '9876543235', 'Apollo Hospital', '18 years'),
(307, 'Usha Prakash', 'General Practioners', '9876543236', 'Apollo Hospital', '14 years'),
(308, 'Balaji Naidu', 'Critical Care Physicians', '9876543237', 'Apollo Hospital', '17 years'),
(309, 'Lakshmi Naryana', 'Emergency Room Doctors', '9876543238', 'Apollo Hospital', '9 years'),
(310, 'Arjit Patel', 'Emergency Room Doctors', '9876543239', 'Apollo Hospital', '13 years'),
(401, 'Simha Chakri', 'Critical Care Physicians', '9876543240', 'Apollo Hospital', '15 years'),
(402, 'Anil Kumar', 'General Practioners', '9876543241', 'Apollo Hospital', '10 years'),
(403, 'Waheeda Parveen', 'Emergency Room Doctors', '9876543242', 'Apollo Hospital', '8 years'),
(404, 'Guru Sidappa', 'General Practioners', '9876543243', 'Apollo Hospital', '12 years'),
(405, 'Sruthi Dutta', 'Critical Care Physicians', '9876543244', 'Apollo Hospital', '20 years'),
(406, 'Venkatesh Reddy', 'Emergency Room Doctors', '9876543245', 'Apollo Hospital', '18 years'),
(407, 'Pawan Kumar', 'General Practioners', '9876543246', 'Apollo Hospital', '14 years'),
(408, 'Sudheer Kumar', 'Critical Care Physicians', '9876543247', 'Apollo Hospital', '17 years'),
(409, 'Sreedhar Naidu', 'Emergency Room Doctors', '9876543248', 'Apollo Hospital', '9 years'),
(410, 'Hemanth Gowd', 'Emergency Room Doctors', '9876543249', 'Apollo Hospital', '13 years'),
(501, 'Kumar Sake', 'Critical Care Physicians', '9876543250', 'Apollo Hospital', '15 years'),
(502, 'Afroj Khan', 'General Practioners', '9876543251', 'Apollo Hospital', '10 years'),
(503, 'Sumaira Tanzeel', 'Emergency Room Doctors', '9876543252', 'Apollo Hospital', '8 years'),
(504, 'Divya Golla', 'General Practioners', '9876543253', 'Apollo Hospital', '12 years'),
(505, 'Lakshmi Naidu', 'Critical Care Physicians', '9876543254', 'Apollo Hospital', '20 years'),
(506, 'Nadiya Komali', 'Emergency Room Doctors', '9876543255', 'Apollo Hospital', '18 years'),
(507, 'Yashodha Diwakar', 'General Practioners', '9876543256', 'Apollo Hospital', '14 years'),
(508, 'Divya Nimmala', 'Critical Care Physicians', '9876543257', 'Apollo Hospital', '17 years'),
(509, 'Ankitha Gogula', 'Emergency Room Doctors', '9876543258', 'Apollo Hospital', '9 years'),
(510, 'Asif Shaik', 'Emergency Room Doctors', '9876543259', 'Apollo Hospital', '13 years');



INSERT INTO medical_report (patient_Id, patient_name, doctorname, doctorID, Disease, Doctors_Advice) VALUES
(1, 'Aarav Mehta', 'Anusha Patel', 101, 'Fever', 'Prescribed medication'),
(2, 'Aisha Sharma', 'Anusha Patel', 101, 'Headache', 'Advised rest'),
(3, 'Ananya Patel', 'Imran Jain', 102, 'Stomach ache', 'Prescribed medication'),
(4, 'Arjun Reddy', 'Imran Jain', 102, 'Back pain', 'Physiotherapy'),
(5, 'Deepak Singh', 'Swapna Katugul', 103, 'Cold and cough', 'Prescribed medication'),
(6, 'Divya Kapoor', 'Swapna Katugul', 103, 'Allergy', 'Antihistamines'),
(7, 'Ishan Gupta', 'Nirnaya Sake', 104, 'Fever', 'Prescribed medication'),
(8, 'Kavya Nair', 'Nirnaya Sake', 104, 'Sore throat', 'Antibiotics'),
(9, 'Lakshmi Iyer', 'Jagruthi Menon', 105, 'Headache', 'Advised rest'),
(10, 'Madhav Joshi', 'Jagruthi Menon', 105, 'Fever', 'Prescribed medication'),
(11, 'Neha Verma', 'Mithun Sharma', 106, 'Cold and cough', 'Prescribed medication'),
(12, 'Nikhil Deshmukh', 'Mithun Sharma', 106, 'Sore throat', 'Antibiotics'),
(13, 'Priya Bhatt', 'Ashok Chakravarthy', 107, 'Back pain', 'Physiotherapy'),
(14, 'Rohan Choudhury', 'Ashok Chakravarthy', 107, 'Headache', 'Advised rest'),
(15, 'Sanya Saxena', 'Ranjith Reddy', 108, 'Fever', 'Prescribed medication'),
(16, 'Sneha Rao', 'Ranjith Reddy', 108, 'Stomach ache', 'Prescribed medication'),
(17, 'Tarun Malhotra', 'Bhargav Reddy', 109, 'Allergy', 'Antihistamines'),
(18, 'Varun Das', 'Bhargav Reddy', 109, 'Cold and cough', 'Prescribed medication'),
(19, 'Vidya Menon', 'Asish Patel', 110, 'Sore throat', 'Antibiotics'),
(20, 'Yash Thakur', 'Asish Patel', 110, 'Back pain', 'Physiotherapy'),
(21, 'Akhil Kumar', 'Meeri Matha', 201, 'Fever', 'Prescribed medication'),
(22, 'Anjali Menon', 'Meeri Matha', 201, 'Headache', 'Advised rest'),
(23, 'Chandra Prakash', 'Sushmi Reddy', 202, 'Stomach ache', 'Prescribed medication'),
(24, 'Gowri Shankar', 'Sushmi Reddy', 202, 'Back pain', 'Physiotherapy'),
(25, 'Hemavati Devi', 'Shravani Boggur', 203, 'Cold and cough', 'Prescribed medication'),
(26, 'Indrajeet Singh', 'Shravani Boggur', 203, 'Allergy', 'Antihistamines'),
(27, 'Janaki Iyer', 'Amarnath Reddy', 204, 'Fever', 'Prescribed medication'),
(28, 'Karthik Rao', 'Amarnath Reddy', 204, 'Sore throat', 'Antibiotics'),
(29, 'Lakshmi Bai', 'Manohar Royal', 205, 'Headache', 'Advised rest'),
(30, 'Mohanlal Nair', 'Manohar Royal', 205, 'Fever', 'Prescribed medication'),
(31, 'Nalini Devi', 'Sathish Kumar', 206, 'Cold and cough', 'Prescribed medication'),
(32, 'Om Prakash', 'Sathish Kumar', 206, 'Sore throat', 'Antibiotics'),
(33, 'Priya Sharma', 'Padmavathi Sharma', 207, 'Back pain', 'Physiotherapy'),
(34, 'Rahul Varma', 'Padmavathi Sharma', 207, 'Headache', 'Advised rest'),
(35, 'Seetha Lakshmi', 'Hema Dube', 208, 'Fever', 'Prescribed medication'),
(36, 'Tanisha Kapoor', 'Hema Dube', 208, 'Stomach ache', 'Prescribed medication'),
(37, 'Uma Maheshwari', 'Balakrishna Gowd', 209, 'Allergy', 'Antihistamines'),
(38, 'Vikram Singh', 'Balakrishna Gowd', 209, 'Cold and cough', 'Prescribed medication'),
(39, 'Yamini Patel', 'Srinivas Naidu', 210, 'Sore throat', 'Antibiotics'),
(40, 'Yogesh Iyer', 'Srinivas Naidu', 210, 'Back pain', 'Physiotherapy'),
(41, 'Krishna Mukherjee', 'Jaypal Reddy', 301, 'Fever', 'Prescribed medication'),
(42, 'Shireen Mirza', 'Jaypal Reddy', 301, 'Headache', 'Advised rest'),
(43, 'Neena Kulkarni', 'Jaypal Reddy', 301, 'Stomach ache', 'Prescribed medication'),
(44, 'Sangram Singh', 'John Samuel', 302, 'Back pain', 'Physiotherapy'),
(45, 'Mihika Verma', 'John Samuel', 302, 'Allergy', 'Antihistamines'),
(46, 'Avantika Hundal', 'John Samuel', 302, 'Cold and cough', 'Prescribed medication'),
(47, 'Raj Singh Arora', 'Raja Reddy', 303, 'Fever', 'Prescribed medication'),
(48, 'Gautam Ahuja', 'Raja Reddy', 303, 'Sore throat', 'Antibiotics'),
(49, 'Kaushal Kapoor', 'Raja Reddy', 303, 'Headache', 'Advised rest'),
(50, 'Pankaj Bhatia', 'Amar Royal', 304, 'Stomach ache', 'Prescribed medication'),
(51, 'Shahnaz Rizwan', 'Amar Royal', 304, 'Back pain', 'Physiotherapy'),
(52, 'Neeru Agarwal', 'Kiranmai Gowd', 305, 'Cold and cough', 'Prescribed medication'),
(53, 'Shruti Bapna', 'Kiranmai Gowd', 305, 'Allergy', 'Antihistamines'),
(54, 'Neel Motwani', 'Deepthi Jordan', 306, 'Fever', 'Prescribed medication'),
(55, 'Vineet Kumar Chaudhary', 'Deepthi Jordan', 306, 'Headache', 'Advised rest'),
(56, 'Ribbhu Mehra', 'Usha Prakash', 307, 'Stomach ache', 'Prescribed medication'),
(57, 'Avinash Mishra', 'Usha Prakash', 307, 'Back pain', 'Physiotherapy'),
(58, 'Krishna Soni', 'Balaji Naidu', 308, 'Cold and cough', 'Prescribed medication'),
(59, 'Pavan Reddy', 'Balaji Naidu', 308, 'Allergy', 'Antihistamines'),
(60, 'Gurucharan', 'Lakshmi Naryana', 309, 'Fever', 'Prescribed medication'),
(61, 'Ashwitha', 'Lakshmi Naryana', 309, 'Sore throat', 'Antibiotics'),
(62, 'Harshdeep', 'Arjit Patel', 310, 'Headache', 'Advised rest'),
(63, 'Devansh', 'Arjit Patel', 310, 'Stomach ache', 'Prescribed medication'),
(64, 'Sumith', 'Amar Royal', 304, 'Sore throat', 'Antibiotics'),
(65, 'Divyanshi', 'Kiranmai Gowd', 305, 'Back pain', 'Physiotherapy'),
(66, 'Anant Sharma', 'Simha Chakri', 401, 'Fever', 'Prescribed medication'),
(67, 'Gaurav Dixit', 'Simha Chakri', 401, 'Headache', 'Advised rest'),
(68, 'Kritika Trivedi', 'Anil Kumar', 402, 'Stomach ache', 'Prescribed medication'),
(69, 'Neeraj Tiwari', 'Anil Kumar', 402, 'Back pain', 'Physiotherapy'),
(70, 'Deepika Dubey', 'Waheeda Parveen', 403, 'Cold and cough', 'Prescribed medication'),
(71, 'Amir Khan', 'Waheeda Parveen', 403, 'Sore throat', 'Antibiotics'),
(72, 'Fatima Sheikh', 'Guru Sidappa', 404, 'Headache', 'Advised rest'),
(73, 'Zaid Ahmed', 'Guru Sidappa', 404, 'Fever', 'Prescribed medication'),
(74, 'Aisha Siddiqui', 'Sruthi Dutta', 405, 'Stomach ache', 'Prescribed medication'),
(75, 'Salman Ali', 'Venkatesh Reddy', 406, 'Back pain', 'Physiotherapy'),
(76, 'Ethan Thomas', 'Pawan Kumar', 407, 'Cold and cough', 'Prescribed medication'),
(77, 'Olivia Mathew', 'Sudheer Kumar', 408, 'Sore throat', 'Antibiotics'),
(78, 'Samuel Abraham', 'Sreedhar Naidu', 409, 'Headache', 'Advised rest'),
(79, 'Grace Joseph', 'Hemanth Gowd', 410, 'Fever', 'Prescribed medication'),
(80, 'Benjamin David', 'Simha Chakri', 401, 'Stomach ache', 'Prescribed medication'),
(81, 'Chloe Mathew', 'Anil Kumar', 402, 'Back pain', 'Physiotherapy'),
(82, 'Luke Thomas', 'Kumar Sake', 501, 'Fever', 'Prescribed medication'),
(83, 'Sophia Abraham', 'Kumar Sake', 501, 'Headache', 'Advised rest'),
(84, 'Daniel David', 'Afroj Khan', 502, 'Stomach ache', 'Prescribed medication'),
(85, 'Emily Joseph', 'Afroj Khan', 502, 'Back pain', 'Physiotherapy'),
(86, 'Armaan Khan', 'Sumaira Tanzeel', 503, 'Cold and cough', 'Prescribed medication'),
(87, 'Sana Khan', 'Sumaira Tanzeel', 503, 'Allergy', 'Antihistamines'),
(88, 'Imran Patel', 'Divya Golla', 504, 'Fever', 'Prescribed medication'),
(89, 'Ayesha Khan', 'Divya Golla', 504, 'Sore throat', 'Antibiotics'),
(90, 'Vibha Shukla', 'Lakshmi Naidu', 505, 'Headache', 'Advised rest'),
(91, 'Aryan Pathak', 'Lakshmi Naidu', 505, 'Fever', 'Prescribed medication'),
(92, 'Nandini Dave', 'Nadiya Komali', 506, 'Cold and cough', 'Prescribed medication'),
(93, 'Parth Chaturvedi', 'Nadiya Komali', 506, 'Sore throat', 'Antibiotics'),
(94, 'Meenakshi Tripathi', 'Yashodha Diwakar', 507, 'Back pain', 'Physiotherapy'),
(95, 'Pramod Kumar', 'Divya Nimmala', 508, 'Fever', 'Prescribed medication'),
(96, 'Thanmai Reddy', 'Ankitha Gogula', 509, 'Headache', 'Advised rest'),
(97, 'Satya Sharma', 'Asif Shaik', 510, 'Cold and cough', 'Prescribed medication'),
(98, 'Shakir Khan', 'Divya Nimmala', 508, 'Back pain', 'Physiotherapy'),
(99, 'Snigdha Gupta', 'Ankitha Gogula', 509, 'Cold and cough', 'Prescribed medication'),
(100, 'Nikitha Patel', 'Asif Shaik', 510, 'Sore throat', 'Antibiotics');



INSERT INTO prescription (patient_Id, patient_name, doctorname, doctorID, Medicines, Dosage, Number_of_days, Disease)
VALUES
(1, 'Aarav Mehta', 'Anusha Patel', 101, 'Paracetamol', '500mg', 3, 'Fever'),
(2, 'Aisha Sharma', 'Anusha Patel', 101, 'Ibuprofen', 'N/A', 5, 'Headache'),
(3, 'Ananya Patel', 'Imran Jain', 102, 'Antacid', '250mg', 7, 'Stomach ache'),
(4, 'Arjun Reddy', 'Imran Jain', 102, 'Painkiller', 'N/A', 10, 'Back pain'),
(5, 'Deepak Singh', 'Swapna Katugul', 103, 'Cough syrup', '10ml', 5, 'Cold and cough'),
(6, 'Divya Kapoor', 'Swapna Katugul', 103, 'Antihistamine', '1 tablet', 7, 'Allergy'),
(7, 'Ishan Gupta', 'Nirnaya Sake', 104, 'Paracetamol', '500mg', 3, 'Fever'),
(8, 'Kavya Nair', 'Nirnaya Sake', 104, 'Throat lozenge', '250mg', 7, 'Sore throat'),
(9, 'Lakshmi Iyer', 'Jagruthi Menon', 105, 'Ibuprofen', 'N/A', 5, 'Headache'),
(10, 'Madhav Joshi', 'Jagruthi Menon', 105, 'Paracetamol', '500mg', 3, 'Fever'),
(11, 'Neha Verma', 'Mithun Sharma', 106, 'Cough syrup', '10ml', 5, 'Cold and cough'),
(12, 'Nikhil Deshmukh', 'Mithun Sharma', 106, 'Throat lozenge', '250mg', 7, 'Sore throat'),
(13, 'Priya Bhatt', 'Ashok Chakravarthy', 107, 'Painkiller', 'N/A', 10, 'Back pain'),
(14, 'Rohan Choudhury', 'Ashok Chakravarthy', 107, 'Ibuprofen', 'N/A', 5, 'Headache'),
(15, 'Sanya Saxena', 'Ranjith Reddy', 108, 'Paracetamol', '500mg', 3, 'Fever'),
(16, 'Sneha Rao', 'Ranjith Reddy', 108, 'Antacid', '250mg', 7, 'Stomach ache'),
(17, 'Tarun Malhotra', 'Bhargav Reddy', 109, 'Antihistamine', '1 tablet', 7, 'Allergy'),
(18, 'Varun Das', 'Bhargav Reddy', 109, 'Cough syrup', '10ml', 5, 'Cold and cough'),
(19, 'Vidya Menon', 'Asish Patel', 110, 'Throat lozenge', '250mg', 7, 'Sore throat'),
(20, 'Yash Thakur', 'Asish Patel', 110, 'Painkiller', 'N/A', 10, 'Back pain'),
(21, 'Akhil Kumar', 'Meeri Matha', 201, 'Paracetamol', '500mg', 3, 'Fever'),
(22, 'Anjali Menon', 'Meeri Matha', 201, 'Ibuprofen', 'N/A', 5, 'Headache'),
(23, 'Chandra Prakash', 'Sushmi Reddy', 202, 'Antacid', '250mg', 7, 'Stomach ache'),
(24, 'Gowri Shankar', 'Sushmi Reddy', 202, 'Painkiller', 'N/A', 10, 'Back pain'),
(25, 'Hemavati Devi', 'Shravani Boggur', 203, 'Cough syrup', '10ml', 5, 'Cold and cough'),
(26, 'Indrajeet Singh', 'Shravani Boggur', 203, 'Antihistamine', '1 tablet', 7, 'Allergy'),
(27, 'Janaki Iyer', 'Amarnath Reddy', 204, 'Paracetamol', '500mg', 3, 'Fever'),
(28, 'Karthik Rao', 'Amarnath Reddy', 204, 'Throat lozenge', '250mg', 7, 'Sore throat'),
(29, 'Lakshmi Bai', 'Manohar Royal', 205, 'Ibuprofen', 'N/A', 5, 'Headache'),
(30, 'Mohanlal Nair', 'Manohar Royal', 205, 'Paracetamol', '500mg', 3, 'Fever'),
(31, 'Nalini Devi', 'Sathish Kumar', 206, 'Cough syrup', '10ml', 5, 'Cold and cough'),
(32, 'Om Prakash', 'Sathish Kumar', 206, 'Throat lozenge', '250mg', 7, 'Sore throat'),
(33, 'Priya Sharma', 'Padmavathi Sharma', 207, 'Painkiller', 'N/A', 10, 'Back pain'),
(34, 'Rahul Varma', 'Padmavathi Sharma', 207, 'Ibuprofen', 'N/A', 5, 'Headache'),
(35, 'Seetha Lakshmi', 'Hema Dube', 208, 'Paracetamol', '500mg', 3, 'Fever'),
(36, 'Tanisha Kapoor', 'Hema Dube', 208, 'Antacid', '250mg', 7, 'Stomach ache'),
(37, 'Uma Maheshwari', 'Balakrishna Gowd', 209, 'Antihistamine', '1 tablet', 7, 'Allergy'),
(38, 'Vikram Singh', 'Balakrishna Gowd', 209, 'Cough syrup', '10ml', 5, 'Cold and cough'),
(39, 'Yamini Patel', 'Srinivas Naidu', 210, 'Throat lozenge', '250mg', 7, 'Sore throat'),
(40, 'Yogesh Iyer', 'Srinivas Naidu', 210, 'Painkiller', 'N/A', 10, 'Back pain'),
(41, 'Krishna Mukherjee', 'Jaypal Reddy', 301, 'Paracetamol', '500mg', 3, 'Fever'),
(42, 'Shireen Mirza', 'Jaypal Reddy', 301, 'Ibuprofen', 'N/A', 5, 'Headache'),
(43, 'Neena Kulkarni', 'Jaypal Reddy', 301, 'Antacid', '250mg', 7, 'Stomach ache'),
(44, 'Sangram Singh', 'John Samuel', 302, 'Painkiller', 'N/A', 10, 'Back pain'),
(45, 'Mihika Verma', 'John Samuel', 302, 'Antihistamine', '1 tablet', 7, 'Allergy'),
(46, 'Avantika Hundal', 'John Samuel', 302, 'Cough syrup', '10ml', 5, 'Cold and cough'),
(47, 'Raj Singh Arora', 'Raja Reddy', 303, 'Paracetamol', '500mg', 3, 'Fever'),
(48, 'Gautam Ahuja', 'Raja Reddy', 303, 'Throat lozenge', '250mg', 7, 'Sore throat'),
(49, 'Kaushal Kapoor', 'Raja Reddy', 303, 'Ibuprofen', 'N/A', 5, 'Headache'),
(50, 'Pankaj Bhatia', 'Amar Royal', 304, 'Antacid', '250mg', 7, 'Stomach ache'),
(51, 'Shahnaz Rizwan', 'Amar Royal', 304, 'Painkiller', 'N/A', 10, 'Back pain'),
(52, 'Neeru Agarwal', 'Kiranmai Gowd', 305, 'Cough syrup', '10ml', 5, 'Cold and cough'),
(53, 'Shruti Bapna', 'Kiranmai Gowd', 305, 'Antihistamine', '1 tablet', 7, 'Allergy'),
(54, 'Neel Motwani', 'Deepthi Jordan', 306, 'Paracetamol', '500mg', 3, 'Fever'),
(55, 'Vineet Kumar Chaudhary', 'Deepthi Jordan', 306, 'Ibuprofen', 'N/A', 5, 'Headache'),
(56, 'Ribbhu Mehra', 'Usha Prakash', 307, 'Antacid', '250mg', 7, 'Stomach ache'),
(57, 'Avinash Mishra', 'Usha Prakash', 307, 'Painkiller', 'N/A', 10, 'Back pain'),
(58, 'Krishna Soni', 'Balaji Naidu', 308, 'Cough syrup', '10ml', 5, 'Cold and cough'),
(59, 'Pavan Reddy', 'Balaji Naidu', 308, 'Antihistamine', '1 tablet', 7, 'Allergy'),
(60, 'Gurucharan', 'Lakshmi Naryana', 309, 'Paracetamol', '500mg', 3, 'Fever'),
(61, 'Ashwitha', 'Lakshmi Naryana', 309, 'Throat lozenge', '250mg', 7, 'Sore throat'),
(62, 'Harshdeep', 'Arjit Patel', 310, 'Ibuprofen', 'N/A', 5, 'Headache'),
(63, 'Devansh', 'Arjit Patel', 310, 'Antacid', '250mg', 7, 'Stomach ache'),
(64, 'Sumith', 'Amar Royal', 304, 'Throat lozenge', '250mg', 7, 'Sore throat'),
(65, 'Divyanshi', 'Kiranmai Gowd', 305, 'Painkiller', 'N/A', 10, 'Back pain'),
(66, 'Anant Sharma', 'Simha Chakri', 401, 'Paracetamol', '500mg', 3, 'Fever'),
(67, 'Gaurav Dixit', 'Simha Chakri', 401, 'Ibuprofen', 'N/A', 5, 'Headache'),
(68, 'Kritika Trivedi', 'Anil Kumar', 402, 'Antacid', '250mg', 7, 'Stomach ache'),
(69, 'Neeraj Tiwari', 'Anil Kumar', 402, 'Painkiller', 'N/A', 10, 'Back pain'),
(70, 'Deepika Dubey', 'Waheeda Parveen', 403, 'Cough syrup', '10ml', 5, 'Cold and cough'),
(71, 'Amir Khan', 'Waheeda Parveen', 403, 'Throat lozenge', '250mg', 7, 'Sore throat'),
(72, 'Fatima Sheikh', 'Guru Sidappa', 404, 'Ibuprofen', 'N/A', 5, 'Headache'),
(73, 'Zaid Ahmed', 'Guru Sidappa', 404, 'Paracetamol', '500mg', 3, 'Fever'),
(74, 'Aisha Siddiqui', 'Sruthi Dutta', 405, 'Antacid', '250mg', 7, 'Stomach ache'),
(75, 'Salman Ali', 'Venkatesh Reddy', 406, 'Painkiller', 'N/A', 10, 'Back pain'),
(76, 'Ethan Thomas', 'Pawan Kumar', 407, 'Cough syrup', '10ml', 5, 'Cold and cough'),
(77, 'Olivia Mathew', 'Sudheer Kumar', 408, 'Throat lozenge', '250mg', 7, 'Sore throat'),
(78, 'Samuel Abraham', 'Sreedhar Naidu', 409, 'Ibuprofen', 'N/A', 5, 'Headache'),
(79, 'Grace Joseph', 'Hemanth Gowd', 410, 'Paracetamol', '500mg', 3, 'Fever'),
(80, 'Benjamin David', 'Simha Chakri', 401, 'Antacid', '250mg', 7, 'stomachache'),
(81, 'Chloe Mathew', 'Anil Kumar', 402, 'Painkiller', 'N/A', 10, 'Back pain'),
(82, 'Luke Thomas', 'Kumar Sake', 501, 'Paracetamol', '500mg', 3, 'Fever'),
(83, 'Sophia Abraham', 'Kumar Sake', 501, 'Ibuprofen', 'N/A', 5, 'Headache'),
(84, 'Daniel David', 'Afroj Khan', 502, 'Antacid', '250mg', 7, 'Stomach ache'),
(85, 'Emily Joseph', 'Afroj Khan', 502, 'Painkiller', 'N/A', 10, 'Back pain'),
(86, 'Armaan Khan', 'Sumaira Tanzeel', 503, 'Cough syrup', '10ml', 5, 'Cold and cough'),
(87, 'Sana Khan', 'Sumaira Tanzeel', 503, 'Antihistamine', '50mg', 7, 'Allergy'),
(88, 'Imran Patel', 'Divya Golla', 504, 'Paracetamol', '500mg', 3, 'Fever'),
(89, 'Ayesha Khan', 'Divya Golla', 504, 'Throat lozenge', '250mg', 7, 'Sore throat'),
(90, 'Vibha Shukla', 'Lakshmi Naidu', 505, 'Ibuprofen', 'N/A', 5, 'Headache'),
(91, 'Aryan Pathak', 'Lakshmi Naidu', 505, 'Paracetamol', '500mg', 3, 'Fever'),
(92, 'Nandini Dave', 'Nadiya Komali', 506, 'Cough syrup', '10ml', 5, 'Cold and cough'),
(93, 'Parth Chaturvedi', 'Nadiya Komali', 506, 'Throat lozenge', '250mg', 7, 'Sore throat'),
(94, 'Meenakshi Tripathi', 'Yashodha Diwakar', 507, 'Painkiller', 'N/A', 10, 'Back pain'),
(95, 'Pramod Kumar', 'Divya Nimmala', 508, 'Paracetamol', '500mg', 3, 'Fever'),
(98, 'Shakir Khan', 'Divya Nimmala', 508, 'Painkiller', 'N/A', 10, 'Back pain'),
(96, 'Thanmai Reddy', 'Ankitha Gogula', 509, 'Ibuprofen', 'N/A', 5, 'Headache'),
(99, 'Snigdha Gupta', 'Ankitha Gogula', 509, 'Cough syrup', '10ml', 5, 'Cold and cough'),
(97, 'Satya Sharma', 'Asif Shaik', 510, 'Cough syrup', '500mg', 3, 'Cold and cough'),
(100, 'Nikitha Patel', 'Asif Shaik', 510, 'Throat lozenge', '250mg', 7, 'Sore throat');



INSERT INTO treatment_Status (patient_Id, patient_name, DoctorID, doctorname, patient_condition)
SELECT 
    mr.patient_Id,
    p.patient_name,
    mr.doctorID,
    mr.doctorname,
    CASE
        WHEN mr.Disease IN ('Fever', 'Headache', 'Back pain', 'Sore throat') THEN 'Severe'
        WHEN mr.Disease IN ('Cold and cough', 'Stomach ache') THEN 'Mild'
        WHEN mr.Disease IN ('Allergy') THEN 'Severe'
        ELSE 'No specific condition'
    END AS patient_condition
FROM medical_report mr
JOIN patients p ON mr.patient_Id = p.patient_Id;



INSERT INTO total_bill (patient_Id, patient_name, Doctor_fee, Medicine_bill, dates, Grand_total)
SELECT 
    p.patient_Id,
    p.patient_name,
    300 AS Doctor_fee,
    CASE
        WHEN ts.patient_condition = 'Severe' THEN 500
        WHEN ts.patient_condition = 'Mild' THEN 350
        ELSE 0
    END AS Medicine_bill,
    '2024-06-01' AS dates,
    (300 + 
    CASE
        WHEN ts.patient_condition = 'Severe' THEN 500
        WHEN ts.patient_condition = 'Mild' THEN 350
        ELSE 0
    END) AS Grand_total
FROM patients p
JOIN treatment_Status ts ON p.patient_Id = ts.patient_Id
WHERE p.patient_Id BETWEEN 1 AND 100;

select * from patients;

select * from doctors;

select * from medical_report;

select * from treatment_status;

select * from prescription;

select * from total_bill;

SELECT * from patients;
SELECT count(*) from patients;

SELECT * from doctors;
SELECT count(*) from doctors;

SELECT * from medical_report;
SELECT count(*) from medical_report;

SELECT * from treatment_status;
SELECT count(*) from treatment_status;

SELECT * from prescription;
SELECT count(*) from prescription;

SELECT * from total_bill;
SELECT count(*) from total_bill;