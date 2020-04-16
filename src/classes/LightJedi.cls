public class LightJedi {
    
    public static String getJediCode() {
    String code  = 'There is no emotion there is peace';
           code += 'There is no ignorance there is knowledge';
           code += 'There is no passion there is serenity';
           code += 'There is no death there is the Force.';
    return code;
  }
    public static String describeRank(String rank) {
    String description;
    if (rank == 'Initiate'){
      description = 'Jedi hopeful';
    } else if (rank == 'Padawan') {
      description = 'Apprentice of a Jedi Knight';
    } else if (rank == 'Knight') {
      description = 'Completed the Jedi Trials';
    } else if (rank == 'Master') {
      description = 'David Liu';
    }
    return description;
  }
}