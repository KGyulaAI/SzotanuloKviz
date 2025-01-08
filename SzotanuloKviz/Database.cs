using MySql.Data.MySqlClient;
using System.Data;

namespace SzotanuloKviz
{
    public class Database
    {
        private readonly MySqlConnection connection;

        public Database(string connectionString)
        {
            connection = new MySqlConnection(connectionString);
        }

        public void OpenConnection()
        {
            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }
        }
        public void CloseConnection()
        {
            connection.Close();
        }
        public List<Word> GetRandomWords(int count)
        {
            List<Word> words = new List<Word>();
            string query = 
                $"SELECT * FROM szavak " +
                $"WHERE CorrectStreak < 3 " +
                $"ORDER BY RAND() " +
                @"LIMIT @Count";

            OpenConnection();
            MySqlCommand cmd = new MySqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@Count", count);
            MySqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                words.Add(new Word
                    (
                        reader.GetInt32(0),
                        reader.GetString(1),
                        reader.GetString(2),
                        reader.GetInt32(3),
                        reader.GetInt32(4),
                        reader.GetInt32(5)

                    ));
            }

            reader.Close();
            CloseConnection();
            return words;
        }
        public Word GetWord(int id)
        {
            string query =
                $"SELECT * FROM words " +
                @"WHERE Id == @Id";

            OpenConnection();
            MySqlCommand cmd = new MySqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@Id", id);
            MySqlDataReader reader = cmd.ExecuteReader();
            Word word;

            reader.Read();
                word = new Word
                    (
                        reader.GetInt32(0),
                        reader.GetString(1),
                        reader.GetString(2),
                        reader.GetInt32(3),
                        reader.GetInt32(4),
                        reader.GetInt32(5)

                    );
            reader.Close();
            CloseConnection();

            return word;
        }
        public void UploadWord(string wordText, string meaning)
        {
            if (string.IsNullOrWhiteSpace(wordText) || string.IsNullOrWhiteSpace(meaning))
            {
                throw new ArgumentException("A szó és a jelentés nem lehet üres.");
            }

            OpenConnection();
            string query = "INSERT INTO szavak (WordText, Meaning) VALUES (@WordText, @Meaning)";
            MySqlCommand command = new MySqlCommand(query, connection);
            command.Parameters.AddWithValue("@WordText", wordText);
            command.Parameters.AddWithValue("@Meaning", meaning);
            command.ExecuteNonQuery();
            CloseConnection();
        }
        public void UpdateDatabase(Quiz quiz)
        {
            OpenConnection();
            string query = 
                "UPDATE szavak " +
                "SET " +
                @"CorrectAnswers = CorrectAnswers + @newCorrectAnswers, " +
                @"Mistakes = Mistakes + @newMistakes, " +
                @"CorrectStreak = @newCorrectStreak " +
                "WHERE " +
                @"Id = @id;";
            MySqlCommand command = new MySqlCommand(query, connection);
            command.Parameters.AddWithValue("@id", MySqlDbType.Int32);
            command.Parameters.AddWithValue("@newCorrectAnswers", MySqlDbType.Int32);
            command.Parameters.AddWithValue("@newMistakes", MySqlDbType.Int32);
            command.Parameters.AddWithValue("@newCorrectStreak", MySqlDbType.Int32);

            for (int i = 0; i < quiz.CurrentWords.Count; i++)
            {
                command.Parameters["@id"].Value = quiz.CurrentWords[i].Id;
                command.Parameters["@newCorrectAnswers"].Value = quiz.CurrentWords[i].CorrectAnswers;
                command.Parameters["@newMistakes"].Value = quiz.CurrentWords[i].Mistakes;
                command.Parameters["@newCorrectStreak"].Value = quiz.CurrentWords[i].CorrectStreak;
                command.ExecuteNonQuery();
            }
            CloseConnection();
        }
    }
}
