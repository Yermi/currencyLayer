using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using System.Timers;

namespace BL
{

    
   public  class BLclass : IBL
    {
        DAL.IDAL dal1 = new DAL.updateDal();
        DAL.WebServiceConnection dal2 = new DAL.WebServiceConnection("http://apilayer.net/api/", "3aa55037c7173b2164e54ac79cc45f4c");
        public String GetDataFromService()
        {
          return  dal1.GetDataFromService();
        }

        void IBL.checkDB()
        {
            dal1.DbConnection();
       
        }
        public String GetConversion(string path, Dictionary<string, string> postdata = null)
        {
            return dal2.GetConversion(path , postdata);
        }

        public int updateTime
        {
            get
            {
                return timeToUpdate;
            }
           
            set
            {
                if (value < 30)
                    timeToUpdate = 30 * 60 * 1000;
                else timeToUpdate = value * 1000 * 60;
            }
        }
        private int timeToUpdate;


        public BLclass()
        {
            updateTime = 30;
            dal1.ImportCurrencies();
        }

        public void StartUpdatingCurrencies()
        {
            Timer checkForTime = new Timer(updateTime);
            checkForTime.Elapsed += new ElapsedEventHandler(checkForTime_Elapsed);
            checkForTime.Enabled = true;
        }
        private void checkForTime_Elapsed(object sender, ElapsedEventArgs e)
        {
            
            dal1.ImportCurrencies();
        }

        public List<BE.Values> GetDatesValue(DateTime FromDate , DateTime ToDate , String FromCurrency, String ToCurrency)
        {
         return  dal1.GetHistoryDates(FromDate , ToDate , FromCurrency ,ToCurrency);
        }

      
    }
}
