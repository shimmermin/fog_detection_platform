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
using System.Data.Common;

namespace echart
{
    public partial class Registe : System.Web.UI.Page
    {
        public static Boolean isDenglu = false;
        protected void Page_Load(object sender, EventArgs e)
        {
           /* if (!isDenglu)
            {
                isDenglu = true;
            }
            else {
                Response.Write(@"<script language=JavaScript>{window.alert('您已登录！');}</script>");
                Response.Redirect("Default.aspx");
            }*/
        }
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            TextBox GetCode = Login1.FindControl("GetCode") as TextBox;//获取登陆控件中验证码文本框值
           
            
                if ( GetCode.Text.ToString().Trim()!="v9am")
                {
                    Response.Write(@"<script language=JavaScript>{window.alert('验证码输入不正确！');}</script>");
                    return;
                }
                string UserLoginName = Login1.UserName.ToString().Trim().Replace("'", "").Replace("=", "");//得到输入的用户名
                string UserLoginPwd = Login1.Password.ToString().Trim().Replace("'", "").Replace("=", "");//得到输入的密码

                string mySql = "select * from [user] where [name]='" + UserLoginName + "' and [loginpwd]='" + UserLoginPwd + "'";
                //下面部署自己的逻辑处理，以下仅供参考
                string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["testConnectionString"].ToString();
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();

                SqlCommand cmd = new SqlCommand(mySql, conn);
                
                try
                {
                  
                    SqlDataReader Rs = cmd.ExecuteReader();
                    if (!Rs.Read())
                    {
                        Response.Write("登录不通过" );
                    }
                    else
                    {
                        Session["UserLoginID"] = UserLoginName;
                        Session["UserLoginPwd"] = UserLoginPwd;
                        Response.Write("登录通过" );
                        Response.Redirect("Default.aspx");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("数据库错误，错误原因：" + ex.Message);
                    Response.End();
                }

            }

        protected void GetCode_TextChanged(object sender, EventArgs e)
        {

        }
        }
    }
