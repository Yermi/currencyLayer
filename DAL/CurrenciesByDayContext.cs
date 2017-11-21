using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;

namespace DAL
{

    //  using SqlProviderServices = System.Data.Entity.SqlServer.SqlProviderServices;
    public class CurrenciesByDayContext : DbContext
    {
        public CurrenciesByDayContext() : base()
        {
            // Database.SetInitializer<CurrenciesContext>(new DropCreateDatabaseAlways<CurrenciesContext>());
        }

        public DbSet<ModelCurrencies> modelCurrenciesDB { get; set; }



        public async Task InsertCurrenciesByDay(ModelCurrencies CurrenciesByDay)
        {
            this.modelCurrenciesDB.Add(CurrenciesByDay);
            await SaveChangesAsync();
        }

        public List<ModelCurrencies> GetCurrenciesByDay(Func<ModelCurrencies, bool> predicate)
        {
            var v = this.modelCurrenciesDB.Include(c => c.quotes).Where(predicate).ToList();
            return v;
        }


    }
}