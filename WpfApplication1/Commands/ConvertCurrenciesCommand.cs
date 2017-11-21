using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace mainWindow.Commands
{
    public class ConvertCurrenciesCommand : ICommand
    {
        public event EventHandler CanExecuteChanged;

        public bool CanExecute(object parameter)
        {
            return true;
        }

        public void Execute(object parameter)
        {
            var vm = parameter as ViewModel;
            vm.ConvertCurrencies();
        }
    }
}
