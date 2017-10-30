package exception;

public class LoginFailException extends Exception{
	public LoginFailException() {}
	public LoginFailException(String failMessage) {
		super(failMessage); //get method로 빼올 수 있다.
	}
}
