# A Statistical Analysis on 'MechaCars'
## Linear Regression to Predict MPG

Based on our model, the length of the vehicle (vehicle_length) and clearance off the ground (ground_clearance) appear to have 
a significant influence on miles per gallon. The summary of the linear model function shows each of those variables have p-values well below a 5% threshold, meaning each is statistically unlikely to contribute a random amount of variance to our linear model. The weight of the vehicle (vehicle_weight) comes close at around 7%, but doesn't quite 
reach that level.

The slope is likely not zero because the p-value of our model is very small -- roughly 5.35 x 10 to the -11th power. This suggests there is sufficient evidence to reject
the null hypothesis that the slope of the model is zero.

This model does appear to predict mpg of MechaCar prototypes effectively, based on the R-squared value produced by the summary of the linear model. The multiple R-squared
figure is roughly 0.72, meaning about 72% of the variablilty of our dependent variable (mpg) can be explained using this linear model.

![image](https://user-images.githubusercontent.com/1015285/128636706-0a17297a-bf41-4d0b-8761-62d8c03efae4.png)

![image](https://user-images.githubusercontent.com/1015285/128636726-880b53e6-d313-47ea-a0b8-8f1be0f365a0.png)

## Summary Statistics on Suspension Coils

The varaince for total lots meets the specification that suspension coil variance not exceed 100 PSI. The variance for all suspension coils, regardless of manufacturing lot, is a little more than 62 (see below). 

![image](https://user-images.githubusercontent.com/1015285/128639327-5bedf54a-5f4d-4545-94f3-2a4f48c3c977.png)

Total Summary

The data also suggest Lots 1 and 2 are under the 100 PSI threshold, by quite a wide margin. However, Lot 3 far exceeds the 100 PSI limit, with a variance of more than 170 (see below). The data analytics team would probably recommend upper management investigate what's leading to such a large discrepancy in the models coming out of Lot 3.

![image](https://user-images.githubusercontent.com/1015285/128639315-12db9da4-f4f7-44bd-bc72-71472a1f2fb5.png)

Lot Summary

## T-Tests on Suspension Coils

Assuming a significance level of 5%, we do not have enough evidence to reject the null hypothesis that the mean PSI across all lots is statistically different than the 
population mean of 1,500 PSI.

![image](https://user-images.githubusercontent.com/1015285/128640484-421e5806-45ac-42f7-a741-dc8d86fc29a5.png)

For the mean PSI of Lots 1 and 2, we again do not have enough evidence to reject the null hypothesis. The P-value in both tests does not reach our significance threshold of 5% (see below), meaning we do not reject the null hypothesis that the mean is the same as that of the population mean of 1,500.

![image](https://user-images.githubusercontent.com/1015285/128640857-13e14034-0928-4971-aa44-0e1c6fde1fe2.png)

The T-test for Lot 3, however, does provide evidence of a mean that is statistically different from 1,500. The sample mean is 1,496.14, and the P-value is roughly 4%, just below our 5% threshold. Additionally, the 95-percent confidence interval does not include 1,500.

![image](https://user-images.githubusercontent.com/1015285/128640965-ad9c1447-6d66-4ddf-b3af-0d6279b26cd9.png)

## Study Design: MechaCar vs Competition

Car shoppers use a litany of variables to make their ultimate purchase decisions. But highway fuel efficiency is often a primary concern, especially with average gas prices
above $3.00 per gallon across the country. To that end, consumers would certainly be interested in comparing the miles per gallon in the MechaCar to that of its competitors.

We can actually approximate this analysis by using the MechaCars dataset in this module, as well as R's built-in mtcars dataset (and a few assumptions). Let's assume
the 'mpg' variable in each dataset refers to miles per gallon achieved during highway driving. Let's also assume both datasets conform to the other assumptions needed to do a valid comparison between sample means (the values are independent of each other, obtained via a random sample from each population, and are normally distributed, among other things).

Our null hypothesis is that the mean mpg of MechaCars and the mean mpg of all other cars is the same. Our alternative hypothesis is that they are statistically different.
We can conduct a two-sample T-test of means to find out:

![image](https://user-images.githubusercontent.com/1015285/128643777-2f759254-2b84-435f-ba32-63b021450e85.png)

Again, it's somewhat difficult to assume this analysis is 100% germane. We would probably want to re-collect all the data again to get updated samples, ensure our assumptions are valid and that a two-sample T-test on means is appropriate. However, if we assume our MechaCars data is a reasonable sample of all MechaCars coming off the assembly line, and the mtcars dataset approximates a population of "other" vehicles and the miles per gallon they can achieve on the highway, we would reject the null hypothesis and conclude that MechaCars' mpg is statistically different from that achieved by competitors. Indeed, the mean miles per gallon of MechaCars is ~ 45 while the mean of all other vehicles is ~ 20. Our P-value of 1.87 x 10 to the -15th power is extremely small, and well below the 5% threshold. Although consumers will want to know price, safety, and a number of other data points before making a vehicle purchase, this should provide some confidence that MechaCars provide better fuel efficiency.


