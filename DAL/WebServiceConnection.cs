using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using BE;


namespace DAL
{
    public partial class WebServiceConnection
    {
        BE.LiveCurrencies be1 = new BE.LiveCurrencies();
        private string _baseUrl;
        private string _queryUrl;
        private string _accessKey;
        private string _content;
        private HttpResponseMessage _response;
        private HttpClient _httpClient;

        public WebServiceConnection(string paramBaseUrl, string paramAccessKey)
        {
            this._baseUrl = paramBaseUrl;
            this._accessKey = paramAccessKey;
        }

        public String GetConversion(string path, Dictionary<string, string> postdata = null) {

            this._queryUrl = (this._baseUrl + path + buildEndpointRoute(_accessKey, postdata));
            HttpClient client = new HttpClient();
            HttpResponseMessage response = client.GetAsync(this._queryUrl).Result;
            var result = response.Content.ReadAsStringAsync().Result;
            this._queryUrl = this._baseUrl;
            return result;
        }

        private string buildEndpointRoute(string key, Dictionary<string, string> parameters)
        {

            if (parameters == null)
            {
                parameters = new Dictionary<string, string>();
            }

            parameters.Add("access_key", key);
            parameters.Add("format", "1");

            UriBuilder uriBuilder = new UriBuilder();
            var query = HttpUtility.ParseQueryString(uriBuilder.Query);
            foreach (var urlParameter in parameters)
            {
                query[urlParameter.Key] = urlParameter.Value;
            }
            uriBuilder.Query = query.ToString();
            return uriBuilder.Query;
        }
    }
}