﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ASP_Test3
{
    public partial class AddPatient : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlDataAdapter adapter = null;
        private DataSet ds = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (con= new SqlConnection(ConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString))
            {
                using (adapter=new SqlDataAdapter(" DoctorName from PatientInformation", con))
                {
                   // ds=new DataSet();
                   // adapter.Fill(ds, "DoctorName");
                   // DataTable dt = ds.Tables["PatientInformation"];
                   
                    //LblDoctor.DataBind();

                }
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchPatient.aspx");
        }
    }
}
