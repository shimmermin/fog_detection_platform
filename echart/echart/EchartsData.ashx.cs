using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Threading;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Data.SqlClient;
namespace echart
{
    /// <summary>
    /// EchartsData 的摘要说明
    /// </summary>
    public class EchartsData : IHttpHandler
    {
        public struct Arry
        {
            public String month;
            public double rain;
        }
        private static char[] constant =   
      {   
        '0','1','2','3'
        
      };
        public void ProcessRequest(HttpContext context)
        {

            context.Response.ContentType = "text/plain";
            Double[] arry1 = new Double[4];
          /*  Arry[] arry = new Arry[3];
            arry[0].month = "1月";
            arry[1].month = "2月";
            arry[2].month = "3月";
            arry[0].rain = 2.6;
            arry[1].rain = 3.6;
            arry[2].rain = 4.6;*/
  
            System.Text.StringBuilder newRandom = new System.Text.StringBuilder(4);
            Random rd = new Random();
            newRandom.Append(constant[rd.Next(4)]);


            string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["testConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            switch (newRandom.ToString())
            {
                case "0":
                 String sqlcom1 = "Select jan from raining where id=1";//id="+i
                 SqlCommand cmd1 = new SqlCommand(sqlcom1, conn);
                 Double d1 = (Double)cmd1.ExecuteScalar();
                 String sqlcom11 = "Select feb from raining where id=1";
                 SqlCommand cmd11 = new SqlCommand(sqlcom11, conn);
                 Double d11 = (Double)cmd11.ExecuteScalar();
                  String sqlcom111 = "Select march from raining where id=1";
                 SqlCommand cmd111 = new SqlCommand(sqlcom111, conn);
                 Double d111 = (Double)cmd111.ExecuteScalar();
                     String sqlcom1111 = "Select april from raining where id=1";
                 SqlCommand cmd1111 = new SqlCommand(sqlcom1111, conn);
                 Double d1111 = (Double)cmd1111.ExecuteScalar();
　　            arry1[0] = d1 ;
                arry1[1] = d11 ;
                arry1[2] = d111 ;
                arry1[3] = d1111;  
                context.Response.Write(new JavaScriptSerializer().Serialize(arry1));
　　            break;
　              case "1":
　　            String sqlcom2 = "Select jan from raining where id=2";//id="+i
                 SqlCommand cmd2 = new SqlCommand(sqlcom2, conn);
                 Double d2 = (Double)cmd2.ExecuteScalar();
                 String sqlcom22 = "Select feb from raining where id=2";
                 SqlCommand cmd22 = new SqlCommand(sqlcom22, conn);
                 Double d22 = (Double)cmd22.ExecuteScalar();
                  String sqlcom222 = "Select march from raining where id=2";
                 SqlCommand cmd222 = new SqlCommand(sqlcom222, conn);
                 Double d222 = (Double)cmd222.ExecuteScalar();
                     String sqlcom2222 = "Select april from raining where id=2";
                 SqlCommand cmd2222 = new SqlCommand(sqlcom2222, conn);
                 Double d2222 = (Double)cmd2222.ExecuteScalar();
　　            arry1[0] = d2 ;
                arry1[1] = d22 ;
                arry1[2] = d222 ;
                arry1[3] = d2222;       
                context.Response.Write(new JavaScriptSerializer().Serialize(arry1));
　　            break;
                case "2":
　　            String sqlcom3 = "Select jan from raining where id=3";//id="+i
                 SqlCommand cmd3 = new SqlCommand(sqlcom3, conn);
                 Double d3 = (Double)cmd3.ExecuteScalar();
                 String sqlcom33 = "Select feb from raining where id=3";
                 SqlCommand cmd33 = new SqlCommand(sqlcom33, conn);
                 Double d33 = (Double)cmd33.ExecuteScalar();
                  String sqlcom333 = "Select march from raining where id=3";
                 SqlCommand cmd333 = new SqlCommand(sqlcom333, conn);
                 Double d333 = (Double)cmd333.ExecuteScalar();
                      String sqlcom3333 = "Select april from raining where id=3";
                 SqlCommand cmd3333 = new SqlCommand(sqlcom3333, conn);
                 Double d3333 = (Double)cmd3333.ExecuteScalar();
　　            arry1[0] = d3 ;
                arry1[1] = d33 ;
                arry1[2] = d333 ;
                arry1[3] = d3333;        
                context.Response.Write(new JavaScriptSerializer().Serialize(arry1));
　　            break;
                case "3":
　　           String sqlcom4 = "Select jan from raining where id=4";//id="+i
                 SqlCommand cmd4 = new SqlCommand(sqlcom4, conn);
                 Double d4 = (Double)cmd4.ExecuteScalar();
                 String sqlcom44 = "Select feb from raining where id=4";
                 SqlCommand cmd44 = new SqlCommand(sqlcom44, conn);
                 Double d44 = (Double)cmd44.ExecuteScalar();
                  String sqlcom444 = "Select march from raining where id=4";
                 SqlCommand cmd444 = new SqlCommand(sqlcom444, conn);
                 Double d444 = (Double)cmd444.ExecuteScalar();
                      String sqlcom4444 = "Select april from raining where id=4";
                 SqlCommand cmd4444 = new SqlCommand(sqlcom4444, conn);
                 Double d4444 = (Double)cmd4444.ExecuteScalar();
　　            arry1[0] = d4 ;
                arry1[1] = d44 ;
                arry1[2] = d444 ;
                arry1[3] = d4444;      
                context.Response.Write(new JavaScriptSerializer().Serialize(arry1));
　　            break;
　            default :
　          　break;
            }
            conn.Close();    

        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

       
    }
}