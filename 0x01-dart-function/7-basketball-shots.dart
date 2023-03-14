int whoWins(Map<String, int> teamA, Map<String, int> teamB){
  int teamAPoints= 0;
  int teamBPoints = 0;

    teamAPoints = calculatePoints(teamA);
    teamBPoints = calculatePoints(teamB);

    if (teamAPoints > teamBPoints) return 1;
    if (teamAPoints < teamBPoints) return 2;
    
    return 0;
}

int calculatePoints(Map<String, int> team) {
  int points = 0;

  team.forEach((key, value) {  
    if (key == 'Free throws') {
      points += value;
    } else if (key == '2 pointer') {
      points += value * 2;
    } else if (key == '3 pointer') {
      points += value * 3;
    }
  });
  return points;
}



