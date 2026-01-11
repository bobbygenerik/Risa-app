package androidx.media3.datasource;

import com.google.android.gms.internal.measurement.ˏʻ;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

/* loaded from: classes.dex */
public class HttpDataSource$HttpDataSourceException extends DataSourceException {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f1140;

    public HttpDataSource$HttpDataSourceException(int i) {
        super(i == 2000 ? 2001 : i);
        this.f1140 = 1;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public HttpDataSource$HttpDataSourceException(int r2, int r3, java.io.IOException r4) {
        /*
            r1 = this;
            r0 = 2000(0x7d0, float:2.803E-42)
            if (r2 != r0) goto L9
            r0 = 1
            if (r3 != r0) goto L9
            r2 = 2001(0x7d1, float:2.804E-42)
        L9:
            r1.<init>(r4, r2)
            r1.f1140 = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.datasource.HttpDataSource$HttpDataSourceException.<init>(int, int, java.io.IOException):void");
    }

    public HttpDataSource$HttpDataSourceException(int i, IOException iOException, String str) {
        super(str, iOException, i == 2000 ? 2001 : i);
        this.f1140 = 1;
    }

    public HttpDataSource$HttpDataSourceException(int i, String str) {
        super(i == 2000 ? 2001 : i, str);
        this.f1140 = 1;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static HttpDataSource$HttpDataSourceException m742(int i, IOException iOException) {
        String message = iOException.getMessage();
        int i2 = iOException instanceof SocketTimeoutException ? 2002 : iOException instanceof InterruptedIOException ? 1004 : (message == null || !ˏʻ.ˈⁱ(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
        return i2 == 2007 ? new HttpDataSource$HttpDataSourceException(2007, iOException, "Cleartext HTTP traffic not permitted. See https://developer.android.com/guide/topics/media/issues/cleartext-not-permitted") : new HttpDataSource$HttpDataSourceException(i2, i, iOException);
    }
}
