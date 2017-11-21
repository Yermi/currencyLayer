using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using BE;

namespace DAL
{
    public class CurrenciesContext : DbContext
    {
        public CurrenciesContext() : base()
        {
            //Database.SetInitializer<CurrenciesContext>(new DropCreateDatabaseAlways<CurrenciesContext>());
        }

        public DbSet<LiveCurrencies> LiveCurrencies { get; set; }     

        public async Task InsertCurrenciesDB (LiveCurrencies live)
        {
            this.LiveCurrencies.Add(live);
            await SaveChangesAsync();
        }        
       
        public List<LiveCurrencies> GetCurrencies(Func<LiveCurrencies, bool> predicate)
        {
            var v = this.LiveCurrencies.Include(c => c.quotes).Where(predicate).ToList();
            return v;
        }         
    }
}
