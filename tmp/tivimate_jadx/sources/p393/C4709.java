package p393;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import p164.C2579;
import p435.AbstractC5143;

/* renamed from: ⁱٴ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4709 extends C2579 {

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final Socket f17798;

    public C4709(Socket socket) {
        this.f17798 = socket;
    }

    @Override // p164.C2579
    /* renamed from: ˆʾ */
    public final void mo5778() {
        Socket socket = this.f17798;
        try {
            socket.close();
        } catch (AssertionError e) {
            Logger logger = AbstractC4702.f17765;
            boolean z = false;
            if (e.getCause() != null) {
                String message = e.getMessage();
                if (message != null ? AbstractC5143.m10116(message, "getsockname failed", false) : false) {
                    z = true;
                }
            }
            if (!z) {
                throw e;
            }
            AbstractC4702.f17765.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e);
        } catch (Exception e2) {
            AbstractC4702.f17765.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e2);
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final IOException m9426(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }
}
