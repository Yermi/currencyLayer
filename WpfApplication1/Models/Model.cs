using BE;
using DAL;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
using Syncfusion.Windows.Shared;
//using Syncfusion.UI.Xaml.Charts;
//using Syncfusion.Windows.SampleLayout;

namespace mainWindow.Models
{

    public class Model
    {
        ObservableCollection<KeyValuePair<string, string>> currencies = new ObservableCollection<KeyValuePair<string, string>>();
        BL.BLclass bl = new BL.BLclass();

        public void GetDataModel()
        {           

            BL.BLclass bl = new BL.BLclass();
            BE.LiveCurrencies be = new BE.LiveCurrencies();

            var data2 =  bl.GetConversion("live", new Dictionary<string, string>
            {

            });

            var s = Newtonsoft.Json.JsonConvert.DeserializeObject<LiveCurrencies>(data2);

            foreach (var quote in s.quotes)
            {
                currencies.Add(quote);
            }
        }
        public ObservableCollection<KeyValuePair<string, string>> GetCurrencies()
        {
            GetDataModel();
            return currencies;
        }

        public List<BE.Values> GetHistoricalCurrencies(DateTime FromDate, DateTime ToDate, String FromCurrency, String ToCurrency)
        {

            List<BE.Values> ValuesList = new List<BE.Values>();

            ValuesList = bl.GetDatesValue(FromDate, ToDate, FromCurrency, ToCurrency);

            return ValuesList;
        }

   
    }
    public class ChartSeriesInfo
    {
        public string FromTo { get; set; }
        public List<Values> values { get; set; }
    }


}
