package test;
import junit.framework.*;
import junit.textui.TestRunner;
import mypack.BookDB;
import java.sql.*;

public class TestBS extends TestCase {
	public TestBS(String name) {
		super(name);
	}
	
	public void testGetNumberOfBooks() {
		BookDB bookdb = null;
		try {
			bookdb = new BookDB();
		} catch(Exception e) {
			e.printStackTrace();
		}
		int count = 0;
		try {
			count = bookdb.getNumberOfBooks();
		} catch(Exception e) {
			e.printStackTrace();
		}
		assertTrue(6==count);
	}
	
	public void testBuyBook() {
		BookDB bookdb = null;
		String bookID = "201";
		int buyNum = 33;
		int preNum = 0;
		int nowNum = 0;
		Connection con = null;
		try {
			bookdb = new BookDB();
			con = bookdb.getConnection();
		} catch(Exception e) {
			e.printStackTrace();
		}
		try {
			preNum = bookdb.getNumberOfBook(bookID);
			bookdb.buyBook(bookID,buyNum,con);
			nowNum = bookdb.getNumberOfBook(bookID);
		} catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println(preNum+" "+nowNum);
		assertTrue(preNum+buyNum == nowNum);
	}
	
	public static Test suite() {
		TestSuite suite = new TestSuite();
		suite.addTest(new TestBS("testGetNumberOfBooks"));
		suite.addTest(new TestBS("testBuyBook"));
		return suite;
	}
	
	public static void main(String[] args) {
		Test suite = TestBS.suite();
		new TestRunner().run(suite);
		return;
	}
}



















