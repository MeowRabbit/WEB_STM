<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.sql.*"%>
<%
	String SendMessage = "";
	int recvNum = 0;
	try {
		recvNum = Integer.parseInt(request.getParameter("num"));
	
		//DB 연결//
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = null;
	
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection("jdbc:sqlserver://airble.database.windows.net:1433;DatabaseName=airble", "박기범", "qkrrlqja789!.");
			try {
				stmt = conn.createStatement();
	
				try {
					
					switch (recvNum) {
					
					case 1:
					{
						try{
							sql = "select * from airble_test_db";
							rs = stmt.executeQuery(sql);
							while(rs.next()){
								out.print(rs.getString("mac"));
								out.print("**");
							}
							System.out.println("case 1");
						}catch(Exception e){
							out.print("1234");
						}
					}
					break;
					
					case 2:
					{
						try{
							String mac = request.getParameter("mac");
							String ssid = request.getParameter("ssid");
							String fine_dust = request.getParameter("fine_dust");
							String co = request.getParameter("co");
							String co2 = request.getParameter("co2");
							String vocs = request.getParameter("vocs");
							String temp = request.getParameter("temp");
							String humi = request.getParameter("humi");
							String wifi_ssid = request.getParameter("wifi_ssid");
							
							sql = "select * from airble_test_db where mac = '" + mac + "'";
							rs = stmt.executeQuery(sql);
							if(rs.next()){
								sql = "update airble_test_db set "
										+ "ssid = '" + ssid + "', "
										+ "fine_dust = " + fine_dust + ", "
										+ "co = " + co + ", "
										+ "co2 = " + co2 + ", "
										+ "vocs = " + vocs + ", "
										+ "temp = " + temp + ", "
										+ "humi = " + humi + ", "
										+ "wifi_ssid = '" + wifi_ssid + "' "
										+ "where mac = '" + mac + "'";
								stmt.executeUpdate(sql);		
										
							}else{
								sql = "insert into airble_test_db values('"
										+ mac + "','"
										+ ssid + "',"
										+ fine_dust + ","
										+ co + ","
										+ co2 + ","
										+ vocs + ","
										+ temp + ","
										+ humi + ",'"
										+ wifi_ssid + "')";
								stmt.executeUpdate(sql);
								
							}
							System.out.println(sql);
						}catch(Exception e){
							//out.print("1234");
							System.out.println(sql);
						}
					}
					break;
	
					case 11: // 매장 등록
					{
						try {
							String spot_passwd = request.getParameter("spot_passwd");
							String spot_name = request.getParameter("spot_name");
							String spot_classify = request.getParameter("spot_classify");
							String spot_zipcode = request.getParameter("spot_zipcode");
							String spot_address1 = request.getParameter("spot_address1");
							String spot_address2 = request.getParameter("spot_address2");
							double spot_lati = Double.parseDouble(
									String.format("%.7f", Double.parseDouble(request.getParameter("spot_lati"))));
							double spot_long = Double.parseDouble(
									String.format("%.7f", Double.parseDouble(request.getParameter("spot_long"))));
	
							sql = "insert into spot values('S'||to_char(sysdate,'yyyy')||lpad(spot_seq.nextval,4,'0'),'"
									+ spot_passwd + "','" + spot_name + "'," + spot_classify + "," + spot_zipcode + ",'"
									+ spot_address1 + "','" + spot_address2 + "', " + spot_lati + ", " + spot_long + ")";
			
							System.out.println(sql);
							stmt.executeUpdate(sql);
	
							sql = "select * from spot where spot_passwd = '" + spot_passwd + "' and spot_name = '"
									+ spot_name + "' and spot_lati = " + spot_lati + " and spot_long = " + spot_long
									+ " order by spot_code desc";
	
							rs = stmt.executeQuery(sql);
							rs.next();
							System.out.println(sql);
	
							out.print("111/" + rs.getString("spot_code"));
							rs.close();
	
						} catch (Exception e) {
							out.print("112");
						}
					}
					break;
	
					case 12: // 매장정보 불러오기
					{
	
						String spot_code = request.getParameter("spot_code");
						String spot_passwd = request.getParameter("spot_passwd");
						sql = "select * from spot where spot_code = '" + spot_code + "'";
						rs = stmt.executeQuery(sql);
						if (rs.next()) {
	
							if (spot_passwd.equals(rs.getString("spot_passwd"))) {
	
								String spot_name = rs.getString("spot_name");
								int spot_classify = rs.getInt("spot_classify");
								int spot_zipcode = rs.getInt("spot_zipcode");
								String spot_address1 = rs.getString("spot_address1");
								String spot_address2 = rs.getString("spot_address2");
								double spot_lati = rs.getDouble("spot_lati");
								double spot_long = rs.getDouble("spot_long");
			
								//			0	매장명		/		1  분류			/		2 우편번호		/		3 기본주소		/ 		4 상세주소 		/		5 lati		/	6 long	
								SendMessage = "121//" + spot_name + "/" + spot_classify + "/" + spot_zipcode + "/" + spot_address1
										+ "/" + spot_address2 + "/" + spot_lati + "/" + spot_long; // 각 변수들은 '/' 로 구분
								out.print(SendMessage);
	
							} else {
								out.print("122");
							}
						} else {
							out.print("122");
						}
						rs.close();
		
					}
					break;
	
					case 13: // 매장  수정
					{
						try {
							String spot_code = request.getParameter("spot_code");
							String spot_name = request.getParameter("spot_name");
							String spot_classify = request.getParameter("spot_classify");
							String spot_zipcode = request.getParameter("spot_zipcode");
							String spot_address1 = request.getParameter("spot_address1");
							String spot_address2 = request.getParameter("spot_address2");
							double spot_lati = Double.parseDouble(
									String.format("%.7f", Double.parseDouble(request.getParameter("spot_lati"))));
							double spot_long = Double.parseDouble(
									String.format("%.7f", Double.parseDouble(request.getParameter("spot_long"))));
		
							String new_passwd = request.getParameter("new_passwd");
		
							if (new_passwd.length() == 0) {
								sql = "update spot set spot_name = '" + spot_name + "', spot_classify = " + spot_classify
										+ ", spot_zipcode = " + spot_zipcode + ", spot_address1 = '" + spot_address1
										+ "' , spot_address2 = '" + spot_address2 + "', spot_lati = '" + spot_lati
										+ "', spot_long = '" + spot_long + "' where spot_code = '" + spot_code + "'";
	
							} else {
								sql = "update spot set spot_passwd = '" + new_passwd + "', spot_name = '" + spot_name
										+ "', spot_classify = " + spot_classify + ", spot_zipcode = " + spot_zipcode
										+ ", spot_address1 = '" + spot_address1 + "' , spot_address2 = '" + spot_address2
										+ "', spot_lati = '" + spot_lati + "', spot_long = '" + spot_long
										+ "' where spot_code = '" + spot_code + "'";
	
							}
	
							stmt.executeUpdate(sql);
							out.print("131");
						} catch (Exception e) {
							out.print("132");
						}
					}
					break;
	
			/* 삭제는 보류
			case 14 :		//매장 정보 삭제
			{
				String member_id = request.getParameter("member_id");
				String member_pwd  = request.getParameter("member_pwd");
				sql = "select * from androidpj_member where member_id = '" + member_id + "'";
				rs = stmt.executeQuery(sql);
				rs.next();
				if(member_pwd.equals(rs.getString("member_pwd"))){
					sql = "delete androidpj_member where member_id = '" + member_id + "'";
					stmt.executeUpdate(sql);
					out.print("회원탈퇴가 완료 되었습니다.");
				}else{
					out.print("비밀번호가 틀렸습니다.");
				}
				rs.close();
			}
			break;
			*/
	
					default:
						out.print("등록된 코드가 없는대요? : 받은 코드값  = " + recvNum);
						break;
					}
					stmt.close();
					conn.close();
				} catch (Exception e) {
					out.print("에러코드 : " + recvNum);
				}
			} catch (Exception e) {
		System.out.print("오라클  Select 오류!");
			}
		} catch (Exception e) {
			System.out.print("오라클 연동 실패!");
		}
	} catch (Exception e) {
		System.out.print("서버 및 오라클 오류!");
	} finally {
	
	}
%>