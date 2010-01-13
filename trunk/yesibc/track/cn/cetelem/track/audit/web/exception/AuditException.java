package cn.cetelem.track.audit.web.exception;

/**
 * @author	<a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version	1.0
 * @Creationdate:Dec 1, 2008 12:26:50 PM
 */

public class AuditException extends Exception {

	private static final long serialVersionUID = 1L;

    /**
     * Default constructor.
     */
    public AuditException() {
    	super();
    }


    /**
     * The constructor with a reason code argument.
     *
     * @param reasonCode the reason code
     */
    public AuditException(int reasonCode) {
    	super();
        this.reasonCode = reasonCode;
    }
    
    /**
     * The constructor with a reason string argument.
     *
     * @param reason the reason
     */
    public AuditException(String reason) {
        super(reason); // for backward compatibility of Throwable
        this.reason = reason;
        this.reasonCode = UNKNOWN;
    }

    /**
     * The constructor with a reason string and its code arguments.
     *
     * @param reasonCode the reason code
     * @param reason the reason
     */
    public AuditException(int reasonCode, String reason) {
        super(reason); // for backward compatibility of Throwable
        this.reason = reason;
        this.reasonCode = reasonCode;
    }
    
    /**
     * Creates a new RedirectException with the specified detail message and cause.
     * 
     * @param message the exception detail message
     * @param cause the <tt>Throwable</tt> that caused this exception, or <tt>null</tt>
     * if the cause is unavailable, unknown, or not a <tt>Throwable</tt>
     */
    public AuditException(String reason, Throwable cause) {
        super(reason, cause);
        this.reason = reason;
    }

    // -------------------------------------------------------------- constants
    /**
     * No specified reason code.
     */
    public static final int UNKNOWN = 0;


    /**
     * Timeout error.
     */
    public static final int TIMEOUT = 1;


    /**
     * The track server database error.
     */
    public static final int DB_ERROR = 2;


    // ------------------------------------------------------------- properties
    /**
     * The reason code.
     */
    protected int reasonCode;


    /**
     * The reason message.
     */
    protected String reason;

    // ---------------------------------------------------------------- methods
    /**
     * Get the reason code.
     *
     * @return the reason code
     */
    public int getReasonCode() {
        return reasonCode;
    }

    /**
     * Set the reason code.
     *
     * @param reasonCode the reason code
     *
     * Callers should set the reason code as a parameter to the
     * constructor.
     */
    public void setReasonCode(int reasonCode) {
        this.reasonCode = reasonCode;
    }


    /**
     * Get the reason message.
     *
     * @return the reason message
     *
     * You should instead call {@link #getMessage()}.
     */
    public String getReason() {
        return reason;
    }


    /**
     * Set the reason message.
     *
     * @param reason the reason message
     *
     * Callers should instead set this via a parameter to the constructor.
     */
    public void setReason(String reason) {
        this.reason = reason;
    }
    
}
