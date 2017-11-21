using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
   public interface IDAL
    {
        String GetDataFromService();
        void DbConnection();
        void ImportCurrencies();
        List<BE.Values> GetHistoryDates(DateTime FromDate, DateTime ToDate, String FromCurrency, String ToCurrency);       
    }
}