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
    /// Dataleft2 的摘要说明
    /// </summary>
    public class Dataleft2 : IHttpHandler
    {

        public struct Arry
        {
            public int value;
            public String name;
        }
        private static char[] constant =   
      {   
        '0','1','2'
        
      };
        public void ProcessRequest(HttpContext context)
        {

            context.Response.ContentType = "text/plain";
          //  Double[] arry1 = new Double[4];
              Arry[] arry = new Arry[3];
             /* arry[0].month = "1月";
              arry[1].month = "2月";
              arry[2].month = "3月";
              arry[0].rain = 2.6;
              arry[1].rain = 3.6;
              arry[2].rain = 4.6;*/

            System.Text.StringBuilder newRandom = new System.Text.StringBuilder(3);
            Random rd = new Random();
            newRandom.Append(constant[rd.Next(3)]);


            string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["testConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            switch (newRandom.ToString())
            {
                case "0":
                    String sqlcom1 = "Select aoxian from lukuang2 where id=1";//id="+i
                    SqlCommand cmd1 = new SqlCommand(sqlcom1, conn);
                    int d1 = (int)cmd1.ExecuteScalar();
                    String sqlcom11 = "Select shanqu from lukuang2 where id=1";
                    SqlCommand cmd11 = new SqlCommand(sqlcom11, conn);
                    int d11 = (int)cmd11.ExecuteScalar();
                    String sqlcom111 = "Select hupo from lukuang2 where id=1";
                    SqlCommand cmd111 = new SqlCommand(sqlcom111, conn);
                    int d111 = (int)cmd111.ExecuteScalar();
                  
                    arry[0].value = d1;
                    arry[1].value = d11;
                    arry[2].value = d111;
                    arry[0].name = "凹陷地段";
                    arry[1].name = "山区隧道";
                    arry[2].name = "湖泊沼泽";
                    context.Response.Write(new JavaScriptSerializer().Serialize(arry));
                    break;
                case "1":
                    String sqlcom2 = "Select aoxian from lukuang2 where id=2";//id="+i
                    SqlCommand cmd2 = new SqlCommand(sqlcom2, conn);
                    int d2 = (int)cmd2.ExecuteScalar();
                    String sqlcom22 = "Select shanqu from lukuang2 where id=2";
                    SqlCommand cmd22 = new SqlCommand(sqlcom22, conn);
                    int d22 = (int)cmd22.ExecuteScalar();
                    String sqlcom222 = "Select hupo from lukuang2 where id=2";
                    SqlCommand cmd222 = new SqlCommand(sqlcom222, conn);
                    int d222 = (int)cmd222.ExecuteScalar();
                  
                    arry[0].value = d2;
                    arry[1].value = d22;
                    arry[2].value = d222;
                    arry[0].name = "凹陷地段";
                    arry[1].name = "山区隧道";
                    arry[2].name = "湖泊沼泽";
                    context.Response.Write(new JavaScriptSerializer().Serialize(arry));
                    break;
                case "2":
                    String sqlcom3 = "Select aoxian from lukuang2 where id=3";//id="+i
                    SqlCommand cmd3 = new SqlCommand(sqlcom3, conn);
                    int d3 = (int)cmd3.ExecuteScalar();
                    String sqlcom33 = "Select shanqu from lukuang2 where id=3";
                    SqlCommand cmd33 = new SqlCommand(sqlcom33, conn);
                    int d33 = (int)cmd33.ExecuteScalar();
                    String sqlcom333 = "Select hupo from lukuang2 where id=3";
                    SqlCommand cmd333 = new SqlCommand(sqlcom333, conn);
                    int d333 = (int)cmd333.ExecuteScalar();
                  
                    arry[0].value = d3;
                    arry[1].value = d33;
                    arry[2].value = d333;
                    arry[0].name = "凹陷地段";
                    arry[1].name = "山区隧道";
                    arry[2].name = "湖泊沼泽";
                    context.Response.Write(new JavaScriptSerializer().Serialize(arry));
                    break;
            
                default:
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