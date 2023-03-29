using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Management;
using System.Net.Http;
using System.Windows.Forms;
using System.Configuration;
using Newtonsoft.Json;
using Microsoft.Win32;
using System.Runtime.Remoting.Contexts;
using System.Linq;
using System.ServiceProcess;
using System.Threading.Tasks;


namespace bannerAnuncios
{

    [RunInstaller(true)]
    public partial class Notificaciones : Form
    {
        
        string username = ConfigurationManager.AppSettings["Username"];
        string password = ConfigurationManager.AppSettings["Password"];
        int interval = int.Parse(ConfigurationManager.AppSettings["IntervalQA"]);
        int mensaje = int.Parse(ConfigurationManager.AppSettings["mensaje"]);
        private readonly HttpClient _httpClient = new HttpClient();
        private readonly string _restServiceUrl = ConfigurationManager.AppSettings["UrlQA"];
        string alerta = ConfigurationManager.AppSettings["Alerta"];
        string error = ConfigurationManager.AppSettings["Error"];

        public Notificaciones()
        {
            InitializeComponent();

            timer1.Interval = interval;
            timer1.Tick += new EventHandler(Timer1_Tick);
            timer1.Start();
            this.Hide();

            string executablePath = "C:\\Program Files\\Volkswagen de Mexico\\BannerAnuncios\\bannerAnuncios.exe";

            // Add the executable to the startup registry key
            RegistryKey startupKey = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", true);
            startupKey.SetValue("MyProgram", executablePath);
            startupKey.Close();
        }
        protected override void OnShown(EventArgs e)
        {
            base.OnShown(e);
            button1.PerformClick();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Program.notificaciones.Hide();
           
        }

        private async void Timer1_Tick(object sender, EventArgs e)
        {
            try
            {
                // Fetch messages from the REST service
                string hostname = System.Net.Dns.GetHostName();
                
                ManagementObjectSearcher searcher = new ManagementObjectSearcher("Select SerialNumber FROM Win32_BIOS");
                
                string serialNumber = "";
                
                foreach (ManagementObject mo in searcher.Get())
                {
                    serialNumber = mo["SerialNumber"].ToString();
                }
                
                string urlFinal = _restServiceUrl + serialNumber;
                
                var response = await _httpClient.GetAsync(urlFinal);

                if(response.StatusCode == System.Net.HttpStatusCode.NotFound) { }
                else { 
                string json = await response.Content.ReadAsStringAsync();

                List<detalleAnuncios> messages = JsonConvert.DeserializeObject<List<detalleAnuncios>>(json);

               // Display each message as a notification
                foreach (detalleAnuncios message in messages)
                  {
                      string mensajes = message.detalleAnuncio;
                      string titulo = message.tituloAnuncio;
                      BannerAnuncios.ShowBalloonTip(mensaje, titulo, mensajes, ToolTipIcon.Info);
                  }
                }
            }
             catch (Exception ex)
             {
                // Handle errors
                BannerAnuncios.ShowBalloonTip(mensaje,alerta, error, ToolTipIcon.Error);
             }

           
        }
        
    }

    class detalleAnuncios
    {
        public string tituloAnuncio { get; set; }
        public string detalleAnuncio { get; set; }
    }

    
    

}
