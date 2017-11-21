using BE;
using DevExpress.Xpf.Charts;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;
using mainWindow.Commands;

using System.IO;

using System.Reflection;
using mainWindow.Models;


namespace mainWindow
{
    public class ViewModel : INotifyPropertyChanged, IViewModel
    {
        public List<string> currnciesNames { get; set; }
        public ObservableCollection<BE.ChartSeriesInfo> Series { get; set; }
        public ObservableCollection<KeyValuePair<string, string>> CurrenciesList { get; set; }
        public ObservableCollection<BE.HistoryCurrencies> HistoricalCurrencies { get; set; }
        LineSeries2D series = new LineSeries2D();

        private ObservableCollection<object> selectedItems;
        private string selectedItem;
        public string SelectedItem
        {
            get { return selectedItem; }
            set
            {
                selectedItem = value;
                RaisePropertyChanged("SelectedItem");
            }
        }
        public ObservableCollection<object> SelectedItems
        {
            get { return selectedItems; }
            set
            {
                selectedItems = value;
                RaisePropertyChanged("SelectedItems");
            }
        }

        // handle the values of the currencies to add to the series
        public List<Values> ValuesList = new List<Values>();

        // prpperties for the user inputs
        public string FromCurrency { get; set; }
        public string ToCurrency { get; set; }
        public DateTime FromDate { get; set; }
        public DateTime ToDate { get; set; }
        public string ConvertFrom { get; set; }
        public string ConvertTo { get; set; }
        public string Amount { get; set; }

        private string conversionResult;
        public string ConversionResult
        {
            get { return conversionResult; }
            set
            {
                if (value != null)
                {
                    conversionResult = value;
                    RaisePropertyChanged("ConversionResult");
                }
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        private void RaisePropertyChanged(string property)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(property));
            }
        }
        // ToDo:
        public ObservableCollection<TabItem> TabItems { get; set; }
 

        public ViewModel()
        {
            BL.BLclass bl = new BL.BLclass();
          
            Models.Model model = new Models.Model();
            bl.StartUpdatingCurrencies();
            

            HistoricalCurrencies = new ObservableCollection<BE.HistoryCurrencies>();
            CurrenciesList = new ObservableCollection<KeyValuePair<string, string>>();
            CurrenciesList = model.GetCurrencies();

            currnciesNames = new List<string>();
            this.Series = new ObservableCollection<BE.ChartSeriesInfo>();

            FromDate = DateTime.Now;
            ToDate = DateTime.Now;

            getHistoricalCurrenciesCommand = new GetHistoricalCurrenciesCommand();
            convertCurrenciesCommand = new ConvertCurrenciesCommand();
            initilaze();           
        }

        public void initilaze()
        {
            string currentDirectory = System.IO.Path.GetDirectoryName(Assembly.GetEntryAssembly().Location);
            string filePath = System.IO.Path.Combine(currentDirectory, "currencies_list.json");
            StreamReader streamReader = new StreamReader(filePath);
            string result = streamReader.ReadToEnd();
            var s = Newtonsoft.Json.JsonConvert.DeserializeObject<list>(result);

            foreach (var currency in s.currencies)
            {
                currnciesNames.Add(currency.Key + " - " + currency.Value);
            }            
        }

        public GetHistoricalCurrenciesCommand getHistoricalCurrenciesCommand { get; set; }
        public ConvertCurrenciesCommand convertCurrenciesCommand { get; set; }

        public ICommand ConvertCommand => throw new NotImplementedException();

        public ICommand GetHistoricalCurrenciesCommand => throw new NotImplementedException();

        public void calculateHistoricalCurrencies()
        {
            List<DateTime> datesValues = new List<DateTime>();
            List<double> currencyValues = new List<double>();

            // remove, if there is, any existing series from the chart
            if (Series.Count > 0)
            {
                Series.Clear();
                ValuesList.Clear();
            }
           
            Models.Model model = new Models.Model();

            ValuesList = model.GetHistoricalCurrencies(FromDate, ToDate, FromCurrency, ToCurrency);            

            // add the lists that handle the date to the Series.Point as a series of (date,value)            
            for (int i = 0; i < datesValues.Count && i < currencyValues.Count; i++)
            {
                ValuesList.Add(new Values { dateTime = datesValues[i], value = currencyValues[i] });
            }

            // add the data to Series property and display it to the chart
            Series.Add(new BE.ChartSeriesInfo { FromTo = FromCurrency.Substring(0, 3) + " - " + ToCurrency.Substring(0, 3), values = ValuesList });
        }

        public void ConvertCurrencies() {

            Models.Model model = new Models.Model();
            BL.BLclass bl = new BL.BLclass();

            Dictionary<string, string> dict = new Dictionary<string, string>();
            dict.Add("currencies", ConvertFrom.Substring(0, 3));
            
            var b = bl.GetConversion("live", dict);
            var res = Newtonsoft.Json.JsonConvert.DeserializeObject<BE.HistoryCurrencies>(b);
            dict.Clear();
            dict.Add("currencies", ConvertTo.Substring(0, 3));
            var c = bl.GetConversion("live", dict);
            
            var res2 = Newtonsoft.Json.JsonConvert.DeserializeObject<BE.HistoryCurrencies>(c);

            float tempres = (float)((1/ res.quotes.First().Value) * res2.quotes.First().Value);

            string result = (Int32.Parse(Amount) * tempres).ToString();

            ConversionResult = Amount + " " + ConvertFrom.Substring(0, 3) + "  -->  "
                + result + " " + ConvertTo.Substring(0, 3);

        }
    }
}