package db;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@SuppressWarnings("deprecation")
public class CLobBlob {

	public void updateLob(String data) throws Exception {
		Connection con = getConnection();
		PreparedStatement ps = con
				.prepareStatement(" insert into PICTURE(image,resume) values(?,?) ");
		// 通过oralce.sql.BLOB/CLOB.empty_lob()构造空Blob/Clob对象
		ps.setBlob(1, oracle.sql.BLOB.empty_lob());
		ps.setClob(2, oracle.sql.CLOB.empty_lob());

		ps.executeUpdate();
		ps.close();

		// 再次对读出Blob/Clob句柄
		ps = con
				.prepareStatement(" select image,resume from PICTURE where id=? for update ");
		ps.setInt(1, 100);

		ResultSet rs = ps.executeQuery();
		rs.next();

		oracle.sql.BLOB imgBlob = (oracle.sql.BLOB) rs.getBlob(1);
		oracle.sql.CLOB resClob = (oracle.sql.CLOB) rs.getClob(2);

		// 将二进制数据写入Blob
		FileInputStream inStream = new FileInputStream(" c://image.jpg ");
		OutputStream outStream = imgBlob.getBinaryOutputStream();

		byte[] buf = new byte[10240];
		int len = inStream.read(buf);
		while (len > 0) {
			outStream.write(buf, 0, len);
			len = inStream.read(buf);
		}
		inStream.close();
		outStream.close();

		// 将字符串写入Clob
		resClob.putString(1, " this is a clob ");

		// 再将Blob/Clob字段更新到数据库
		ps = con
				.prepareStatement(" update PICTURE set image=? and resume=? where id=? ");
		ps.setBlob(1, imgBlob);
		ps.setClob(2, resClob);
		ps.setInt(3, 100);

		ps.executeUpdate();
		ps.close();
	}

	public void putClob(String data) throws Exception {
		// 获得数据库连接
		Connection con = getConnection();
		con.setAutoCommit(false);
		Statement st = con.createStatement();
		// 插入一个空对象empty_clob()
		st
				.executeUpdate("insert into TESTCLOB (ID, NAME, CLOBATTR) values (1, 'thename', empty_clob())");
		// 锁定数据行进行更新，注意“for update”语句
		ResultSet rs = st
				.executeQuery("select CLOBATTR from TESTCLOB where ID=1 for update");
		if (rs.next()) {
			// 得到java.sql.Clob对象后强制转换为oracle.sql.CLOB
			oracle.sql.CLOB clob = (oracle.sql.CLOB) rs.getClob("CLOBATTR");
			Writer outStream = clob.getCharacterOutputStream();
			// data是传入的字符串，定义：String data
			char[] c = data.toCharArray();
			outStream.write(c, 0, c.length);
			outStream.flush();
			outStream.close();
		}
		con.commit();
		con.close();
	}

	public void putBlob(byte[] data) throws Exception {
		// 获得数据库连接
		Connection con = getConnection();
		con.setAutoCommit(false);
		Statement st = con.createStatement();
		// 插入一个空对象empty_blob()
		st
				.executeUpdate("insert into TESTBLOB (ID, NAME, BLOBATTR) values (1, 'thename', empty_blob())");
		// 锁定数据行进行更新，注意“for update”语句
		ResultSet rs = st
				.executeQuery("select BLOBATTR from TESTBLOB where ID=1 for update");
		if (rs.next()) {
			// 得到java.sql.Blob对象后强制转换为oracle.sql.BLOB
			oracle.sql.BLOB blob = (oracle.sql.BLOB) rs.getBlob("BLOBATTR");
			OutputStream outStream = blob.getBinaryOutputStream();
			// data是传入的byte数组，定义：byte[] data
			outStream.write(data, 0, data.length);
			outStream.flush();
			outStream.close();
		}
		con.commit();
		con.close();
	}

	public void getBlob() throws Exception {
		byte[] data;
		// 获得数据库连接
		Connection con = getConnection();
		con.setAutoCommit(false);
		Statement st = con.createStatement();
		// 不需要“for update”
		ResultSet rs = st
				.executeQuery("select BLOBATTR from TESTBLOB where ID=1");
		if (rs.next()) {
			java.sql.Blob blob = rs.getBlob("BLOBATTR");
			InputStream inStream = blob.getBinaryStream();
			// data是读出并需要返回的数据，类型是byte[]
			data = new byte[inStream.available()];
			inStream.read(data);
			inStream.close();
		}
		con.commit();
		con.close();
	}

	public void getClob() throws Exception {
		// 获得数据库连接
		Connection con = getConnection();
		con.setAutoCommit(false);
		Statement st = con.createStatement();
		// 不需要“for update”
		ResultSet rs = st
				.executeQuery("select CLOBATTR from TESTCLOB where ID=1");
		if (rs.next()) {
			Clob clob = rs.getClob(1);
			if (clob != null) {
				char buf[] = new char[(int) clob.length()];
				Reader reader = rs.getClob(1).getCharacterStream();
				;
				try {
					reader.read(buf);
					;
				} catch (IOException e) {
					throw new SQLException();
				}
			}
		}
		con.commit();
		con.close();
	}

	private Connection getConnection() {
		return null;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
