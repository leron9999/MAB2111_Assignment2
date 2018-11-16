#WHO Dataset
WHO = read.csv("WHO.csv")
#country with the lowest literacy
WHO$Country[which.min(WHO$LiteracyRate)]
## Mali
#Richest country in Europe based on GNI
WHO.Europe<-subset(WHO,Region=="Europe")
WHO.Europe$Country[which.max(WHO.Europe$GNI)]
## Luxemburg
#Mean Life expectancy of countries in Africa
WHO.Africa<-subset(WHO,Region=="Africa")
mean(na.omit(WHO.Africa$LifeExpectancy))
## 57.95652
#Number of countries with population greater than 10,000
sum(WHO$Population>10000)
## 86
#Top 5 countries in the Americas with the highest child mortality
WHO.Americas<-subset(WHO,Region=="Americas")
head(WHO.Americas$Country[order(WHO.Americas$ChildMortality,decreasing = TRUE)],5)
## Haiti, Bolivia(Plurinational State of), Guyana, Guatemala, Dominican Republic

#NBA dataset (Historical NBA Performance.xlsx)
NBA = read.csv("Historical NBA Performance.csv")
#The year Bulls has the highest winning percentage 
NBA.Bulls<-subset(NBA,Teams=="Bulls")
colnames(NBA.Bulls)[1]<-"Year"
head(NBA.Bulls$Year[order(NBA.Bulls$Winning.Percentage,decreasing = TRUE)],1)
## 1995-96
#Teams with an even win-loss record in a year
unique(NBA$Team[na.omit(NBA$Winning.Percentage==0.5000)])
## Celtics       Hawks         Nets          Hornets       Bulls         Mavericks     Nuggets       Warriors      Rockets      
## Pacers        Clippers      Bucks         Timberwolves  Knicks        Supersonics   Magic         76ers         Suns         
## Trail Blazers Royals        Spurs         Raptors       Jazz          Wizards

#Seasons_Stats.csv
SS = read.csv("Seasons_Stats.csv")
#Player with the highest 3-pt attempt rate in a season. 
head(SS$Player[order(SS$X3PAr,decreasing = TRUE)],1)
## Dudley Bradley
#Player with the highest free throw rate in a season. 
head(SS$Player[order(SS$FTr,decreasing = TRUE)],1)
## Dwayne Jones
#What year/season does Lebron James scored the highest? 
head(SS.Lebron$Year[order(SS.Lebron$PTS,decreasing = TRUE)],1)
## 2006
#What year/season does Michael Jordan scored the highest? 
head(SS.MJ$Year[order(SS.MJ$PTS,decreasing = TRUE)],1)
## 1987
#Player efficiency rating of Kobe Bryant in the year where his MP is the lowest?
head(SS.KB$PER[order(SS.KB$MP,decreasing = FALSE)],1)
## 10.7

#National Universities Rankings.csv
NUR=read.csv("National Universities Rankings.csv")
#University with the most number of undergrads 
head(NUR$Name[order(NUR$Undergrad.Enrollment,decreasing = TRUE)],1)
##University of Central Florida
#Average Tuition in the Top 10 University
sum(head(NUR$Tuition.and.fees[order(NUR$Tuition.and.fees,decreasing = TRUE)],10)) / 10
## 52202.3