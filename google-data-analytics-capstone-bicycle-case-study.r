{"metadata":{"kernelspec":{"name":"ir","display_name":"R","language":"R"},"language_info":{"name":"R","codemirror_mode":"r","pygments_lexer":"r","mimetype":"text/x-r-source","file_extension":".r","version":"4.0.5"}},"nbformat_minor":4,"nbformat":4,"cells":[{"source":"<a href=\"https://www.kaggle.com/code/brunofacco/google-data-analytics-capstone-bicycle-case-study?scriptVersionId=97326655\" target=\"_blank\"><img align=\"left\" alt=\"Kaggle\" title=\"Open in Kaggle\" src=\"https://kaggle.com/static/images/open-in-kaggle.svg\"></a>","metadata":{},"cell_type":"markdown","outputs":[],"execution_count":0},{"cell_type":"markdown","source":"# Case Study 1 - Cyclistic Bike-Share","metadata":{}},{"cell_type":"markdown","source":"This notebook is about the case study capstone from the google data analytics certification. The objective is to apply all the knowledge, tools and analytics background in a case study about a cyclist dataset.","metadata":{}},{"cell_type":"markdown","source":"#  Summary\n\n## Table of Contents\n* [Introduction](#introduction)\n* [Scenario](#scenario)\n* [Ask](#Ask)\n    * [Guiding Questions](#guiding-questions)\n    * [Key Objective](#key-objective)\n* [Prepare](#prepare)\n    * [Guiding Questions](#guiding-questions-prepare)\n    * [Key tasks](#prepare-key)\n* [Process](#process)\n    * [Guiding questions](#process-guiding)\n    * [Key tasks](#process-key)\n* [Analyze](#analyze)\n    * [Guiding questions](#analyze-guiding)\n    * [Key tasks](#analyze-key)\n* [Share](#share)\n    * [Guiding questions](#share-guiding)\n    * [Key tasks](#share-key)\n* [Act](#act)\n    * [Guiding questions](#act-guiding)\n    * [Key tasks](#act-key)\n* [Conclusion](#conclusion)","metadata":{}},{"cell_type":"markdown","source":"<a id='introduction'> </a>\n# Introduction\n\nThis is the final case study about the google analytics course, where I did some analysis about a cyclist dataset, to understand the differences between casual riders and annual riders members, and from that insights to create a marketing strategy to convert these casual riders in annual members.","metadata":{}},{"cell_type":"markdown","source":"<a id='scenario'> </a>\n# Scenario \n\nStarting we need to understand what people are involved in this case study, from the person that we want to share these and people who is the focus of study.\n\nCharacters and teams:\n* **Cyclistic**: A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself\napart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with\ndisabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about\n8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to\ncommute to work each day.\n* **Lily Moreno**: The director of marketing and your manager. Moreno is responsible for the development of campaigns\nand initiatives to promote the bike-share program. These may include email, social media, and other channels.\n* **Cyclistic marketing analytics team**: A team of data analysts who are responsible for collecting, analyzing, and\nreporting data that helps guide Cyclistic marketing strategy. You joined this team six months ago and have been busy\nlearning about Cyclistic’s mission and business goals — as well as how you, as a junior data analyst, can help Cyclistic\nachieve them.\n* **Cyclistic executive team**: The notoriously detail-oriented executive team will decide whether to approve the\nrecommended marketing program.","metadata":{}},{"cell_type":"markdown","source":"<a id=\"Ask\"></a>\n# Ask Phase \n\nIn this phase is stablish the questions that will guide all the analysis and the results that we want to find based on the problem, so the director the marketing provide a question that is the start of the analysis.\n\n### How do annual members and casual riders use Cyclistic bikes differently?","metadata":{}},{"cell_type":"markdown","source":"<a id=\"guiding-questions\"></a>\n### Guiding Questions\n\n* **What is the problem you are trying to solve?**\n\nThe main problem is from the data analysis understand the difference between annual members and casual riders to create a marketing strategy to convert the casual members into annual members.\n\n* **How can your insights drive business decisions?**\n\nMy insights will help to understand who is the best marketing strategy to reach to the casual riders and convert then to annual members.","metadata":{}},{"cell_type":"markdown","source":"<a id=\"key-objective\"></a>\n### Key Objective \n\n* Identify the business task\n* Consider key stakeholders","metadata":{}},{"cell_type":"markdown","source":"<a id=\"prepare\"></a>\n# Prepare ","metadata":{}},{"cell_type":"markdown","source":"The dataset that was used to did the analisys is from this [kaggle dataset](https://www.kaggle.com/timgid/cyclistic-dataset-google-certificate-capstone), but the course give the option from this [link](https://divvy-tripdata.s3.amazonaws.com/index.html) with the same dataset but expanded with more years and station descriptions.","metadata":{}},{"cell_type":"markdown","source":"<a id=\"prepare-guiding\"></a>\n## Guiding questions\n\n* **Where is your data located?**\n\nThe data is located in the Kaggle where we can link the dataset to our notebook.\n\n* **How is the data organized?**\n\nThe data is provided by 12 zip files, representing each month considered in the analysis, where each one is compose by a csv file. Below we have the description of the columns presented in each file.\n\nField name|Description\n------|------\nride_id|A possible Primary Key\nrideable_type|Type of bike: classic_bik, docked_bike, electric_bi\nstarted_at|start date of the ride. Format yyyy-mm-dd hh:mm:ss\nended_at|end date of the ride. Format yyyy-mm-dd hh:mm:ss\nstart_station_name| start station name\nstart_station_id|start station id\nend_station_name|end station name\nend_station_id|end station id\nstart_lat|start lattitude\nstart_lng|start longitude\nend_lat|end lattitude\nend_lng|end longitude\n**member_casual**|Casual/member\n\n* **Are there issues with bias or credibility in this data? Does your data ROCCC?**\n\nDon't have problem with bias, because the data is based on own clients as bike riders. And the data is provided by Motivate International Inc and have a license about this data and don't have personal data about the cyclists, so it's ROCCC because it's reliable, original, comprehensive, current and cited.\n\n\n* **How are you addressing licensing, privacy, security, and accessibility?**\n\nThe company has  their own licence over the dataset. Besides that, the dataset doesn't have any personal information about the riders.\n\n* **How did you verify the data’s integrity?**\n\nAll the files have consistent columns and each column has the correct type of data. And analysing the data to find some inconsistent like null values, but problemns with patterns don't have, so in general the data is consistency.\n\n* **How does it help you answer your question?**\n\nDoing these analysis to answer these previous questions, we understand some properties of the data, what is inside and what columns is more important to the analysis.\n\n* **Are there any problems with the data?**\n\nProblems no, but would be good had more information about the bike stations and the riders.","metadata":{}},{"cell_type":"markdown","source":" <a id=\"prepare-key\"></a>\n ## Key tasks\n\n* Download data and store it appropriately.\n* Identify how it’s organized.\n* Sort and filter the data.\n* Determine the credibility of the data.","metadata":{}},{"cell_type":"markdown","source":"<a id=\"process\"></a>\n# Process \n**Using R**","metadata":{}},{"cell_type":"markdown","source":"### Code about the data processing ","metadata":{}},{"cell_type":"code","source":"library(tidyverse)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:01:43.924074Z","iopub.execute_input":"2022-05-07T19:01:43.925673Z","iopub.status.idle":"2022-05-07T19:01:43.938005Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"csv_files <- list.files(path = \"../input\", recursive = TRUE, full.names=TRUE)\n\ndataset <- do.call(rbind, lapply(csv_files, read.csv))","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:01:43.965853Z","iopub.execute_input":"2022-05-07T19:01:43.967514Z","iopub.status.idle":"2022-05-07T19:03:27.860211Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"### Dataframe Dimension","metadata":{}},{"cell_type":"code","source":"dim(dataset)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:03:27.862838Z","iopub.execute_input":"2022-05-07T19:03:27.864274Z","iopub.status.idle":"2022-05-07T19:03:27.88252Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"str(dataset)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:03:27.884906Z","iopub.execute_input":"2022-05-07T19:03:27.886261Z","iopub.status.idle":"2022-05-07T19:03:27.921968Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"### Duplicates Removing","metadata":{}},{"cell_type":"code","source":"dataset <- dataset[!duplicated(dataset$ride_id), ]","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:03:27.925513Z","iopub.execute_input":"2022-05-07T19:03:27.927081Z","iopub.status.idle":"2022-05-07T19:03:30.760588Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"dim(dataset)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:03:30.763025Z","iopub.execute_input":"2022-05-07T19:03:30.764437Z","iopub.status.idle":"2022-05-07T19:03:30.779775Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"#### 209 lines was duplicated rows was removed","metadata":{}},{"cell_type":"markdown","source":"### Set a pattern to Date","metadata":{}},{"cell_type":"code","source":"dataset$started_at <- as.POSIXct(dataset$started_at, \"%Y-%m-%d %H:%M:%S\")\ndataset$ended_at <- as.POSIXct(dataset$ended_at, \"%Y-%m-%d %H:%M:%S\")","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:03:30.78213Z","iopub.execute_input":"2022-05-07T19:03:30.783482Z","iopub.status.idle":"2022-05-07T19:03:55.955101Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"head(dataset)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:03:55.959445Z","iopub.execute_input":"2022-05-07T19:03:55.961223Z","iopub.status.idle":"2022-05-07T19:03:55.997551Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"#### Creating the columns to facilitate the analysis","metadata":{}},{"cell_type":"code","source":"dataset <- dataset %>%\n    mutate(ride_time_m = as.numeric(dataset$ended_at - dataset$started_at) / 60)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:03:56.00124Z","iopub.execute_input":"2022-05-07T19:03:56.002827Z","iopub.status.idle":"2022-05-07T19:03:56.082147Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"summary(dataset$ride_time_m)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:03:56.085978Z","iopub.execute_input":"2022-05-07T19:03:56.087646Z","iopub.status.idle":"2022-05-07T19:03:56.30932Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"Something is strange here, a negative number to represent minutes (the start date is smaller than the end date)","metadata":{}},{"cell_type":"code","source":"dataset <- dataset %>%\n    mutate(year_month = paste(strftime(dataset$started_at, \"%Y\"),\n                              \"-\",\n                              strftime(dataset$started_at, \"%m\"),\n                              paste(\"(\",strftime(dataset$started_at, \"%b\"), \")\", sep=\"\")))\nunique(dataset$year_month)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:03:56.31286Z","iopub.execute_input":"2022-05-07T19:03:56.314426Z","iopub.status.idle":"2022-05-07T19:04:07.681556Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"dataset <- dataset %>%\n    mutate(weekday = paste(strftime(dataset$ended_at, \"%u\"), \"-\", strftime(dataset$ended_at, \"%a\")))","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:07.684029Z","iopub.execute_input":"2022-05-07T19:04:07.685426Z","iopub.status.idle":"2022-05-07T19:04:12.790902Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"dataset <- dataset %>%\n    mutate(start_hour = strftime(dataset$ended_at, \"%H\"))\nunique(dataset$start_hour)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:12.794171Z","iopub.execute_input":"2022-05-07T19:04:12.795811Z","iopub.status.idle":"2022-05-07T19:04:15.285861Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"head(dataset)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:15.288385Z","iopub.execute_input":"2022-05-07T19:04:15.289857Z","iopub.status.idle":"2022-05-07T19:04:15.323749Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"<a id=\"process-guiding\"></a>\n### Guiding Questions\n\n* **Have you ensured your data’s integrity?**\n\nYes, looking the columns and the type of data in each column, looking for null and blanck values.\n\n* **What steps have you taken to ensure that your data is clean?**\n\nImporting the data and seeing the columns and the rows of the data.\n\n* **How can you verify that your data is clean and ready to analyze?**\n\nBecause of the dataset was treated inside of the Excel and SQL and shared in the Kaggle.","metadata":{}},{"cell_type":"markdown","source":"<a id=\"process-key\"></a>\n### Key tasks\n\n* Check the data for errors.\n* Choose your tools.\n* Transform the data so you can work with it effectively.","metadata":{}},{"cell_type":"markdown","source":"<a id=\"analyze\"></a>\n# Analyze \n\n**R Studio**","metadata":{}},{"cell_type":"code","source":"summary(dataset)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:15.327442Z","iopub.execute_input":"2022-05-07T19:04:15.329027Z","iopub.status.idle":"2022-05-07T19:04:17.196592Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"* **The first thing that we can see that is different is the column ride_time_m where we see negative values and a big max value compared with the other measures.**","metadata":{}},{"cell_type":"code","source":"options(repr.plot.width=20, repr.plot.height=8)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:17.200148Z","iopub.execute_input":"2022-05-07T19:04:17.201653Z","iopub.status.idle":"2022-05-07T19:04:17.214433Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"ggplot(dataset, aes(member_casual, fill=member_casual)) +\n    geom_bar() +\n    labs(x=\"Casuals x Members\", title=\"Casuals x Members distribution\")","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:17.217Z","iopub.execute_input":"2022-05-07T19:04:17.218515Z","iopub.status.idle":"2022-05-07T19:04:21.714797Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"* **In the plot we see the number of members is bigger than casual riders, where the member is 59% compared with the total.**","metadata":{}},{"cell_type":"code","source":"dataset %>% \n    group_by(member_casual) %>% \n    summarise(count = length(ride_id),\n              '%' = (length(ride_id) / nrow(dataset)) * 100)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:21.718868Z","iopub.execute_input":"2022-05-07T19:04:21.720505Z","iopub.status.idle":"2022-05-07T19:04:21.982974Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"dataset %>%\n    group_by(year_month) %>%\n    summarise(count = length(ride_id),\n              '%' = (length(ride_id) / nrow(dataset)) * 100,\n              'members_p' = (sum(member_casual == \"member\") / length(ride_id)) * 100,\n              'casual_p' = (sum(member_casual == \"casual\") / length(ride_id)) * 100,\n              'Member x Casual Perc Difer' = members_p - casual_p)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:21.986012Z","iopub.execute_input":"2022-05-07T19:04:21.987476Z","iopub.status.idle":"2022-05-07T19:04:22.326244Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"dataset %>%\n  ggplot(aes(year_month, fill=member_casual)) +\n    geom_bar() +\n    labs(x=\"Month\", title=\"Distribution by month\") + coord_flip()","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:22.328662Z","iopub.execute_input":"2022-05-07T19:04:22.330066Z","iopub.status.idle":"2022-05-07T19:04:27.860005Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"* **October, September, August and July 2020 is the where we have more rides.**\n* **2020 have much more data than 2021 compared with the amount.**\n* **In all the months, have more members than casual riders.**\n* **August have more data compared with the other months.**","metadata":{}},{"cell_type":"code","source":"chicago_mean_temp <- c(-3.2, -1.2, 4.4, 10.5, 16.6, 22.2, 24.8, 23.9, 19.9, 12.9, 5.8, -0.3)\nmonth <- c(\"001 - Jan\",\"002 - Feb\",\"003 - Mar\",\"004 - Apr\",\"005 - May\",\"006 - Jun\",\"007 - Jul\",\"008 - Aug\",\"009 - Sep\",\"010 - Oct\",\"011 - Nov\",\"012 - Dec\")\n\nchig_temp <-data.frame(month, chicago_mean_temp)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:27.863571Z","iopub.execute_input":"2022-05-07T19:04:27.865331Z","iopub.status.idle":"2022-05-07T19:04:27.884015Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"chig_temp","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:27.886584Z","iopub.execute_input":"2022-05-07T19:04:27.888066Z","iopub.status.idle":"2022-05-07T19:04:27.910788Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"library(ggplot2)\n\np <- ggplot(data = chig_temp, aes(x=month, y=chicago_mean_temp)) + geom_bar(stat = \"identity\", fill=rgb(0.1,0.4,0.5,0.7),width=0.8) + coord_flip()\np","metadata":{"execution":{"iopub.status.busy":"2022-05-07T20:10:56.469615Z","iopub.execute_input":"2022-05-07T20:10:56.473461Z","iopub.status.idle":"2022-05-07T20:10:56.877298Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"* **Using data from the climate of Chicago we can see that September, August, July and June have the bigger mean temperature tha the other months, compared with the other plot we see that correspond the months we we have more rides**\n* **The temperature influence the number of riders in a month**","metadata":{}},{"cell_type":"code","source":"ggplot(dataset, aes(weekday, fill=member_casual)) +\n    geom_bar() +\n    labs(x=\"Weekdady\", title=\"Distribution by weekday\") +\n    coord_flip()","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:28.221512Z","iopub.execute_input":"2022-05-07T19:04:28.223034Z","iopub.status.idle":"2022-05-07T19:04:31.864423Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"* **The most volume of data is on weekend and friday**\n* **Saturday have the biggest volume of data**\n* **On Saturday we have an almost equal proportion between casual and members**","metadata":{}},{"cell_type":"code","source":"dataset %>%\n    ggplot(aes(start_hour, fill=member_casual)) +\n    labs(x=\"Hour of the day\", title=\"Distribution by hour of the day\") +\n    geom_bar()","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:31.866837Z","iopub.execute_input":"2022-05-07T19:04:31.868279Z","iopub.status.idle":"2022-05-07T19:04:36.1045Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"* **Afternoon we have bigger volume of data compare with morning**\n* **Morning we more members than casual bikers, after 5 am**\n* **Between  22pm and 4am we have more casual than members**","metadata":{}},{"cell_type":"code","source":"dataset %>%\n    ggplot(aes(start_hour, fill=member_casual)) +\n    geom_bar() +\n    labs(x=\"Hour of the day\", title=\"Distribution by hour of the day divided by weekday\") +\n    facet_wrap(~ weekday)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:36.107021Z","iopub.execute_input":"2022-05-07T19:04:36.108488Z","iopub.status.idle":"2022-05-07T19:04:43.680661Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"* **Weekend we see a big difference compared with week days, maintaining the same proportion with the hours, and the weekdays have the same proportion duting the hours too.**","metadata":{}},{"cell_type":"code","source":"dataset %>%\n    mutate(type_of_weekday = ifelse(weekday == '6 - Sat' | weekday == '7 - Sun',\n                                   'weekend',\n                                   'midweek')) %>%\n    ggplot(aes(start_hour, fill=member_casual)) +\n    labs(x=\"Hour of the day\", title=\"Distribution by hour of the day in the midweek\") +\n    geom_bar() +\n    facet_wrap(~ type_of_weekday)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:43.683284Z","iopub.execute_input":"2022-05-07T19:04:43.684762Z","iopub.status.idle":"2022-05-07T19:04:51.185691Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"* **During the midweek we have higher increase of data during the hours compared with the weekend.**\n* **One point is the increase of data of members in 5am to 8 am and 5pm and 6 pm.**\n","metadata":{}},{"cell_type":"code","source":"ggplot(dataset, aes(rideable_type, fill=member_casual)) +\n    labs(x=\"Rideable type\", title=\"Distribution of types of bikes\") +\n    geom_bar() +\n    coord_flip()","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:51.188113Z","iopub.execute_input":"2022-05-07T19:04:51.189519Z","iopub.status.idle":"2022-05-07T19:04:55.206981Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"* **Docked bikes have the most volume of data.**\n* **Electric bikes and classic bikes have almost the same volume.**\n* **Members have almost the same preference for electric and casual bikes**","metadata":{}},{"cell_type":"code","source":"dataset %>%\n    group_by(rideable_type) %>% \n    summarise(count = length(ride_id),\n          '%' = (length(ride_id) / nrow(dataset)) * 100,\n          'members_p' = (sum(member_casual == \"member\") / length(ride_id)) * 100,\n          'casual_p' = (sum(member_casual == \"casual\") / length(ride_id)) * 100,\n          'member_casual_perc_difer' = members_p - casual_p)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:55.209381Z","iopub.execute_input":"2022-05-07T19:04:55.210759Z","iopub.status.idle":"2022-05-07T19:04:56.017081Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"head(dataset)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:56.019508Z","iopub.execute_input":"2022-05-07T19:04:56.020915Z","iopub.status.idle":"2022-05-07T19:04:56.052352Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"summary(dataset$ride_time_m)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:56.054841Z","iopub.execute_input":"2022-05-07T19:04:56.056354Z","iopub.status.idle":"2022-05-07T19:04:56.273837Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"separators = quantile(dataset$ride_time_m, seq(0, 1, by=0.05))","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:56.276195Z","iopub.execute_input":"2022-05-07T19:04:56.277542Z","iopub.status.idle":"2022-05-07T19:04:56.616231Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"separators","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:56.618605Z","iopub.execute_input":"2022-05-07T19:04:56.620009Z","iopub.status.idle":"2022-05-07T19:04:56.636962Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"* **Comparing the quartiles we see a big difference bewtween the 0% and the 95% and the 5% and the 95% influnecing in the amount of data.**","metadata":{}},{"cell_type":"code","source":"dataset_filtered <- dataset %>% \n    filter(ride_time_m > as.numeric(separators['5%'])) %>%\n    filter(ride_time_m < as.numeric(separators['95%']))","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:56.639358Z","iopub.execute_input":"2022-05-07T19:04:56.640784Z","iopub.status.idle":"2022-05-07T19:04:58.24602Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"print(paste(\"Removed\", nrow(dataset) - nrow(dataset_filtered), \"rows as outliners\" ))","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:58.249258Z","iopub.execute_input":"2022-05-07T19:04:58.250873Z","iopub.status.idle":"2022-05-07T19:04:58.266971Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"dataset_filtered %>% \n    group_by(member_casual) %>% \n    summarise(mean = mean(ride_time_m),\n              'first_quarter' = as.numeric(quantile(ride_time_m, .25)),\n              'median' = median(ride_time_m),\n              'third_quarter' = as.numeric(quantile(ride_time_m, .75)),\n              'IR' = third_quarter - first_quarter)","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:04:58.269444Z","iopub.execute_input":"2022-05-07T19:04:58.270891Z","iopub.status.idle":"2022-05-07T19:05:00.004266Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"ggplot(dataset_filtered, aes(x=member_casual, y=ride_time_m, fill=member_casual)) +\n    labs(x=\"Member x Casual\", y=\"Riding time\", title=\"Distribution of Riding time for Casual x Member\") +\n    geom_boxplot()","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:05:00.006792Z","iopub.execute_input":"2022-05-07T19:05:00.00826Z","iopub.status.idle":"2022-05-07T19:05:13.027249Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"* **Casual members have more ride time than members.**\n* **The quartiles are bigger in casual too, showing that the diversity of ride time with members is less than casual.**","metadata":{}},{"cell_type":"code","source":"ggplot(dataset_filtered, aes(x=weekday, y=ride_time_m, fill=member_casual)) +\n    geom_boxplot() +\n    facet_wrap(~ member_casual) +\n    labs(x=\"Weekday\", y=\"Riding time\", title=\"Distribution of Riding time for day of the week\") +\n    coord_flip()","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:19:53.712571Z","iopub.execute_input":"2022-05-07T19:19:53.714489Z","iopub.status.idle":"2022-05-07T19:20:06.605067Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"* **During the midweek the ride time for members keep the same, growing in the weekend.**","metadata":{}},{"cell_type":"code","source":"ggplot(dataset_filtered, aes(x=rideable_type, y=ride_time_m, fill=member_casual)) +\n    geom_boxplot() +\n    facet_wrap(~ member_casual) +\n    labs(x=\"Rideable type\", y=\"Riding time\", title=\"Distribution of Riding time for rideeable type\") +\n    coord_flip()","metadata":{"execution":{"iopub.status.busy":"2022-05-07T19:19:39.09178Z","iopub.execute_input":"2022-05-07T19:19:39.093841Z","iopub.status.idle":"2022-05-07T19:19:53.26454Z"},"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"* **Electric bikes have less ride time than docked and casual bikes, and this difference are bigger in casual riders than members.**","metadata":{}},{"cell_type":"markdown","source":"<a id=\"analyze-guiding\"></a>\n### Guiding Questions\n\n* **How should you organize your data to perform analysis on it?**\n\nThe data has been organized in a single CSV file grouping each year dataset.\n\n* **Has your data been properly formatted?**\n\nYes, the columns have the correct type of data to do the correct analysis.\n\n* **What surprises did you discover in the data?**\n\nThe difference between members and casuals looking to weekends. And that members have less ride time than casual.\n\n* **What trends or relationships did you find in the data?**\n    * There are more members than casual.\n    * The most of data is in the last semester of 2020.\n    * The temperature influence the number of rides.\n    * Members have less riding time.\n    * The preference in general is for docked bikes.\n\n* **How will these insights help answer your business questions?**\n\nWill help to build a profile to members and applied to casual members.","metadata":{}},{"cell_type":"markdown","source":"<a id=\"analyze-key\"></a>\n### Key tasks\n\n* Aggregate your data so it’s useful and accessible.\n* Organize and format your data.\n* Perform calculations.\n* Identify trends and relationships.","metadata":{}},{"cell_type":"markdown","source":"<a id=\"share\"></a>\n# Share\n\nSome points after the data analysis:\n* Have more data about members than casual.\n* More data in the second semeser of 2020.\n* August 2020 have more data compared with the other months.\n* In the months we have more member rides than casual.\n* Temperature influence the amoutn of rides in each month.\n* Weekend have the most volume of data.\n* Afternoon have a bigger volume of data.\n\nLooking for this points, the weather influence of rides, where we have a bad weather (raining or cold) the number of rides is little compared with sunny or clean days. Other point is that weekend we have more bike rides, probably in a recreational way.\nLooking for the comparisonn between casual and members we see that members have a fixed use compared with casual, maintaining a proportion in the rides, looking for use in the weekdays and weekends. Based on that the routine activities focus in go to the work and practices exercises.\nConcluding:\n* Members use the bikes for fixed activities, one of those is going to work.\n* Bikes are used for recreation on the weekends.\n* Rides are influenced by temperature.","metadata":{}},{"cell_type":"markdown","source":"<a id=\"share-guiding\"></a>\n### Guiding Questions\n\n* **Were you able to answer the question of how annual members and casual riders use Cyclistic bikes differently?**\n\nYes, the plot and the data show a big difference between the both groups.\n\n* **What story does your data tell?**\n\nThe story of data tells that members ude the bike to go to work and that they have less ride time than the casual showing that the route is less than the casual rote.\n\n* **How do your findings relate to your original question?**\n\nThe findings build a profile for members, relating to \"Find the keys differences between casuals and annual riders\", also knowing whey they use the bikes helps to find \"How digital media could influence them\".\n\n* **Who is your audience? What is the best way to communicate with them?**\n\nThe main target audience is the cyclistic marketing analytics team and Lily Moreno. The best way to communicate is through a slide presentation of the findings.\n\n* **Can data visualization help you share your findings?**\n\nThe visualizations was the center of the anaysis showing the differences between the rides and riders.\n\n* **Is your presentation accessible to your audience?**\n\nYes, the size of the plot and the colors atract the audience to see what is being shown.","metadata":{}},{"cell_type":"markdown","source":"<a id=\"share-key\"></a>\n### Key tasks\n\n* Determine the best way to share your findings.\n* Create effective data visualizations.\n* Present your findings.\n* Ensure your work is accessible.","metadata":{}},{"cell_type":"markdown","source":"<a id=\"act\"></a>\n# Act","metadata":{}},{"cell_type":"markdown","source":"<a id=\"act-guiding\"></a>\n### Guiding Questions\n\n* **What is your final conclusion based on your analysis?**\n\nMembers and casual have different habits when using the bikes. The weather and the route can influence the amount of rides and the duration of the ride.\n\n* **How could your team and business apply your insights?**\n\nThe marketing can have a focus on workers as a green way to get to work.\n\n* **What next steps would you or your stakeholders take based on your findings?**\n\nFurther analysis could be done to improve the findings, besides that, the marketing team can take the main information to build a marketing campaign.\n\n* **Is there additional data you could use to expand on your findings?**\n* Data about mobility.\n* Climate precision data.\n* Members information.","metadata":{}},{"cell_type":"markdown","source":"<a id=\"act-key\"></a>\n### Key tasks\n\n* Create your portfolio.\n* Add your case study.\n* Practice presenting your case study to a friend or family member.","metadata":{}},{"cell_type":"markdown","source":"<a id=\"conclusion\"></a>\n# Conclusion\n\nThis case study help me to understang how is the proces of data analysis in the practical way and improve my R language knowledge, and share this using Kaggle is a way to start the continuous flux of the data analyst role.\nSuggestion and comments are welcome.\nThank You!","metadata":{}}]}