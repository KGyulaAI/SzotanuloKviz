﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace SzotanuloKviz
{
    /// <summary>
    /// Interaction logic for QuizPage.xaml
    /// </summary>
    public partial class QuizPage : Page
    {
        private readonly Database db;
        private readonly Quiz quiz;
        private int currentQuestionIndex = 0;
        private List<Word> questions;
        private int correctAnswers = 0;

        public QuizPage(Difficulty difficulty)
        {
            InitializeComponent();
            string connectionString = "server=localhost;port=3306;username=root;password=;database=szotanulokviz;";
            db = new Database(connectionString);
            quiz = new Quiz(db, difficulty, tbTimer);
            quiz.StartQuiz(10);
            questions = quiz.CurrentWords;

            NewQuestion();
        }

        private void NewQuestion()
        {
            if (currentQuestionIndex < questions.Count)
            {
                Word question = questions[currentQuestionIndex];
                tbQuestion.Text = question.WordText;
                CreateAnswers();
                quiz.StartTimer();
            }
            else
            {
                db.UpdateDatabase(quiz);
                MessageBox.Show($"Véget ért a kvíz! Helyes válaszok: {correctAnswers} / 10", "Vége", MessageBoxButton.OK, MessageBoxImage.Asterisk);
                NavigationService.Navigate(new MainMenu());
            }
        }
        private void CreateAnswers()
        {
            List<Word> randomWords = db.GetRandomWords(3);
            Word correctWord = questions[currentQuestionIndex];
            int randomWordsIndex = 0;
            randomWords.Insert(new Random().Next(4), correctWord);

            for (int i = 2; i < 4; i++)
            {
                for (int j = 0; j < 2; j++)
                {
                    Button answerButton = new Button
                    {
                        Content = randomWords[randomWordsIndex++].Meaning,
                        FontSize = 30,
                        Background = new SolidColorBrush(Colors.DarkOrange),
                        FontFamily = new FontFamily("Georgia")
                    };
                    answerButton.Click += AnswerButton_Click;
                    answerButton.Height = 60;
                    answerButton.Width = 350;
                    Grid.SetRow(answerButton, i);
                    Grid.SetColumn(answerButton, j);
                    gridMain.Children.Add(answerButton);
                }
            }
        }
        private void AnswerButton_Click(object sender, RoutedEventArgs e)
        {
            Button? button = sender as Button;
            if (button != null)
            {
                Word question = questions[currentQuestionIndex];
                string meaning = question.Meaning;

                foreach (object? child in gridMain.Children)
                {
                    if (child is Button b)
                    {
                        b.Click -= AnswerButton_Click;
                    }
                }

                quiz.ResetTimer();
                if (button.Content.ToString() == meaning)
                {
                    HighlightCorrectAnswer(meaning);
                    correctAnswers++;
                    questions[currentQuestionIndex].CorrectAnswers++;
                    questions[currentQuestionIndex].CorrectStreak++;
                }
                else
                {
                    button.Background = Brushes.Red;
                    HighlightCorrectAnswer(meaning);
                    questions[currentQuestionIndex].Mistakes++;
                }
                btnNext.Visibility = Visibility.Visible;

            }
        }
        private void HighlightCorrectAnswer(string correctAnswer)
        {
            foreach (object? child in gridMain.Children)
            {
                if (child is Button button && button.Content.ToString() == correctAnswer)
                {
                    button.Background = Brushes.Green;
                }
            }
        }
        private void btnNext_Click(object sender, RoutedEventArgs e)
        {
            btnNext.Visibility = Visibility.Collapsed;
            currentQuestionIndex++;
            NewQuestion();
        }
    }
}
