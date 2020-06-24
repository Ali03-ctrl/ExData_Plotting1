if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile="./data/exp_data_1.zip",method="curl")
sample_data <- unzip("./data/exp_data_1.zip")


power <- read.table("household_power_consumption.txt", skip=1,sep=";")
names(power) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
subpower <- subset(power, power$Date=="1/2/2007" | power$Date=="2/2/2007")


hist(as.numeric(as.character(subpower$Global_active_power)), col="red", main="Global Active Power", xlab="Global Active Power(kilowatts)")

title(main="Global Active Power")
