using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BasicWebFormApplication
{
    public partial class Employees1 : System.Web.UI.Page
    {
        NORTHWNDEntities db;

        public Employees1()
        {
            db = new NORTHWNDEntities();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                return;
            }
            
            GetOrders();
        }

        void GetOrders(string customerID = " ")
        {
            if (customerID == " ")
            {
                
            }
            else
            {

                gvCustomers.DataSource = db.Orders.Where(a => a.CustomerID == customerID).ToList();
            }

            gvCustomers.DataBind();
        }

       
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var calisanlar = db.Employees.Select(a => new
            {
                KullaniciAdi = a.FirstName + "." + a.LastName,
                Sifre=a.LastName+"."+a.BirthDate.Value.Year
            }).ToList();

            

            foreach (var item in calisanlar)
            {
                if (txtKullaniciAdi.Text==item.KullaniciAdi)
                {
                    if (txtPassword.Text==item.Sifre)
                    {
                        ddlCustomers.DataSource = db.Customers.ToList();
                        ddlCustomers.DataTextField = "CompanyName";
                        ddlCustomers.DataValueField = "CustomerID";
                        ddlCustomers.DataBind();
                        return;
                    }
                    else
                    {
                        lblSonuc.Text = "şifre hatalı";
                        return;
                    }

                }
                else
                {
                    lblSonuc.Text = "Kullanıcı Adı Hatalı";
                    return;
                }
            }
                
        }

        protected void ddlCustomers_SelectedIndexChanged(object sender, EventArgs e)
        {
          string customerID = ddlCustomers.SelectedValue.ToString();
                GetOrders(customerID);
           
        }
    }
}