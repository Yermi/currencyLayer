using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using DevExpress.Mvvm;

namespace mainWindow
{
  public  interface IViewModel 
    {
        ICommand ConvertCommand { get; }
        ICommand GetHistoricalCurrenciesCommand { get; }
    }
}
