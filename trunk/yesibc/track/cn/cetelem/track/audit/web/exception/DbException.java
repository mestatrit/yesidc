package cn.cetelem.track.audit.web.exception;

public class DbException extends Exception {
	
	private static final long serialVersionUID = 4050482305178810162L;

	/**
     * Constructor for DbException.
     *
     * @param message
     */
    public DbException(String message) {
        super(message);
    }
    
    public DbException(String message, Throwable cause) {
        super(message, cause);
    }

}