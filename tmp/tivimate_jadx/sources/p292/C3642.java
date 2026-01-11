package p292;

import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p035.AbstractC1220;
import p208.C2939;
import p271.AbstractC3480;
import p394.AbstractC4712;
import p430.C5110;
import p452.C5365;
import p452.C5366;

/* renamed from: ٴᵎ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3642 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C5366 f14270;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f14274 = TimeUnit.MINUTES.toNanos(5);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public volatile Map f14273 = C5110.f19215;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3651 f14271 = new C3651(this, AbstractC1220.m3775(new StringBuilder(), AbstractC4712.f17803, " ConnectionPool connection closer"));

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final ConcurrentLinkedQueue f14272 = new ConcurrentLinkedQueue();

    static {
        AtomicReferenceFieldUpdater.newUpdater(C3642.class, Map.class, "ⁱˊ");
    }

    public C3642(C5365 c5365, C2939 c2939) {
        this.f14270 = c5365.m10761();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m7635(C3648 c3648, long j) {
        TimeZone timeZone = AbstractC4712.f17804;
        ArrayList arrayList = c3648.f14305;
        int i = 0;
        while (i < arrayList.size()) {
            Reference reference = (Reference) arrayList.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                String str = "A connection to " + c3648.f14294.f11246.f11337 + " was leaked. Did you forget to close a response body?";
                AbstractC3480 abstractC3480 = AbstractC3480.f13658;
                AbstractC3480.f13658.mo7410(((C3646) reference).f14283, str);
                arrayList.remove(i);
                if (arrayList.isEmpty()) {
                    c3648.f14298 = j - this.f14274;
                    return 0;
                }
            }
        }
        return arrayList.size();
    }
}
