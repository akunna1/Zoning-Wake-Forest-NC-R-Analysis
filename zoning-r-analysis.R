# Loading the necessary library
library(sf)

# Reading the shapefile
zoning_data <- st_read("Wake_Forest_Zoning.shp")

# Viewing the column names
colnames(zoning_data)

# Listing unique zone definitions and labels from zoning_data
unique_definitions <- unique(zoning_data$ZONEDEFINE)
print(unique_definitions)
unique_labels <- unique(zoning_data$ZONELABEL)
print(unique_labels)

# Counting the number of unique values for the zone definitions and labels
length(unique_definitions)
length(unique_labels)

# Filtering out rows where ZONEDEFINE or ZONELABEL are NA
zoning_data_clean_1 <- zoning_data[!is.na(zoning_data$ZONEDEFINE) & !is.na(zoning_data$ZONELABEL), ]

# Printing the cleaned dataset
print(zoning_data_clean_1)

# Counting the number of unique values for the zone definitions and labels in zoning_data_clean_1
length(unique(zoning_data_clean_1$ZONEDEFINE))
length(unique(zoning_data_clean_1$ZONELABEL))
