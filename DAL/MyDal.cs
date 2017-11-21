using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using System.Web;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity.Infrastructure;
using System.IO;

namespace DAL
{
    public class updateDal : IDAL
    {
        // handle the values of the currencies to add to the series
        public List<BE.Values> ValuesList = new List<BE.Values>();

        List<KeyValuePair<string, string>> currencies = new List<KeyValuePair<string, string>>();
        List<DateTime> datesValues = new List<DateTime>();
        List<double> currencyValues = new List<double>();

        public void DbConnection()
        {
            DAL.WebServiceConnection dal2 = new DAL.WebServiceConnection("http://apilayer.net/api/", "3aa55037c7173b2164e54ac79cc45f4c");
            var data = GetDataFromService();
            var data3 = dal2.GetConversion("historical", new Dictionary<string, string>
                {
                     { "date", "2017-10-10" }
                });
            var s = Newtonsoft.Json.JsonConvert.DeserializeObject<BE.LiveCurrencies>(data);

            foreach (var currency in s.quotes)
            {
                currencies.Add(currency);
            }
            LiveCurrencies l = JsonConvert.DeserializeObject<LiveCurrencies>(data);            
        }

        public String GetDataFromService()
        {
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://apilayer.net/api/live?access_key=3aa55037c7173b2164e54ac79cc45f4c");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.GetAsync("http://apilayer.net/api/live?access_key=3aa55037c7173b2164e54ac79cc45f4c").Result;
            
            var result = response.Content.ReadAsStringAsync().Result;

            LiveCurrencies live = JsonConvert.DeserializeObject<LiveCurrencies>(result);
            using (var db2 = new CurrenciesContext())
            {

                db2.LiveCurrencies.Add(live);
                try
                {
                    db2.SaveChanges();

                    var x = db2.LiveCurrencies.ToList();
                }
                catch (Exception e)
                {
                    e.GetBaseException();
                }
            }
            return result;           
        }    

        public List<BE.Values> GetHistoryDates(DateTime FromDate, DateTime ToDate , String FromCurrency, String ToCurrency)
        {
            using (var db = new HistoryContext())
            {
                List<HistoryCurrencies> histroyList;
                histroyList = db.GetCurrenciesHistory(d => FromDate <= d.date && ToDate >= d.date );
                // TODO insert data from DB
            }
                // for each 10 days in the range of date, create httpRequest for the selected currency value
                // and add its' date and value to Xlist and Ylist respectively
                for (DateTime date = FromDate; date < ToDate; date = date.AddDays(10))
                {
                HttpClient httpClient = new HttpClient();
                string baseUri = "http://apilayer.net/api/historical?access_key=3aa55037c7173b2164e54ac79cc45f4c&currencies=" + FromCurrency.Substring(0, 3) + "&date=";
                string baseUri2 = "http://apilayer.net/api/historical?access_key=3aa55037c7173b2164e54ac79cc45f4c&currencies=" + ToCurrency.Substring(0, 3) + "&date=";
                string dateForAPIQuery = date.ToString("yyyy-MM-dd");

                httpClient.BaseAddress = new Uri(baseUri + dateForAPIQuery);
                httpClient.BaseAddress = new Uri(baseUri2 + dateForAPIQuery);
                httpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage response = httpClient.GetAsync(baseUri + dateForAPIQuery).Result;
                HttpResponseMessage response2 = httpClient.GetAsync(baseUri2 + dateForAPIQuery).Result;

                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;
                    var result2 = response2.Content.ReadAsStringAsync().Result;
                    var s1 = Newtonsoft.Json.JsonConvert.DeserializeObject<HistoryCurrencies>(result);
                    var s2 = Newtonsoft.Json.JsonConvert.DeserializeObject<HistoryCurrencies>(result2);

                    datesValues.Add(s1.date);
                    currencyValues.Add((1 / s1.quotes.First().Value) * s2.quotes.First().Value);
                  
                    InsertHistoryDB(s1);
                    InsertHistoryDB(s2);
                }
                // add the lists that handle the date to the Series.Point as a series of (date,value)            
                for (int i = 0; i < datesValues.Count && i < currencyValues.Count; i++)
                {
                    ValuesList.Add(new Values { dateTime = datesValues[i], value = currencyValues[i] });
                }

            }
            return ValuesList;
        }
        
        private async void InsertHistoryDB(HistoryCurrencies s1)
        {
            using (var db_h = new HistoryContext())
            {
              /*  
                foreach (var quote in s1.quotes)
                {
                    s1.quotesA.Key = quote.Key;
                    s1.quotesA.Value = quote.Value;
                }
                */
                await db_h.InsertHistoryCurrenciesDB(s1);
                
                var y = db_h.HistoryCurrencies.ToArray();
            }
        }        
        
        public async void ImportCurrencies()
        { 
            using (var db2 = new CurrenciesContext())
            {
                HttpClient client = new HttpClient();
                string response = await client.GetStringAsync("http://apilayer.net/api/live?access_key=3aa55037c7173b2164e54ac79cc45f4c");

                LiveCurrencies live = JsonConvert.DeserializeObject<LiveCurrencies>(response);
                
                await db2.InsertCurrenciesDB(live);

                var x = db2.LiveCurrencies.ToArray();
            }
        }
    }
}