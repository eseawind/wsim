package cn.edu.ustc.wsim.websocket;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;

import org.apache.catalina.websocket.MessageInbound;
import org.apache.catalina.websocket.WsOutbound;

import cn.edu.ustc.wsim.datastructure.OnlineUsers;

public class WebSocketMessageInbound extends MessageInbound {
	
	//当前连接用户
	private final Integer id;
	
	public WebSocketMessageInbound(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return this.id;
	}

	//建立连接的触发的事件
	@Override
	protected void onOpen(WsOutbound outbound) {
//		// 触发连接事件，在连接池中添加连接
//		JSONObject result = new JSONObject();
//		result.element("type", "user_join");
//		result.element("user", this.user);
//		//向所有在线用户推送当前用户上线的消息
//		WebSocketMessageInboundPool.sendMessage(result.toString());
//		
//		result = new JSONObject();
//		result.element("type", "get_online_user");
//		result.element("list", WebSocketMessageInboundPool.getOnlineUser());
//		//向连接池添加当前的连接对象
//		WebSocketMessageInboundPool.addMessageInbound(this);
//		//向当前连接发送当前在线用户的列表
//		WebSocketMessageInboundPool.sendMessageToUser(this.user, result.toString());
		
		
		WebSocketMessageInboundPool.addMessageInbound(this);
	}
	
	
	@Override
	protected void onClose(int status) {
//		// 触发关闭事件，在连接池中移除连接
//		WebSocketMessageInboundPool.removeMessageInbound(this);
//		JSONObject result = new JSONObject();
//		result.element("type", "user_leave");
//		result.element("user", this.user);
//		//向在线用户发送当前用户退出的消息
//		WebSocketMessageInboundPool.sendMessage(result.toString());
		
		
		
		//删除该在线用户
		OnlineUsers.removeUser(id);
		
		WebSocketMessageInboundPool.removeMessageInbound(this);
	}
	
	
	@Override
	protected void onBinaryMessage(ByteBuffer arg0) throws IOException {
		throw new UnsupportedOperationException("Binary message not supported.");
	}

	
	//客户端发送消息到服务器时触发事件
	@Override
	protected void onTextMessage(CharBuffer arg0) throws IOException {
		// TODO Auto-generated method stub
		
		//接受消息，发送消息，存数据库，
	}

}