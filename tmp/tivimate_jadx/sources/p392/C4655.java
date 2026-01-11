package p392;

import java.util.HashMap;
import java.util.Iterator;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p364.C4443;

/* renamed from: ⁱי.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4655 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long f17448;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f17449;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f17450;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f17451;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long f17452;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final HashMap f17453;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f17454;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4443 f17455;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f17456;

    public C4655(C4443 c4443, int i, int i2, int i3, int i4) {
        m9265(i3, 0, "bufferForPlaybackMs", "0");
        m9265(i4, 0, "bufferForPlaybackAfterRebufferMs", "0");
        m9265(i, i3, "minBufferMs", "bufferForPlaybackMs");
        m9265(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        m9265(i2, i, "maxBufferMs", "minBufferMs");
        m9265(0, 0, "backBufferDurationMs", "0");
        this.f17455 = c4443;
        this.f17454 = AbstractC3712.m7757(i);
        this.f17449 = AbstractC3712.m7757(i2);
        this.f17450 = AbstractC3712.m7757(i3);
        this.f17451 = AbstractC3712.m7757(i4);
        this.f17456 = -1;
        this.f17452 = AbstractC3712.m7757(0);
        this.f17453 = new HashMap();
        this.f17448 = -1L;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m9265(int i, int i2, String str, String str2) {
        AbstractC3731.m7843(str + " cannot be less than " + str2, i >= i2);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m9266(C4665 c4665) {
        int i;
        long j = this.f17449;
        C4646 c4646 = (C4646) this.f17453.get(c4665.f17485);
        c4646.getClass();
        C4443 c4443 = this.f17455;
        synchronized (c4443) {
            i = c4443.f16597 * c4443.f16599;
        }
        boolean z = i >= m9268();
        long j2 = this.f17454;
        float f = c4665.f17483;
        if (f > 1.0f) {
            j2 = Math.min(AbstractC3712.m7793(j2, f), j);
        }
        long max = Math.max(j2, 500000L);
        long j3 = c4665.f17484;
        if (j3 < max) {
            c4646.f17424 = !z;
            if (z && j3 < 500000) {
                AbstractC3731.m7850("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j3 >= j || z) {
            c4646.f17424 = false;
        }
        return c4646.f17424;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m9267() {
        if (!this.f17453.isEmpty()) {
            this.f17455.m8985(m9268());
            return;
        }
        C4443 c4443 = this.f17455;
        synchronized (c4443) {
            if (c4443.f16600) {
                c4443.m8985(0);
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m9268() {
        Iterator it = this.f17453.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((C4646) it.next()).f17423;
        }
        return i;
    }
}
