# Explore the famous River Nile annual streamflow data:


# Print the Nile dataset
print(Nile)

# List the number of observations in the Nile dataset
length(Nile)

# Display the first 10 elements of the Nile dataset
head(Nile, n = 10)

# Display the last 12 elements of the Nile dataset
tail(Nile, n = 12)


# Plot the Nile data
plot(Nile)

# Plot the Nile data with xlab and ylab arguments
plot(Nile, xlab = "Year", ylab = "River Volume (1e9 m^{3})")

# Plot the Nile data with xlab, ylab, main, and type arguments
plot(
  Nile,
  xlab = "Year",
  ylab = "River Volume (1e9 m^{3})",
  main = "Annual River Nile Volume at Aswan, 1871-1970",
  type = "b"
)

"The start() and end() functions return the time index of the first and last observations, respectively.
The time() function calculates a vector of time indices, with one element for each time index on which
the series was observed.

The deltat() function returns the fixed time interval between observations and the frequency() function
returns the number of observations per unit time. Finally, the cycle() function returns the position
in the cycle of each observation."

# Plot AirPassengers
plot(AirPassengers)

# View the start and end dates of AirPassengers
start(AirPassengers)
end(AirPassengers)

# Use time(), deltat(), frequency(), and cycle() with AirPassengers
time(AirPassengers)
deltat(AirPassengers)
frequency(AirPassengers)
cycle(AirPassengers)

"Sometimes there are missing values in time series data, denoted NA in R, and it is useful to know
their locations. It is also important to know how missing values are handled by various R functions.
The mean() function calculates the sample mean, but it fails in the presence of any NA values.
"

# Plot the AirPassengers data
plot(AirPassengers)

# Compute the mean of AirPassengers
mean(AirPassengers, na.rm = TRUE)

# Impute mean values to NA in AirPassengers
AirPassengers[85:96] <- mean(AirPassengers, na.rm = TRUE)

print(AirPassengers[85:96])

# Generate another plot of AirPassengers
plot(AirPassengers)

# Add the complete AirPassengers data to your plot
rm(AirPassengers)
points(AirPassengers,
       type = "l",
       col = 2,
       lty = 3)

"The function ts() can be applied to create time series objects. A time series object is a vector (univariate) 
or matrix (multivariate) with additional attributes, including time indices for each observation, the sampling 
frequency and time increment between observations, and the cycle length for periodic data. Such objects are of 
the ts class, and represent data that has been observed at (approximately) equally spaced time points. 

The advantage of creating and working with time series objects of the ts class is that many methods are available
for utilizing time series attributes, such as time index information. For example, as you've seen in earlier 
exercises, calling plot() on a ts object will automatically generate a plot over time"

"________________________________________________________________________________________________________________"

"When you use datasets from others, such as those included in an R package, you can check whether they are ts 
objects using the is.ts() command. The result of the test is either TRUE when the data is of the ts class, or 
FALSE if it is not."

# Check whether Nile is a ts object
is.ts(Nile)

# Check whether AirPassengers is a ts object
is.ts(AirPassengers)


is.ts(UKgas)
plot(UKgas)

