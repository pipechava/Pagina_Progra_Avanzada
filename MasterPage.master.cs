﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string GetActive()//comentario
    {
        return System.IO.Path.GetFileNameWithoutExtension(System.Web.HttpContext.Current.Request.Url.AbsolutePath).ToLower();
    }
}
