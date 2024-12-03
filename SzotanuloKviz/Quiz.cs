namespace SzotanuloKviz
{
    public class Quiz
    {
        private Database db;
        private List<Word> currentWords;

        public Quiz(Database database)
        {
            db = database;
            currentWords = new List<Word>();
        }

        public void StartQuiz(int wordCount)
        {
            db.OpenConnection();
            currentWords = db.GetRandomWords(wordCount);
            db.CloseConnection();
        }
        public void CheckAnswer(Word word, string answer)
        {
            if (answer.Equals(word.Meaning, StringComparison.OrdinalIgnoreCase))
            {
                word.CorrectAnswers++;
            }
            else
            {
                word.Mistakes++;
            }
        }

        public List<Word> CurrentWords { get => currentWords; }
    }
}