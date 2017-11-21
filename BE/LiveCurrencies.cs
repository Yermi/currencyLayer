using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

namespace BE
{
    public class LiveCurrencies 
    {
        public int ID { get; set; }
        public bool success { get; set; }

        [JsonProperty("terms")]
        public string Terms { get; set; }

        [JsonProperty("privacy")]
        public string Privacy { get; set; }

        [JsonProperty("timestamp")]
       // [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
       // [Key]
        public int Timestamp { get; set; }

        [JsonProperty("source")]
        public string Source { get; set; }

        [JsonProperty("quotes")]
        public Dictionary<string, string> quotes { get; set; }
    }
}
