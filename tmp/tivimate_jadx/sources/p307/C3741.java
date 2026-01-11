package p307;

import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import p038.C1278;
import p366.C4472;

/* renamed from: ᐧـ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3741 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final long f14576 = TimeUnit.HOURS.toMillis(24);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final long f14577 = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f14578;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long f14579;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1278 f14580;

    public C3741() {
        if (C4472.f16738 == null) {
            Pattern pattern = C1278.f4941;
            C4472.f16738 = new C4472(2);
        }
        C4472 c4472 = C4472.f16738;
        if (C1278.f4942 == null) {
            C1278.f4942 = new C1278(c4472);
        }
        this.f14580 = C1278.f4942;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final synchronized void m7947() {
        this.f14578 = 0;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final synchronized void m7948(int i) {
        if ((i >= 200 && i < 300) || i == 401 || i == 404) {
            m7947();
            return;
        }
        this.f14578++;
        long m7950 = m7950(i);
        this.f14580.f4944.getClass();
        this.f14579 = System.currentTimeMillis() + m7950;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized boolean m7949() {
        boolean z;
        if (this.f14578 != 0) {
            this.f14580.f4944.getClass();
            z = System.currentTimeMillis() > this.f14579;
        }
        return z;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized long m7950(int i) {
        if (!(i == 429 || (i >= 500 && i < 600))) {
            return f14576;
        }
        double pow = Math.pow(2.0d, this.f14578);
        this.f14580.getClass();
        return (long) Math.min(pow + ((long) (Math.random() * 1000.0d)), f14577);
    }
}
