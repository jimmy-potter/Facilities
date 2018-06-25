#### LOADING DATASETS

## Load Part 1: Nurse Short Interview (Cleaned Data)
p1 <- read.csv("~/Google Drive/UP FOS Data/SN_01_Short_Interview/20180501_SN_01_Short_Interview/20180501_SN_01_Short_Interview_Clean_Data/20180501_SN_01_Short_Interview_VF.csv")

## Load Part 2: Event Observations (Cleaned Data)
event <- read.csv("~/Google Drive/UP FOS Data/Event_Observations/20180517_Event_Observations/20180517_Event_Observations_Clean_Data/20180517_Event_Observations_VF.csv")

## Load Part 3: Nurse End Interview (Cleaned Data)
p3 <- read.csv("~/Google Drive/UP FOS Data/SN_02_End_Interview/20180501_SN_02_End_Interview/20180501_SN_02_End_Interview_Clean_Data/20180501_SN_02_End_Interview_VF.csv")

## Load Facility Inventory 1 (Cleaned Data)
fac1 <- read.csv("~/Google Drive/UP FOS Data/Facility_Inventory/20180501_Facility_Inventory/20180501_Facility_Inventory_Clean_Data/20180501_Facility_Inventory_VF.csv")

## Load Facility Inventory 2 (Cleaned Data)
fac2 <- read.csv("~/Google Drive/UP FOS Data/Facility_Inventory/20180502_Facility_Inventory/20180502_Facility_Inventory_Clean_Data/20180502_Facility_Inventory_VF.csv")



#### Event data: Understanding flow of patients through facilities

## Notice how the immediate refusals of patients are clustered at some facilities
table(event$q101,event$q181)

## Strange that most of the referrals were listed as "no contact was made with higher facility" - OH, because they were just sent without being contacted first
table(event$q286)

## Look back and comment
x <- table(event$q303_o1, event$q281, exclude = NULL)
addmargins(x)


#### Basic Descriptives








