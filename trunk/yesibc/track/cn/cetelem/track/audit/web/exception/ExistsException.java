package cn.cetelem.track.audit.web.exception;

public class ExistsException extends Exception {
	
	private static final long serialVersionUID = 4050482305178810162L;

	/**
     * Constructor for ExistsException.
     *
     * @param message
     */
    public ExistsException(String message) {
        super(message);
    }
    
    public ExistsException(String message, Throwable cause) {
        super(message, cause);
    }
}
