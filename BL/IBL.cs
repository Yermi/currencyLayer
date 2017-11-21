using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;

namespace BL
{
    
public interface IBL
    {
        String GetDataFromService();
        void checkDB();
        String  GetConversion(string path, Dictionary<string, string> postdata = null);              
    }
}
