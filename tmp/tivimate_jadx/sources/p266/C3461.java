package p266;

import android.net.Uri;
import androidx.media3.datasource.HttpDataSource$HttpDataSourceException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import p017.C0987;
import p262.C3433;
import p305.AbstractC3712;
import p305.AbstractC3731;
import ʿˋ.ᵔʾ;

/* renamed from: ـˊ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3461 extends AbstractC3458 {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f13597;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public long f13598;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C3433 f13599;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f13600;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public HttpURLConnection f13601;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C3433 f13602;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f13603;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public InputStream f13604;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C3456 f13605;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f13606;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public long f13607;

    public C3461(int i, int i2, C3433 c3433) {
        super(true);
        this.f13603 = i;
        this.f13600 = i2;
        this.f13602 = c3433;
        this.f13599 = new C3433();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p266.InterfaceC3462
    public final void close() {
        try {
            InputStream inputStream = this.f13604;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    String str = AbstractC3712.f14481;
                    throw new HttpDataSource$HttpDataSourceException(2000, 3, e);
                }
            }
        } finally {
            this.f13604 = null;
            m7370();
            if (this.f13606) {
                this.f13606 = false;
                m7365();
            }
            this.f13601 = null;
            this.f13605 = null;
        }
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.f13607;
            if (j != -1) {
                long j2 = j - this.f13598;
                if (j2 == 0) {
                    return -1;
                }
                i2 = (int) Math.min(i2, j2);
            }
            InputStream inputStream = this.f13604;
            String str = AbstractC3712.f14481;
            int read = inputStream.read(bArr, i, i2);
            if (read != -1) {
                this.f13598 += read;
                m7368(read);
                return read;
            }
            return -1;
        } catch (IOException e) {
            String str2 = AbstractC3712.f14481;
            throw HttpDataSource$HttpDataSourceException.m742(2, e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x005c, code lost:
    
        if (r9 != 0) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0155 A[Catch: IOException -> 0x015f, TRY_LEAVE, TryCatch #6 {IOException -> 0x015f, blocks: (B:25:0x014d, B:27:0x0155), top: B:24:0x014d }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x013f  */
    @Override // p266.InterfaceC3462
    /* renamed from: ʽʽ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo4684(p266.C3456 r27) {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p266.C3461.mo4684(ـˊ.ᵔᵢ):long");
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final HttpURLConnection m7369(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map map) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        if (httpURLConnection instanceof HttpsURLConnection) {
            try {
                TrustManager[] trustManagerArr = {new ᵔʾ(1)};
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, trustManagerArr, null);
                ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLContext.getSocketFactory());
            } catch (Exception unused) {
            }
        }
        httpURLConnection.setConnectTimeout(this.f13603);
        httpURLConnection.setReadTimeout(this.f13600);
        HashMap hashMap = new HashMap();
        C3433 c3433 = this.f13602;
        if (c3433 != null) {
            hashMap.putAll(c3433.m7325());
        }
        hashMap.putAll(this.f13599.m7325());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String m7361 = AbstractC3455.m7361(j, j2);
        if (m7361 != null) {
            httpURLConnection.setRequestProperty("Range", m7361);
        }
        httpURLConnection.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        httpURLConnection.setRequestMethod(C3456.m7362(i));
        if (bArr != null) {
            httpURLConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnection.connect();
        }
        return httpURLConnection;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ */
    public final Uri mo4685() {
        HttpURLConnection httpURLConnection = this.f13601;
        if (httpURLConnection != null) {
            return Uri.parse(httpURLConnection.getURL().toString());
        }
        C3456 c3456 = this.f13605;
        if (c3456 != null) {
            return c3456.f13577;
        }
        return null;
    }

    @Override // p266.AbstractC3458, p266.InterfaceC3462
    /* renamed from: ٴﹶ */
    public final Map mo5140() {
        HttpURLConnection httpURLConnection = this.f13601;
        return httpURLConnection == null ? C0987.f3963 : new C3453(httpURLConnection.getHeaderFields());
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m7370() {
        HttpURLConnection httpURLConnection = this.f13601;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                AbstractC3731.m7863("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
        }
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m7371(long j) {
        if (j == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            int min = (int) Math.min(j, 4096);
            InputStream inputStream = this.f13604;
            String str = AbstractC3712.f14481;
            int read = inputStream.read(bArr, 0, min);
            if (Thread.currentThread().isInterrupted()) {
                throw new HttpDataSource$HttpDataSourceException(2000, 1, new InterruptedIOException());
            }
            if (read == -1) {
                throw new HttpDataSource$HttpDataSourceException(2008);
            }
            j -= read;
            m7368(read);
        }
    }
}
