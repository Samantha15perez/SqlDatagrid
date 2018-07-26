using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.IO;


namespace Resume_Website_Project
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Init(object sender, EventArgs e)
        {
            //ignore for now

            StreamWriter logOutput = new StreamWriter(HttpRuntime.AppDomainAppPath + "\\Resources\\AppLog.txt", true);
            logOutput.WriteLine(DateTime.Now.ToString() + ":  " + "Application_Init");
            logOutput.Close();
        }

        protected void Application_Start(object sender, EventArgs e)
        {
            StreamWriter logOutput = new StreamWriter(HttpRuntime.AppDomainAppPath + "\\Resources\\AppLog.txt", true);
            logOutput.WriteLine(DateTime.Now.ToString() + ":  " + "Application_Start");
            logOutput.Close();
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            StreamWriter logOutput = new StreamWriter(HttpRuntime.AppDomainAppPath + "\\Resources\\AppLog.txt", true);
            logOutput.WriteLine(DateTime.Now.ToString() + ":  " + "Session_Start");
            logOutput.Close();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            

            StreamWriter logOutput = new StreamWriter(HttpRuntime.AppDomainAppPath + "\\Resources\\AppLog.txt", true);
            logOutput.WriteLine(DateTime.Now.ToString() + ":  " + "Application_BeginRequest");
            logOutput.Close();
        }

        protected void Application_Error(object sender, EventArgs e)
        {

            Exception ex = Server.GetLastError();

            StreamWriter logOutput = new StreamWriter(HttpRuntime.AppDomainAppPath + "\\Resources\\AppLog.txt", true);
            logOutput.WriteLine(DateTime.Now.ToString() + ":  " + ex.Message);
            logOutput.Close();
        }

        protected void Session_End(object sender, EventArgs e)
        {
            StreamWriter logOutput = new StreamWriter(HttpRuntime.AppDomainAppPath + "\\Resources\\AppLog.txt", true);
            logOutput.WriteLine(DateTime.Now.ToString() + ":  " + "Session_End");
            logOutput.Close();
        }

        protected void Application_End(object sender, EventArgs e)
        {
            StreamWriter logOutput = new StreamWriter(HttpRuntime.AppDomainAppPath + "\\Resources\\AppLog.txt", true);
            logOutput.WriteLine(DateTime.Now.ToString() + ":  " + "Application_End");
            logOutput.Close();
        }

    }
}