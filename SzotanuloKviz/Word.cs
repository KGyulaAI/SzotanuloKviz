namespace SzotanuloKviz
{
    public class Word
    {
        public Word(int id, string wordText, string meaning, int correctAnswers, int mistakes, int correctStreak)
        {
            Id = id;
            WordText = wordText;
            Meaning = meaning;
            CorrectAnswers = correctAnswers;
            Mistakes = mistakes;
            CorrectStreak = correctStreak;
        }

        public int Id { get; }
        public string WordText { get; }
        public string Meaning { get; }
        public int CorrectAnswers { get; set; }
        public int Mistakes { get; set; }
        public int AllAnswers { get => CorrectAnswers + Mistakes; }
        public int CorrectStreak { get; set; }
    }
}
