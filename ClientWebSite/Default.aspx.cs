using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWebSite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ServiceReference1.MyServiceClient client = new ServiceReference1.MyServiceClient();
            //string text=client.GetData("DATA");
            //Response.Write(text);
        }

        protected void btnGetEmployee_Click(object sender, EventArgs e)
        {
            EmployeeService.EmployeeServiceClient client = new EmployeeService.EmployeeServiceClient();
            EmployeeService.Employee employee= client.GetEmployee(Convert.ToInt32(txtId.Text));
            txtId.Text = employee.Id.ToString();
            txtName.Text = employee.Name;
            txtGender.Text = employee.Gender;
            txtDOB.Text = employee.DateOfBirth.ToString();
        }

        protected void btnSaveEmployee_Click(object sender, EventArgs e)
        {
            EmployeeService.EmployeeServiceClient client = new EmployeeService.EmployeeServiceClient();
            EmployeeService.Employee employee = new EmployeeService.Employee();
            employee.Id = Convert.ToInt32(txtId.Text);
            employee.Gender = txtGender.Text;
            employee.Name = txtName.Text;
            employee.DateOfBirth = Convert.ToDateTime(txtDOB.Text);
            client.SaveEmployee(employee);
        }
    }
}