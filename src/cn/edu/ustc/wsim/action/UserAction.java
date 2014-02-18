package cn.edu.ustc.wsim.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import cn.edu.ustc.wsim.bean.User;
import cn.edu.ustc.wsim.datastructure.OnlineUsers;
import cn.edu.ustc.wsim.enumerates.UserStatus;
import cn.edu.ustc.wsim.service.UserService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3510665676234243989L;
	private Integer id;
	private String email;
	private String password;
	private String confpassword;
	private String oldPassword;
	private String name;
	private UserStatus status;
	
	private String statusStr;
	
	private String searchinfo;
	private List users;
	private List<Boolean> relations;
	
	private UserService userService;
	
	private String errorMsg;
	
	private String result;
	
	
	public String search() {
		if(userService.searchUser(searchinfo) == null || userService.searchUser(searchinfo).size() == 0 )
			return "cannotSearch";
		else {
			User loginUser = userService.getLoginUser();
			this.users = userService.searchUser(searchinfo);
			relations = new ArrayList<Boolean>();
			for (User user : (List<User>)users) {
				if(userService.isFriend(loginUser, user))
					relations.add(true);
				else
					relations.add(false);
//				System.out.println(userService.isFriend(loginUser, user));
			}
			return "searchSuccess";
		}
	}
	

	public String logout() {
		OnlineUsers.removeUser(userService.getLoginUser().getId());
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.remove("user");
		return "userLogout";
	}
	

	
	public String delUser() {
		int intId = id;
		if(userService.del(intId))
			return "delSuccess";
		else {
			errorMsg = "del error";
			return "delError";
		}
	}
	
	public String changePassword() {
		int id = userService.getLoginUser().getId();
		User user = (User) userService.get(id);
		
		if(!user.getPassword().equals(oldPassword)) {
			errorMsg = "old password error";
			return "changePasswordError";
		}
		
		user.setPassword(password);
		if(userService.update(user)) {
			return "changePasswordSuccess";
		} else {
			errorMsg = "change password error";
			return "changePasswordError";
		}
	}
	
	
	//获取枚举类型的status
	private UserStatus getStatus(String statusStr) {
		switch (statusStr) {
		case "busy":	return UserStatus.BUSY;
		case "donotDisturb":	return UserStatus.DONOTDISTURB;
		case "invisible":	return UserStatus.INVISIBLE;
		case "online":	return UserStatus.ONLINE;
		default:	return UserStatus.ONLINE;
		}
	}
	
	
	//修改默认登录状态
	public String changeStatus() {
		int id = userService.getLoginUser().getId();
		User user = (User) userService.get(id);
		status = this.getStatus(statusStr);
		user.setStatus(status);
		if(userService.update(user)) {
			return "changeStatusSuccess";
		} else {
			errorMsg = "change status error";
			return "changeStatusError";
		}
	}
	
	
	//临时修改自己的状态，不更改数据库
	public String changeStatusTemp() {
		User user = userService.getLoginUser();
		status = this.getStatus(statusStr);
		user.setStatus(status);
		
		OnlineUsers.updateUserStatus(userService.getLoginUser().getId(), status);
		result = "{\"result\":\"success\"}";
		return SUCCESS;
	}
	
	
	public String changeName() {
		
		User user = (User) userService.get(id);
		user.setName(name);
		if(userService.update(user)) {
			return "changeNameSuccess";
		} else {
			errorMsg = "change name error";
			return "changeNameError";
		}
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public UserStatus getStatus() {
		return status;
	}

	public void setStatus(UserStatus status) {
		this.status = status;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}

	public String getSearchinfo() {
		return searchinfo;
	}

	public void setSearchinfo(String searchinfo) {
		this.searchinfo = searchinfo;
	}
	
	public List getUsers() {
		return users;
	}

	public void setUsers(List users) {
		this.users = users;
	}

	public List getRelations() {
		return relations;
	}

	public void setRelations(List relations) {
		this.relations = relations;
	}

	public String getConfpassword() {
		return confpassword;
	}

	public void setConfpassword(String confpassword) {
		this.confpassword = confpassword;
	}

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getStatusStr() {
		return statusStr;
	}

	public void setStatusStr(String statusStr) {
		this.statusStr = statusStr;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}



}
