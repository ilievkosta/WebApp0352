﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp0352
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {

                LabelUser.Text = "Hello user " + HttpContext.Current.User.Identity.Name;
            }
            else LabelUser.Text = "There is no loggedin user";


            }
    }
}