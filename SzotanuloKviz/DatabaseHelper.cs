using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace SzotanuloKviz
{
    public class DatabaseHelper
    {
        private string connectionString;

        public DatabaseHelper(string server, string database, string username, string password)
        {
            connectionString = $"Server={server};Database={database};User ID={username};Password={password};";
        }

        public void Connect()
        {
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                }
                catch (MySqlException ex)
                {
                    Console.WriteLine($"Hiba: {ex.Message}");
                }
            }
        }
        public void GetWords()
        {
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT word, meaning FROM words";

                MySqlCommand command = new MySqlCommand(query, connection);
                using (MySqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string word = reader["word"].ToString();
                        string meaning = reader["meaning"].ToString();
                    }
                }
            }
        }
    }
}
