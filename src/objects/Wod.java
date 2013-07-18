package src.objects;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.HashMap;

import src.utils.DBManager;

public class Wod {
	private int WODID= 0;
	private String Name= "";
	private String Type= "";
	private int Rounds= 0;
	private Date date = null;
	private int Ex1ID= 0; 
	private int  Ex1Reps= 0;
	private int  Ex1RX= 0;
	private int  Ex2ID= 0;
	private int  Ex2Reps= 0;
	private int  Ex2RX= 0;
	private int  Ex3ID= 0;
	private int  Ex3Reps= 0;
	private int  Ex3RX= 0;
	private int  Ex4ID= 0;
	private int  Ex4Reps= 0;
	private int  Ex4RX= 0;
	private int  Ex5ID= 0;
	private int  Ex5Reps= 0;
	private int  Ex5RX= 0;
	private int  Ex6ID= 0;
	private int  Ex6Reps= 0;
	private int  Ex6RX= 0;
	private int  Ex7ID= 0;
	private int  Ex7Reps= 0;
	private int  Ex7RX= 0;
	private int  Ex8ID= 0;
	private int  Ex8Reps= 0;
	private int  Ex8RX= 0;
	private int  Ex9ID= 0;
	private int  Ex9Reps= 0;
	private int  Ex9RX= 0;
	private int  Ex10ID= 0;
	private int  Ex10Reps= 0;
	private int  Ex10RX = 0;
	
	public Wod getWod(Date date){
		Wod wod = new Wod();
		Statement st = null;
		ResultSet rs = null;
		Connection conn = null;
		DBManager db = new DBManager();
		java.sql.Date sqlDate = new java.sql.Date(date.getTime());
        wod.setDate(sqlDate);

		String query = "Select * from wod WHERE Date='" + sqlDate +"'";
		
		try{
			conn = db.connect();
			st = conn.createStatement();
	        rs = st.executeQuery(query);
	        
	        while(rs.next()){
	        	wod.setName(rs.getString("Name"));
	        	wod.setRounds(rs.getInt("Rounds"));
	        	wod.setType(rs.getString("Type"));
	        	wod.setWODID(rs.getInt("WODID"));
	        	wod.setEx1ID(rs.getInt("Ex1ID"));
	        	wod.setEx1Reps(rs.getInt("Ex1Reps"));
	        	wod.setEx1RX(rs.getInt("Ex1RX"));
	        	
	        	for(int x = 2;  x < 11; x++){
	        		int j = rs.getInt("Ex" + x + "ID");
	        		String reps = "Ex" + x + "Reps";
	        		String RX = "Ex" + x + "RX";
	        		
	        		if(!rs.wasNull()){
	        			switch(x){
		        			case 2:
		        				wod.setEx2ID(j);
		        				wod.setEx2Reps(rs.getInt(reps));
		        				wod.setEx2RX(rs.getInt(RX));
		        				break;
		        			case 3:
		        				wod.setEx3ID(j);
		        				wod.setEx3Reps(rs.getInt(reps));
		        				wod.setEx3RX(rs.getInt(RX));
		        				break;
		        			case 4:
		        				wod.setEx4ID(j);
		        				wod.setEx4Reps(rs.getInt(reps));
		        				wod.setEx4RX(rs.getInt(RX));
		        				break;
		        			case 5:
		        				wod.setEx5ID(j);
		        				wod.setEx5Reps(rs.getInt(reps));
		        				wod.setEx5RX(rs.getInt(RX));
		        				break;
		        			case 6:
		        				wod.setEx6ID(j);
		        				wod.setEx6Reps(rs.getInt(reps));
		        				wod.setEx6RX(rs.getInt(RX));
		        				break;
		        			case 7:
		        				wod.setEx7ID(j);
		        				wod.setEx7Reps(rs.getInt(reps));
		        				wod.setEx7RX(rs.getInt(RX));
		        				break;
		        			case 8:
		        				wod.setEx8ID(j);
		        				wod.setEx8Reps(rs.getInt(reps));
		        				wod.setEx8RX(rs.getInt(RX));
		        				break;
		        			case 9:
		        				wod.setEx9ID(j);
		        				wod.setEx9Reps(rs.getInt(reps));
		        				wod.setEx9RX(rs.getInt(RX));
		        				break;
		        			case 10:
		        				wod.setEx10ID(j);
		        				wod.setEx10Reps(rs.getInt(reps));
		        				wod.setEx10RX(rs.getInt(RX));
		        				break;
	        			}//switch
	        		}else{
	        			break;
	        		}
	        	}
	        }
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return wod;
	}
	
	public Wod getWod(String name){
		Wod wod = new Wod();
		Statement st = null;
		ResultSet rs = null;
		Connection conn = null;
		DBManager db = new DBManager();
		wod.setName(name);
		
		String query = "Select * from wod WHERE Name='" + name +"'";
		
		try{
			conn = db.connect();
			st = conn.createStatement();
	        rs = st.executeQuery(query);
	        
	        while(rs.next()){
	        	wod.setDate(rs.getDate("Date"));
	        	wod.setRounds(rs.getInt("Rounds"));
	        	wod.setType(rs.getString("Type"));
	        	wod.setWODID(rs.getInt("WODID"));
	        	wod.setEx1ID(rs.getInt("Ex1ID"));
	        	wod.setEx1Reps(rs.getInt("Ex1Reps"));
	        	wod.setEx1RX(rs.getInt("Ex1RX"));
	        	
	        	for(int x = 2;  x < 11; x++){
	        		int j = rs.getInt("Ex" + x + "ID");
	        		String reps = "Ex" + x + "Reps";
	        		String RX = "Ex" + x + "RX";
	        		
	        		if(!rs.wasNull()){
	        			switch(x){
		        			case 2:
		        				wod.setEx2ID(j);
		        				wod.setEx2Reps(rs.getInt(reps));
		        				wod.setEx2RX(rs.getInt(RX));
		        				break;
		        			case 3:
		        				wod.setEx3ID(j);
		        				wod.setEx3Reps(rs.getInt(reps));
		        				wod.setEx3RX(rs.getInt(RX));
		        				break;
		        			case 4:
		        				wod.setEx4ID(j);
		        				wod.setEx4Reps(rs.getInt(reps));
		        				wod.setEx4RX(rs.getInt(RX));
		        				break;
		        			case 5:
		        				wod.setEx5ID(j);
		        				wod.setEx5Reps(rs.getInt(reps));
		        				wod.setEx5RX(rs.getInt(RX));
		        				break;
		        			case 6:
		        				wod.setEx6ID(j);
		        				wod.setEx6Reps(rs.getInt(reps));
		        				wod.setEx6RX(rs.getInt(RX));
		        				break;
		        			case 7:
		        				wod.setEx7ID(j);
		        				wod.setEx7Reps(rs.getInt(reps));
		        				wod.setEx7RX(rs.getInt(RX));
		        				break;
		        			case 8:
		        				wod.setEx8ID(j);
		        				wod.setEx8Reps(rs.getInt(reps));
		        				wod.setEx8RX(rs.getInt(RX));
		        				break;
		        			case 9:
		        				wod.setEx9ID(j);
		        				wod.setEx9Reps(rs.getInt(reps));
		        				wod.setEx9RX(rs.getInt(RX));
		        				break;
		        			case 10:
		        				wod.setEx10ID(j);
		        				wod.setEx10Reps(rs.getInt(reps));
		        				wod.setEx10RX(rs.getInt(RX));
		        				break;
	        			}//switch
	        		}else{
	        			break;
	        		}
	        	}
	        }
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return wod;

	}
	
	public HashMap<Integer, String> getAllExercises(){
		HashMap<Integer, String> exercise = new HashMap<Integer, String>();
		
		Statement st = null;
		ResultSet rs = null;
		Connection conn = null;
		DBManager db = new DBManager();
		String query = "SELECT * FROM exercises ORDER BY ExerciseID";
		try{
			conn = db.connect();
			st = conn.createStatement();
			rs = st.executeQuery(query);
			
			while(rs.next()){
				exercise.put(rs.getInt("ExerciseID"), rs.getString("Name"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			
		}
		
		return exercise;
	}
	
	public static StringBuffer generateSelect(){
		StringBuffer sb = new StringBuffer();
		Statement st = null;
		ResultSet rs = null;
		Connection conn = null;
		DBManager db = new DBManager();
		
		String query = "SELECT Date FROM wod WHERE 1=1 ORDER BY Date";
		sb.append("<select>");
		
		try {
			conn = db.connect();
			st = conn.createStatement();
			rs = st.executeQuery(query);
			
			while(rs.next()){
				sb.append("<option value=\""); sb.append(rs.getDate("Date")); sb.append("\">");
				sb.append(rs.getDate("Date"));
				sb.append("</option>");
			}
			
		} catch (SQLException e) {
			System.out.println("SQL EXCEPTION BITCH!");
			e.printStackTrace();
		}
		
		sb.append("</select>");

			
		return sb;
	}
	
	/* Getters and setters */
	public int getEx10RX() {
		return Ex10RX;
	}
	public void setEx10RX(int ex10RX) {
		Ex10RX = ex10RX;
	}
	public int getEx10Reps() {
		return Ex10Reps;
	}
	public void setEx10Reps(int ex10Reps) {
		Ex10Reps = ex10Reps;
	}
	public int getWODID() {
		return WODID;
	}
	public void setWODID(int wODID) {
		WODID = wODID;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public int getRounds() {
		return Rounds;
	}
	public void setRounds(int rounds) {
		Rounds = rounds;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getEx1ID() {
		return Ex1ID;
	}
	public void setEx1ID(int ex1ID) {
		Ex1ID = ex1ID;
	}
	public int getEx1Reps() {
		return Ex1Reps;
	}
	public void setEx1Reps(int ex1Reps) {
		Ex1Reps = ex1Reps;
	}
	public int getEx1RX() {
		return Ex1RX;
	}
	public void setEx1RX(int ex1RX) {
		Ex1RX = ex1RX;
	}
	public int getEx2ID() {
		return Ex2ID;
	}
	public void setEx2ID(int ex2ID) {
		Ex2ID = ex2ID;
	}
	public int getEx2Reps() {
		return Ex2Reps;
	}
	public void setEx2Reps(int ex2Reps) {
		Ex2Reps = ex2Reps;
	}
	public int getEx2RX() {
		return Ex2RX;
	}
	public void setEx2RX(int ex2RX) {
		Ex2RX = ex2RX;
	}
	public int getEx3ID() {
		return Ex3ID;
	}
	public void setEx3ID(int ex3ID) {
		Ex3ID = ex3ID;
	}
	public int getEx3Reps() {
		return Ex3Reps;
	}
	public void setEx3Reps(int ex3Reps) {
		Ex3Reps = ex3Reps;
	}
	public int getEx3RX() {
		return Ex3RX;
	}
	public void setEx3RX(int ex3RX) {
		Ex3RX = ex3RX;
	}
	public int getEx4ID() {
		return Ex4ID;
	}
	public void setEx4ID(int ex4ID) {
		Ex4ID = ex4ID;
	}
	public int getEx4Reps() {
		return Ex4Reps;
	}
	public void setEx4Reps(int ex4Reps) {
		Ex4Reps = ex4Reps;
	}
	public int getEx4RX() {
		return Ex4RX;
	}
	public void setEx4RX(int ex4RX) {
		Ex4RX = ex4RX;
	}
	public int getEx5ID() {
		return Ex5ID;
	}
	public void setEx5ID(int ex5ID) {
		Ex5ID = ex5ID;
	}
	public int getEx5Reps() {
		return Ex5Reps;
	}
	public void setEx5Reps(int ex5Reps) {
		Ex5Reps = ex5Reps;
	}
	public int getEx5RX() {
		return Ex5RX;
	}
	public void setEx5RX(int ex5RX) {
		Ex5RX = ex5RX;
	}
	public int getEx6ID() {
		return Ex6ID;
	}
	public void setEx6ID(int ex6ID) {
		Ex6ID = ex6ID;
	}
	public int getEx6Reps() {
		return Ex6Reps;
	}
	public void setEx6Reps(int ex6Reps) {
		Ex6Reps = ex6Reps;
	}
	public int getEx6RX() {
		return Ex6RX;
	}
	public void setEx6RX(int ex6RX) {
		Ex6RX = ex6RX;
	}
	public int getEx7ID() {
		return Ex7ID;
	}
	public void setEx7ID(int ex7ID) {
		Ex7ID = ex7ID;
	}
	public int getEx7Reps() {
		return Ex7Reps;
	}
	public void setEx7Reps(int ex7Reps) {
		Ex7Reps = ex7Reps;
	}
	public int getEx7RX() {
		return Ex7RX;
	}
	public void setEx7RX(int ex7RX) {
		Ex7RX = ex7RX;
	}
	public int getEx8ID() {
		return Ex8ID;
	}
	public void setEx8ID(int ex8ID) {
		Ex8ID = ex8ID;
	}
	public int getEx8Reps() {
		return Ex8Reps;
	}
	public void setEx8Reps(int ex8Reps) {
		Ex8Reps = ex8Reps;
	}
	public int getEx8RX() {
		return Ex8RX;
	}
	public void setEx8RX(int ex8RX) {
		Ex8RX = ex8RX;
	}
	public int getEx9Reps() {
		return Ex9Reps;
	}
	public void setEx9Reps(int ex9Reps) {
		Ex9Reps = ex9Reps;
	}
	public int getEx9ID() {
		return Ex9ID;
	}
	public void setEx9ID(int ex9ID) {
		Ex9ID = ex9ID;
	}
	public int getEx10ID() {
		return Ex10ID;
	}
	public void setEx10ID(int ex10ID) {
		Ex10ID = ex10ID;
	}
	public int getEx9RX() {
		return Ex9RX;
	}
	public void setEx9RX(int ex9RX) {
		Ex9RX = ex9RX;
	}

}
