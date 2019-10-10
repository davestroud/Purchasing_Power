# Load xts
library(xts)

reg_ts = read.csv("Registrants/Registrants.csv", stringsAsFactors = FALSE)


# View the structure of ex_matrix
str(reg_ts)

# Extract the 3rd observation of the 2nd column of ex_matrix
reg_ts[3,2]

