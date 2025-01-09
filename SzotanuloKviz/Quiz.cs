using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using System.Windows.Threading;

namespace SzotanuloKviz
{
    public class Quiz
    {
        private TextBlock timerBlock;
        private int seconds;
        private Database db;
        private List<Word> currentWords;
        private DispatcherTimer timer;
        private TimeSpan timeLeft;

        public Quiz(Database database, Difficulty difficulty, TextBlock timerBlock)
        {
            db = database;
            currentWords = new List<Word>();
            Difficulty = difficulty;
            this.timerBlock = timerBlock;

            if (difficulty == Difficulty.Medium)
            {
                seconds = 60;
            }
            else if (difficulty == Difficulty.Hard)
            {
                seconds = 5;
            }

            if (difficulty == Difficulty.Easy)
            {
                this.timerBlock.Visibility = Visibility.Collapsed;
            }
        }

        public void StartQuiz(int wordCount)
        {
            db.OpenConnection();
            currentWords = db.GetRandomWords(wordCount);
            db.CloseConnection();
        }
        public void StartTimer()
        {
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += Timer_Tick;

            timeLeft = TimeSpan.FromSeconds(seconds);
            timerBlock.Text = timeLeft.ToString(@"hh\:mm\:ss");
            timer.Start();
        }
        public void ResetTimer()
        {
            if (timer != null)
            {
                timer.Stop();
            }
            if (Difficulty == Difficulty.Medium)
            {
                timeLeft = TimeSpan.FromSeconds(60);
            }
            else if (Difficulty == Difficulty.Hard)
            {
                timeLeft = TimeSpan.FromSeconds(5);
            }
            timerBlock.Text = timeLeft.ToString(@"hh\:mm\:ss");
        }
        private void Timer_Tick(object sender, EventArgs e)
        {
            if (timeLeft > TimeSpan.Zero)
            {
                timeLeft = timeLeft.Add(TimeSpan.FromSeconds(-1));
                timerBlock.Text = timeLeft.ToString(@"hh\:mm\:ss");
            }
            else
            {
                timer.Stop();
                if (Difficulty != Difficulty.Easy)
                {
                    timerBlock.Text = "Lejárt az idő!";
                }
            }
        }
        public Difficulty Difficulty { get; set; }
        public List<Word> CurrentWords { get => currentWords; }
    }
}