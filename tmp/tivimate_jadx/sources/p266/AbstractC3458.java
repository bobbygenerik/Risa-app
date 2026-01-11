package p266;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import p017.C0956;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p364.C4446;

/* renamed from: ـˊ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3458 implements InterfaceC3462 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f13579;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f13580;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C3456 f13581;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayList f13582 = new ArrayList(1);

    public AbstractC3458(boolean z) {
        this.f13580 = z;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7365() {
        C3456 c3456 = this.f13581;
        String str = AbstractC3712.f14481;
        for (int i = 0; i < this.f13579; i++) {
            InterfaceC3457 interfaceC3457 = (InterfaceC3457) this.f13582.get(i);
            boolean z = this.f13580;
            C4446 c4446 = (C4446) interfaceC3457;
            synchronized (c4446) {
                try {
                    C0956 c0956 = C4446.f16611;
                    if (z && (c3456.f13575 & 8) != 8) {
                        AbstractC3731.m7857(c4446.f16625 > 0);
                        c4446.f16620.getClass();
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        int i2 = (int) (elapsedRealtime - c4446.f16627);
                        c4446.f16619 += i2;
                        long j = c4446.f16624;
                        long j2 = c4446.f16617;
                        c4446.f16624 = j + j2;
                        if (i2 > 0) {
                            c4446.f16631.m8987((int) Math.sqrt(j2), (((float) j2) * 8000.0f) / i2);
                            if (c4446.f16619 < 2000) {
                                if (c4446.f16624 >= 524288) {
                                }
                                c4446.m8988(i2, c4446.f16617, c4446.f16630);
                                c4446.f16627 = elapsedRealtime;
                                c4446.f16617 = 0L;
                            }
                            c4446.f16630 = c4446.f16631.m8986();
                            c4446.m8988(i2, c4446.f16617, c4446.f16630);
                            c4446.f16627 = elapsedRealtime;
                            c4446.f16617 = 0L;
                        }
                        c4446.f16625--;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.f13581 = null;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ˉʿ */
    public final void mo5139(InterfaceC3457 interfaceC3457) {
        interfaceC3457.getClass();
        ArrayList arrayList = this.f13582;
        if (arrayList.contains(interfaceC3457)) {
            return;
        }
        arrayList.add(interfaceC3457);
        this.f13579++;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m7366() {
        for (int i = 0; i < this.f13579; i++) {
            ((InterfaceC3457) this.f13582.get(i)).getClass();
        }
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ٴﹶ */
    public Map mo5140() {
        return Collections.EMPTY_MAP;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m7367(C3456 c3456) {
        this.f13581 = c3456;
        for (int i = 0; i < this.f13579; i++) {
            InterfaceC3457 interfaceC3457 = (InterfaceC3457) this.f13582.get(i);
            boolean z = this.f13580;
            C4446 c4446 = (C4446) interfaceC3457;
            synchronized (c4446) {
                try {
                    C0956 c0956 = C4446.f16611;
                    if (z && (c3456.f13575 & 8) != 8) {
                        if (c4446.f16625 == 0) {
                            c4446.f16620.getClass();
                            c4446.f16627 = SystemClock.elapsedRealtime();
                        }
                        c4446.f16625++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7368(int i) {
        C3456 c3456 = this.f13581;
        String str = AbstractC3712.f14481;
        for (int i2 = 0; i2 < this.f13579; i2++) {
            InterfaceC3457 interfaceC3457 = (InterfaceC3457) this.f13582.get(i2);
            boolean z = this.f13580;
            C4446 c4446 = (C4446) interfaceC3457;
            synchronized (c4446) {
                C0956 c0956 = C4446.f16611;
                if (z && (c3456.f13575 & 8) != 8) {
                    c4446.f16617 += i;
                }
            }
        }
    }
}
