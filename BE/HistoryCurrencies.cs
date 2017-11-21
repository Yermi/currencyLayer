using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity.Infrastructure;
using System.ComponentModel.DataAnnotations.Schema;
using System.Collections;

namespace BE
{
   public class HistoryCurrencies
    {
        public int ID { get; set; }
        public bool success { get; set; }
        public string terms { get; set; }
        public string privacy { get; set; }
        public bool historical { get; set; }
        public DateTime date { get; set; }
        public string timestamp { get; set; }
        public string source { get; set; }
        public Dictionary<string, float> quotes { get; set; }
        //    [ForeignKey("quotes")]
        //    public int QuotesId { get; private set; }
        [NotMapped]
        public virtual Quote quotesA { get; set; }



    }

    public class Quote
    {
       
           public String Key { get; set; }
            public float Value { get; set; }
        public int QuotesId { get; private set; }
    }
}
