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
    /// Dataright3 的摘要说明
    /// </summary>
    public class Dataright3 : IHttpHandler
    {


        public struct Arry
        {
            public Double value;
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
            Arry[] arry = new Arry[4];
           

            System.Text.StringBuilder newRandom = new System.Text.StringBuilder(3);
            Random rd = new Random();
            newRandom.Append(constant[rd.Next(3)]);


            string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["testConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            switch (newRandom.ToString())
            {
                case "0":
                    String sqlcom1 = "Select guizhou from lukuang3 where id=1";//id="+i
                    SqlCommand cmd1 = new SqlCommand(sqlcom1, conn);
                    Double d1 = (Double)cmd1.ExecuteScalar();
                    String sqlcom11 = "Select jiangxi from lukuang3 where id=1";
                    SqlCommand cmd11 = new SqlCommand(sqlcom11, conn);
                    Double d11 = (Double)cmd11.ExecuteScalar();
                    String sqlcom111 = "Select fujian from lukuang3 where id=1";
                    SqlCommand cmd111 = new SqlCommand(sqlcom111, conn);
                    Double d111 = (Double)cmd111.ExecuteScalar();
                     String sqlcom1111 = "Select henan from lukuang3 where id=1";
                    SqlCommand cmd1111 = new SqlCommand(sqlcom1111, conn);
                    Double d1111 = (Double)cmd1111.ExecuteScalar();
                    arry[0].value = d1;
                    arry[1].value = d11;
                    arry[2].value = d111;
                    arry[3].value = d1111;
                    arry[0].name = "贵州";
                    arry[1].name = "江西";
                    arry[2].name = "福建";
                    arry[3].name = "河南";
                    context.Response.Write(new JavaScriptSerializer().Serialize(arry));
                    break;
                case "1":
                     String sqlcom2 = "Select guizhou from lukuang3 where id=2";//id="+i
                    SqlCommand cmd2 = new SqlCommand(sqlcom2, conn);
                    Double d2 = (Double)cmd2.ExecuteScalar();
                    String sqlcom22 = "Select jiangxi from lukuang3 where id=2";
                    SqlCommand cmd22 = new SqlCommand(sqlcom22, conn);
                    Double d22 = (Double)cmd22.ExecuteScalar();
                    String sqlcom222 = "Select fujian from lukuang3 where id=2";
                    SqlCommand cmd222 = new SqlCommand(sqlcom222, conn);
                    Double d222 = (Double)cmd222.ExecuteScalar();
                     String sqlcom2222 = "Select henan from lukuang3 where id=2";
                    SqlCommand cmd2222 = new SqlCommand(sqlcom2222, conn);
                    Double d2222 = (Double)cmd2222.ExecuteScalar();
                    arry[0].value = d2;
                    arry[1].value = d22;
                    arry[2].value = d222;
                    arry[3].value = d2222;
                    arry[0].name = "贵州";
                    arry[1].name = "江西";
                    arry[2].name = "福建";
                    arry[3].name = "河南";
                    context.Response.Write(new JavaScriptSerializer().Serialize(arry));
                    break;
                case "2":
                    String sqlcom3 = "Select guizhou from lukuang3 where id=3";//id="+i
                    SqlCommand cmd3 = new SqlCommand(sqlcom3, conn);
                    Double d3 = (Double)cmd3.ExecuteScalar();
                    String sqlcom33 = "Select jiangxi from lukuang3 where id=3";
                    SqlCommand cmd33 = new SqlCommand(sqlcom33, conn);
                    Double d33 = (Double)cmd33.ExecuteScalar();
                    String sqlcom333 = "Select fujian from lukuang3 where id=3";
                    SqlCommand cmd333 = new SqlCommand(sqlcom333, conn);
                    Double d333 = (Double)cmd333.ExecuteScalar();
                     String sqlcom3333 = "Select henan from lukuang3 where id=3";
                    SqlCommand cmd3333 = new SqlCommand(sqlcom3333, conn);
                    Double d3333 = (Double)cmd3333.ExecuteScalar();
                    arry[0].value = d3;
                    arry[1].value = d33;
                    arry[2].value = d333;
                    arry[3].value = d3333;
                    arry[0].name = "贵州";
                    arry[1].name = "江西";
                    arry[2].name = "福建";
                    arry[3].name = "河南";
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