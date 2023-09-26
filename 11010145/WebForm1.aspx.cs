using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace _11010145
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "請填訂單...";
            Label1.ForeColor = Color.Red;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.ForeColor =Color.Blue;
            Label2.ForeColor = Color.Blue;

            string z = "";
            string s = "";
            int count_s = CheckBoxList1.Items.Count;
            int count_z = RadioButtonList1.Items.Count;

            for (int i = 0; i < count_z; i++) 
            {
                if (RadioButtonList1.Items[i].Selected) 
                {
                    z +=" " + RadioButtonList1.Items[i].Text;
                    
                }
                
            }

            int c = 0;
            for (int a = 0; a < count_s; a++) //計算已選擇的CheckBox
            {
                if (CheckBoxList1.Items[a].Selected)
                {
                    c++;
                }
            }

            for (int i = 0; i < count_s; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    s += CheckBoxList1.Items[i].Text;
                    if (c - 1 > 0)
                    {
                        s += ",";
                        c--;
                    }  
                }
            }
            
            Label1.Text =DropDownList1.SelectedValue+" "+TextBox1.Text+"訂購的是 "+z;
            Label2.Text ="附餐有："+s;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DropDownList1.SelectedIndex = 0;
            TextBox1.Text = "";
            RadioButtonList1.SelectedIndex =0;
            CheckBoxList1.ClearSelection();
            Label1.ForeColor = Color.Red;
            Label1.Text = "請填訂單...";
            Label2.Text = "";
        }
    }
}