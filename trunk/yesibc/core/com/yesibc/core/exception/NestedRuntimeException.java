/**
 * $Id: NestedRuntimeException.java,v 1.1 2006/03/30 00:59:19 jamyli Exp $
 */
package com.yesibc.core.exception;

import java.io.PrintStream;
import java.io.PrintWriter;

/**
 * A {@link RuntimeException}which is nested to preserve stack traces.
 * 
 * This class allows the following code to be written to convert a regular
 * Exception into a {@link RuntimeException}without losing the stack trace.
 * 
 * <pre>
 * 
 *  
 *      try {
 *          ...
 *      } catch (Exception e) {
 *          throw new NestedRuntimeException(e);
 *      }
 *   
 *  
 * </pre>
 */

public class NestedRuntimeException extends RuntimeException {

    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = 3257853177364689970L;

    private Exception nestedException;

    // -------------------------------------------------------------------------
    public NestedRuntimeException(Exception nestedException) {
        super(nestedException.getMessage());
        this.nestedException = nestedException;
    }

    public NestedRuntimeException(String message, Exception nestedException) {
        super(message);
        this.nestedException = nestedException;
    }

    public void printStackTrace(PrintStream s) {
        nestedException.printStackTrace(s);
    }

    public void printStackTrace(PrintWriter w) {
        nestedException.printStackTrace(w);
    }

    public void printStackTrace() {
        nestedException.printStackTrace();
    }

    public Throwable fillInStackTrace() {
        if (nestedException == null) {
            return super.fillInStackTrace();
        } else {
            return nestedException.fillInStackTrace();
        }
    }

    // Properties
    // -------------------------------------------------------------------------
    public Exception getNestedException() {
        return nestedException;
    }

}
