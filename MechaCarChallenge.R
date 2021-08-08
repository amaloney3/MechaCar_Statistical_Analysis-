#Deliverable 1
library(dplyr)
mecha_car_data <- read.csv("MechaCar_mpg.csv")
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance 
   + AWD,data=mecha_car_data)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car_data))

#Deliverable 2
suspension_coils <- read.csv("Suspension_Coil.csv")
total_summary <- suspension_coils %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups= 'keep')
lot_summary <- suspension_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups= 'keep')

#Deliverable 3
t.test(suspension_coils$PSI, mu=1500) #PSI across all lots vs. pop. mean 1,500

##subset coil data by Lot
Lot1 <- subset(suspension_coils, Manufacturing_Lot=="Lot1")
Lot2 <- subset(suspension_coils, Manufacturing_Lot=="Lot2")
Lot3 <- subset(suspension_coils, Manufacturing_Lot=="Lot3")

##t.test for mean PSI of each lot vs. pop. mean 1,500
t.test(Lot1$PSI, mu=1500)
t.test(Lot2$PSI, mu=1500)
t.test(Lot3$PSI, mu=1500)



