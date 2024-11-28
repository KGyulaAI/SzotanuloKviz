using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SzotanuloKviz
{
    public class Quiz
    {
        private List<Word> words;
        private List<Word> wrongAnswers;
        private int currentQuestionIndex;

        public Quiz(List<Word> words)
        {
            this.words = words;
            this.wrongAnswers = new List<Word>();
            this.currentQuestionIndex = 0;
        }

        public Word GetNextQuestion()
        {
            if (currentQuestionIndex < words.Count)
            {
                return words[currentQuestionIndex++];
            }
            return null; // Nincs több kérdés
        }

        public void RecordWrongAnswer(Word word)
        {
            wrongAnswers.Add(word);
        }

        public void ResetQuiz()
        {
            currentQuestionIndex = 0;
            // További logika a hibás válaszok kezelésére
        }
    }

}
