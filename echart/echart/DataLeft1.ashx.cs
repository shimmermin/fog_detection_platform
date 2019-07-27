using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace echart
{
    /// <summary>
    /// DataLeft1 的摘要说明
    /// </summary>
    public class DataLeft1 : IHttpHandler
    {
        private static char[] constant =   
      {   
        '0','1','2'
        
      };
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            System.Text.StringBuilder newRandom = new System.Text.StringBuilder(3);
            Random rd = new Random();
            newRandom.Append(constant[rd.Next(3)]);
            switch (newRandom.ToString())
            {
                case "0":
                   
                    context.Response.Write(0);
                    break;
                case "1":
                   
                    context.Response.Write(1);
                    break;
                case "2":
                   
                    context.Response.Write(2);
                    break;

                default:
                    break;
            }
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