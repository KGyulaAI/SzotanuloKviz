using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SzotanuloKviz
{
    public class Word
    {
        public int Id { get; set; }
        public string WordText { get; set; }
        public string Meaning { get; set; }
        public int LearnedCount { get; set; }
    }

}
