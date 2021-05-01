setwd("~/Desktop/MYSTATCOMPAPP")
Winner<-function(var1, var2){
  Soccer = read.csv("STAT256DATA.csv", header=TRUE, sep=",")
  attach(Soccer)
  win.lm = lm(wins ~ goals_conceded_per_match + minutes_per_goal_scored + shots_on_target)
  comparisontable=cbind(team_name, win.lm$fitted.values)
  teamnames=c("Arsenal FC","Tottenham Hotspur FC", "Manchester City FC","Leicester City FC", "Crystal Palace FC", "Everton FC", "Burnley FC", "Southampton FC", "AFC Bournemouth", "Manchester United FC", "Liverpool FC", "Chelsea FC", "West Ham United FC", "Watford FC", "Newcastle United FC","Cardiff City FC", "Fulham FC", "Brighton & Hove Albion FC", "Huddersfield Town FC", "Wolverhampton Wanderers FC")
  looktable1=cbind(team_name, teamnames)
  for (i in 1:length(teamnames)) if (var1==looktable1[i,1]) varone=looktable1[i,2]
  for (i in 1:length(teamnames)) if (var2==looktable1[i,1]) vartwo=looktable1[i,2]
  if (varone>vartwo) print(paste(var1, "wins!")) else if (vartwo>varone) print(paste(var2, "wins! ") ) else print("It is a tie")
}

