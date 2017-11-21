using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity.Infrastructure;

namespace DAL
{
    using SqlProviderServices = System.Data.Entity.SqlServer.SqlProviderServices;
    public class HistoryContext : DbContext
    {
        public HistoryContext() : base()
        {
            //Database.SetInitializer<HistoryContext>(new DropCreateDatabaseAlways<HistoryContext>());
        }

        
        public DbSet<HistoryCurrencies> HistoryCurrencies { get; set; }     

        public async Task InsertHistoryCurrenciesDB(HistoryCurrencies h)
        {
            this.HistoryCurrencies.Add(h);
            await SaveChangesAsync();
        }
      
        
        public List<HistoryCurrencies> GetCurrenciesHistory(Func<HistoryCurrencies, bool> predicate)
        {
            var data = this.HistoryCurrencies.Where(predicate).ToList();
            return data;
        }
        
    }
}
