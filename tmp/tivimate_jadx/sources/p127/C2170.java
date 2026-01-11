package p127;

import android.net.Uri;
import android.util.SparseArray;
import androidx.media3.exoplayer.rtsp.RtspMediaSource$RtspPlaybackException;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.io.Closeable;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.SocketFactory;
import p002.C0767;
import p017.AbstractC1004;
import p017.C0987;
import p305.AbstractC3712;
import p305.AbstractC3731;
import ﹳי.ʽ;
import ﹶﾞ.ⁱי;

/* renamed from: ˈـ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2170 implements Closeable {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public long f8472;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final String f8473;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ʽ f8474;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public RunnableC2155 f8475;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public int f8476;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final SocketFactory f8477;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public Uri f8478;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f8480;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public boolean f8481;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public boolean f8482;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C2150 f8483;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ʽ f8485;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public String f8487;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C2173 f8488;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public long f8489;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public C0767 f8490;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ArrayDeque f8486 = new ArrayDeque();

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final SparseArray f8479 = new SparseArray();

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final ʽﹳ f8484 = new ʽﹳ(this);

    public C2170(ʽ r3, ʽ r4, String str, Uri uri, SocketFactory socketFactory) {
        Uri build;
        this.f8474 = r3;
        this.f8485 = r4;
        this.f8473 = str;
        this.f8477 = socketFactory;
        Pattern pattern = AbstractC2166.f8450;
        if (uri.getUserInfo() == null) {
            build = uri;
        } else {
            String encodedAuthority = uri.getEncodedAuthority();
            encodedAuthority.getClass();
            AbstractC3731.m7849(encodedAuthority.contains("@"));
            String str2 = AbstractC3712.f14481;
            build = uri.buildUpon().encodedAuthority(encodedAuthority.split("@", -1)[1]).build();
        }
        this.f8478 = build;
        this.f8488 = new C2173(new ⁱי(this));
        this.f8489 = 60000L;
        this.f8483 = AbstractC2166.m5147(uri);
        this.f8472 = -9223372036854775807L;
        this.f8476 = -1;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m5155(C2170 c2170, RtspMediaSource$RtspPlaybackException rtspMediaSource$RtspPlaybackException) {
        if (c2170.f8482) {
            c2170.f8485.ˆʾ(rtspMediaSource$RtspPlaybackException);
            return;
        }
        ʽ r1 = c2170.f8474;
        String message = rtspMediaSource$RtspPlaybackException.getMessage();
        if (message == null) {
            message = "";
        }
        r1.ᵔﹳ(message, rtspMediaSource$RtspPlaybackException);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        RunnableC2155 runnableC2155 = this.f8475;
        if (runnableC2155 != null) {
            runnableC2155.close();
            this.f8475 = null;
            Uri uri = this.f8478;
            String str = this.f8487;
            str.getClass();
            ʽﹳ r2 = this.f8484;
            C2170 c2170 = (C2170) r2.ˈٴ;
            int i = c2170.f8476;
            if (i != -1 && i != 0) {
                c2170.f8476 = 0;
                r2.ᴵˊ(r2.ˉˆ(12, str, C0987.f3963, uri));
            }
        }
        this.f8488.close();
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final Socket m5156(Uri uri) {
        AbstractC3731.m7849(uri.getHost() != null);
        int port = uri.getPort() > 0 ? uri.getPort() : 554;
        String host = uri.getHost();
        host.getClass();
        return this.f8477.createSocket(host, port);
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m5157(long j) {
        Uri uri = this.f8478;
        String str = this.f8487;
        str.getClass();
        ʽﹳ r2 = this.f8484;
        int i = ((C2170) r2.ˈٴ).f8476;
        AbstractC3731.m7857(i == 1 || i == 2);
        C2154 c2154 = C2154.f8375;
        Object[] objArr = {Double.valueOf(j / 1000.0d)};
        String str2 = AbstractC3712.f14481;
        r2.ᴵˊ(r2.ˉˆ(6, str, C0987.m3255(1, new Object[]{"Range", String.format(Locale.US, "npt=%.3f-", objArr)}, null), uri));
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m5158() {
        long m7755;
        C2172 c2172 = (C2172) this.f8486.pollFirst();
        if (c2172 == null) {
            C2161 c2161 = (C2161) this.f8485.ʾˋ;
            long j = c2161.f8421;
            if (j != -9223372036854775807L) {
                m7755 = AbstractC3712.m7755(j);
            } else {
                long j2 = c2161.f8405;
                m7755 = j2 != -9223372036854775807L ? AbstractC3712.m7755(j2) : 0L;
            }
            c2161.f8406.m5157(m7755);
            return;
        }
        Uri uri = c2172.f8499.f8539.f8329;
        AbstractC3731.m7868(c2172.f8497);
        String str = c2172.f8497;
        String str2 = this.f8487;
        ʽﹳ r3 = this.f8484;
        ((C2170) r3.ˈٴ).f8476 = 0;
        AbstractC1004.m3279("Transport", str);
        r3.ᴵˊ(r3.ˉˆ(10, str2, C0987.m3255(1, new Object[]{"Transport", str}, null), uri));
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m5159(long j) {
        if (this.f8476 == 2 && !this.f8480) {
            Uri uri = this.f8478;
            String str = this.f8487;
            str.getClass();
            ʽﹳ r3 = this.f8484;
            C2170 c2170 = (C2170) r3.ˈٴ;
            AbstractC3731.m7857(c2170.f8476 == 2);
            r3.ᴵˊ(r3.ˉˆ(5, str, C0987.f3963, uri));
            c2170.f8480 = true;
        }
        this.f8472 = j;
    }
}
