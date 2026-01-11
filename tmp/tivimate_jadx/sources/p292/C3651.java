package p292;

import java.util.Iterator;
import java.util.Map;
import p137.AbstractC2305;
import p329.InterfaceC4104;
import p394.AbstractC4712;
import p452.AbstractC5367;

/* renamed from: ٴᵎ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3651 extends AbstractC5367 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ int f14311 = 1;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final /* synthetic */ Object f14312;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3651(String str, InterfaceC4104 interfaceC4104) {
        super(str);
        this.f14312 = interfaceC4104;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3651(C3642 c3642, String str) {
        super(str);
        this.f14312 = c3642;
    }

    @Override // p452.AbstractC5367
    /* renamed from: ﹳٴ */
    public final long mo7636() {
        switch (this.f14311) {
            case 0:
                C3642 c3642 = (C3642) this.f14312;
                long nanoTime = System.nanoTime();
                Map map = c3642.f14273;
                Iterator it = map.values().iterator();
                if (it.hasNext()) {
                    throw AbstractC2305.m5372(it);
                }
                Iterator it2 = c3642.f14272.iterator();
                while (it2.hasNext()) {
                    if (map.get(((C3648) it2.next()).f14294.f11246) != null) {
                        throw new ClassCastException();
                    }
                }
                long j = (nanoTime - c3642.f14274) + 1;
                Iterator it3 = c3642.f14272.iterator();
                int i = 0;
                long j2 = Long.MAX_VALUE;
                C3648 c3648 = null;
                C3648 c36482 = null;
                int i2 = 0;
                while (it3.hasNext()) {
                    C3648 c36483 = (C3648) it3.next();
                    synchronized (c36483) {
                        if (c3642.m7635(c36483, nanoTime) > 0) {
                            i2++;
                        } else {
                            int i3 = i2;
                            long j3 = c36483.f14298;
                            if (j3 < j) {
                                j = j3;
                                c3648 = c36483;
                            }
                            if (map.get(c36483.f14294.f11246) != null) {
                                throw new ClassCastException();
                            }
                            i++;
                            if (j3 < j2) {
                                j2 = j3;
                                c36482 = c36483;
                            }
                            i2 = i3;
                        }
                    }
                }
                int i4 = i2;
                if (c3648 == null) {
                    if (i > 5) {
                        j = j2;
                        c3648 = c36482;
                    } else {
                        j = -1;
                        c3648 = null;
                    }
                }
                if (c3648 == null) {
                    if (c36482 != null) {
                        return (j2 + c3642.f14274) - nanoTime;
                    }
                    if (i4 > 0) {
                        return c3642.f14274;
                    }
                    return -1L;
                }
                synchronized (c3648) {
                    if (!c3648.f14305.isEmpty()) {
                        return 0L;
                    }
                    if (c3648.f14298 != j) {
                        return 0L;
                    }
                    c3648.f14306 = true;
                    c3642.f14272.remove(c3648);
                    if (map.get(c3648.f14294.f11246) != null) {
                        throw new ClassCastException();
                    }
                    AbstractC4712.m9442(c3648.f14307);
                    if (!c3642.f14272.isEmpty()) {
                        return 0L;
                    }
                    c3642.f14270.m10768();
                    return 0L;
                }
            default:
                ((InterfaceC4104) this.f14312).mo716();
                return -1L;
        }
    }
}
