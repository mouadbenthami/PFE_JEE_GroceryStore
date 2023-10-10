package backOffice.dao.admin;

import backOffice.metier.Admin;

public interface IAdminDao 
{
	public void change(Admin a);
	public Admin check(String email,String passWord);
}
