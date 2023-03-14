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
  int freeThrows = team['Free throws'] ?? 0;
  int twoPointer = (team['2 pointer'] ?? 0) * 2;
  int threePointer = (team['3 pointer'] ?? 0) * 3;

  return freeThrows + twoPointer + threePointer;
}



