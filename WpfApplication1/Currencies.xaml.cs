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
using Syncfusion.Windows.Controls;

namespace mainWindow
{
    /// <summary>
    /// Interaction logic for Currencies.xaml
    /// </summary>
    public partial class Currencies : UserControl
    {
        public Currencies()
        { 
            InitializeComponent();
            var viewModel = new ViewModel();
            DataContext = viewModel;           
        }       
    }
}
