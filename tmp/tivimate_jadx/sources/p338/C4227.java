package p338;

import android.net.Uri;
import androidx.leanback.widget.ʻٴ;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.HttpDataSource$HttpDataSourceException;
import androidx.media3.datasource.HttpDataSource$InvalidResponseCodeException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ExecutionException;
import p027.C1084;
import p055.AbstractC1449;
import p170.C2617;
import p208.AbstractC2960;
import p208.C2937;
import p208.C2940;
import p208.C2942;
import p208.C2945;
import p208.C2965;
import p208.InterfaceC2947;
import p210.AbstractC2976;
import p262.C3433;
import p266.AbstractC3455;
import p266.AbstractC3458;
import p266.C3456;
import p292.C3632;
import p305.AbstractC3712;
import p394.AbstractC4710;
import ᐧﹳ.ʽ;

/* renamed from: ᵎʿ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4227 extends AbstractC3458 {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public long f15708;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C3433 f15709;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C3433 f15710;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C2942 f15711;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final String f15712;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final InterfaceC2947 f15713;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public InputStream f15714;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C3456 f15715;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f15716;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public long f15717;

    static {
        AbstractC1449.m4241("media3.datasource.okhttp");
    }

    public C4227(InterfaceC2947 interfaceC2947, String str, C3433 c3433) {
        super(true);
        interfaceC2947.getClass();
        this.f15713 = interfaceC2947;
        this.f15712 = str;
        this.f15709 = c3433;
        this.f15710 = new C3433();
    }

    @Override // p266.InterfaceC3462
    public final void close() {
        if (this.f15716) {
            this.f15716 = false;
            m7365();
            m8624();
        }
        this.f15711 = null;
        this.f15715 = null;
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.f15708;
            if (j != -1) {
                long j2 = j - this.f15717;
                if (j2 == 0) {
                    return -1;
                }
                i2 = (int) Math.min(i2, j2);
            }
            InputStream inputStream = this.f15714;
            String str = AbstractC3712.f14481;
            int read = inputStream.read(bArr, i, i2);
            if (read != -1) {
                this.f15717 += read;
                m7368(read);
                return read;
            }
            return -1;
        } catch (IOException e) {
            String str2 = AbstractC3712.f14481;
            throw HttpDataSource$HttpDataSourceException.m742(2, e);
        }
    }

    /* JADX WARN: Type inference failed for: r2v8, types: [ˈˊ.ˉʿ, java.lang.Object] */
    @Override // p266.InterfaceC3462
    /* renamed from: ʽʽ */
    public final long mo4684(C3456 c3456) {
        C2940 c2940;
        long j;
        ʻٴ r24;
        C2965 c2965;
        this.f15715 = c3456;
        this.f15717 = 0L;
        this.f15708 = 0L;
        m7366();
        long j2 = c3456.f13573;
        int i = c3456.f13576;
        long j3 = c3456.f13578;
        String uri = c3456.f13577.toString();
        try {
            C2617 c2617 = new C2617();
            c2617.m5874(null, uri);
            c2940 = c2617.m5875();
        } catch (IllegalArgumentException unused) {
            c2940 = null;
        }
        if (c2940 == null) {
            throw new HttpDataSource$HttpDataSourceException(1004, "Malformed URL");
        }
        ʻٴ r11 = new ʻٴ(8);
        r11.ʽʽ = c2940;
        HashMap hashMap = new HashMap();
        C3433 c3433 = this.f15709;
        if (c3433 != null) {
            hashMap.putAll(c3433.m7325());
        }
        hashMap.putAll(this.f15710.m7325());
        hashMap.putAll(c3456.f13572);
        for (Map.Entry entry : hashMap.entrySet()) {
            r11.ˉˆ((String) entry.getKey(), (String) entry.getValue());
        }
        String m7361 = AbstractC3455.m7361(j2, j3);
        if (m7361 != null) {
            ((C1084) r11.ᴵᵔ).m3437("Range", m7361);
        }
        String str = this.f15712;
        if (str != null) {
            ((C1084) r11.ᴵᵔ).m3437("User-Agent", str);
        }
        if ((c3456.f13575 & 1) != 1) {
            ((C1084) r11.ᴵᵔ).m3437("Accept-Encoding", "identity");
        }
        byte[] bArr = c3456.f13571;
        if (bArr != null) {
            int length = bArr.length;
            j = 0;
            r24 = r11;
            AbstractC4710.m9438(bArr.length, 0, length);
            c2965 = new C2965(length, bArr);
        } else {
            j = 0;
            r24 = r11;
            if (i == 2) {
                byte[] bArr2 = AbstractC3712.f14480;
                int length2 = bArr2.length;
                AbstractC4710.m9438(bArr2.length, 0, length2);
                c2965 = new C2965(length2, bArr2);
            } else {
                c2965 = null;
            }
        }
        String m7362 = C3456.m7362(i);
        ʻٴ r6 = r24;
        r6.ʼᐧ(m7362, c2965);
        C2945 c2945 = new C2945(r6);
        C2937 c2937 = (C2937) this.f15713;
        c2937.getClass();
        C3632 c3632 = new C3632(c2937, c2945);
        try {
            ?? obj = new Object();
            c3632.m7610(new ʽ(3, (Object) obj));
            try {
                C2942 c2942 = (C2942) obj.get();
                this.f15711 = c2942;
                AbstractC2960 abstractC2960 = c2942.f11191;
                abstractC2960.getClass();
                this.f15714 = abstractC2960.mo4067().mo5804();
                int i2 = c2942.f11186;
                if (!c2942.f11185) {
                    if (i2 == 416 && j2 == AbstractC3455.m7360(c2942.f11188.m6485("Content-Range"))) {
                        this.f15716 = true;
                        m7367(c3456);
                        return j3 != -1 ? j3 : j;
                    }
                    try {
                        InputStream inputStream = this.f15714;
                        inputStream.getClass();
                        AbstractC2976.m6502(inputStream);
                    } catch (IOException unused2) {
                        String str2 = AbstractC3712.f14481;
                    }
                    TreeMap m6483 = c2942.f11188.m6483();
                    m8624();
                    throw new HttpDataSource$InvalidResponseCodeException(i2, i2 == 416 ? new DataSourceException(2008) : null, m6483);
                }
                abstractC2960.mo4068();
                if (i2 != 200 || j2 == j) {
                    j2 = j;
                }
                if (j3 != -1) {
                    this.f15708 = j3;
                } else {
                    long mo4066 = abstractC2960.mo4066();
                    this.f15708 = mo4066 != -1 ? mo4066 - j2 : -1L;
                }
                this.f15716 = true;
                m7367(c3456);
                try {
                    m8623(j2);
                    return this.f15708;
                } catch (HttpDataSource$HttpDataSourceException e) {
                    m8624();
                    throw e;
                }
            } catch (InterruptedException unused3) {
                c3632.cancel();
                throw new InterruptedIOException();
            } catch (ExecutionException e2) {
                throw new IOException(e2);
            }
        } catch (IOException e3) {
            throw HttpDataSource$HttpDataSourceException.m742(1, e3);
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m8623(long j) {
        if (j == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            try {
                int min = (int) Math.min(j, 4096);
                InputStream inputStream = this.f15714;
                String str = AbstractC3712.f14481;
                int read = inputStream.read(bArr, 0, min);
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedIOException();
                }
                if (read == -1) {
                    throw new HttpDataSource$HttpDataSourceException(2008);
                }
                j -= read;
                m7368(read);
            } catch (IOException e) {
                if (!(e instanceof HttpDataSource$HttpDataSourceException)) {
                    throw new HttpDataSource$HttpDataSourceException(2000);
                }
                throw ((HttpDataSource$HttpDataSourceException) e);
            }
        }
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ */
    public final Uri mo4685() {
        C2942 c2942 = this.f15711;
        if (c2942 != null) {
            return Uri.parse(c2942.f11183.f11226.f11159);
        }
        C3456 c3456 = this.f15715;
        if (c3456 != null) {
            return c3456.f13577;
        }
        return null;
    }

    @Override // p266.AbstractC3458, p266.InterfaceC3462
    /* renamed from: ٴﹶ */
    public final Map mo5140() {
        C2942 c2942 = this.f15711;
        return c2942 == null ? Collections.EMPTY_MAP : c2942.f11188.m6483();
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m8624() {
        C2942 c2942 = this.f15711;
        if (c2942 != null) {
            AbstractC2960 abstractC2960 = c2942.f11191;
            abstractC2960.getClass();
            abstractC2960.close();
        }
        this.f15714 = null;
    }
}
