using Newtonsoft.Json;
using System.IO;

namespace SzotanuloKviz
{
    public class Importer
    {
        private Database db;

        public Importer(Database database)
        {
            db = database;
        }

        public void ImportCsv(string filePath)
        {
            if (!File.Exists(filePath))
            {
                throw new FileNotFoundException("A megadott fájl nem található.");
            }

            string[] lines = File.ReadAllLines(filePath);

            if (lines.Length == 0)
            {
                throw new InvalidOperationException("A fájl üres.");
            }

            foreach (string line in lines)
            {
                string[] parts = line.Split(';');

                if (parts.Length != 2)
                {
                    throw new FormatException($"A sor hibás: '{line}'. Két adatot kell tartalmaznia.");
                }
                if (string.IsNullOrWhiteSpace(parts[0]) || string.IsNullOrWhiteSpace(parts[1]))
                {
                    throw new ArgumentException($"A sor hibás: '{line}'. A szavak nem lehetnek üresek.");
                }

                db.UploadWord(parts[0], parts[1]);
            }
        }
        public void ImportJson(string filePath)
        {
            if (!File.Exists(filePath))
            {
                throw new FileNotFoundException("A megadott fájl nem található.");
            }

            string jsonData = File.ReadAllText(filePath);

            if (string.IsNullOrWhiteSpace(jsonData))
            {
                throw new InvalidOperationException("A fájl üres.");
            }

            List<Word> words = JsonConvert.DeserializeObject<List<Word>>(jsonData);

            if (words == null || words.Count == 0)
            {
                throw new InvalidOperationException("A JSON fájl nem tartalmaz szavakat.");
            }

            foreach (Word word in words)
            {
                if (string.IsNullOrWhiteSpace(word.WordText) || string.IsNullOrWhiteSpace(word.Meaning))
                {
                    throw new ArgumentException($"A szó hibás: '{word.WordText}'. A szavak nem lehetnek üresek.");
                }

                db.UploadWord(word.WordText, word.Meaning);
            }
        }
    }
}
