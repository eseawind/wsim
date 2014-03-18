package cn.edu.ustc.wsim.dao;

import java.util.Date;
import java.util.List;

import cn.edu.ustc.wsim.bean.Group;
import cn.edu.ustc.wsim.bean.GroupMessage;
import cn.edu.ustc.wsim.util.page.Page;

public interface GroupMessageDao extends BaseDao {
	
	//获取某群组的聊天记录
	public List<GroupMessage> getGroupMessages(Group group);
	
	
	public Long countGroupMessagesByTime(Group group, Date beginTime, Date endTime);

	
	//查询群组聊天记录
	public List<GroupMessage> getGroupMessagesByTime(Group group, Date beginTime, Date endTime, Page page);

}
