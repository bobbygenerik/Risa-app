package p080;

import android.os.SystemClock;
import android.util.Log;
import ar.tvplayer.core.domain.ʽﹳ;
import com.bumptech.glide.C0233;
import com.bumptech.glide.C0241;
import com.bumptech.glide.EnumC0235;
import com.parse.ٴʼ;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import p010.AbstractC0844;
import p031.C1144;
import p031.InterfaceC1141;
import p073.C1649;
import p087.AbstractC1747;
import p087.C1739;
import p140.ExecutorServiceC2374;
import p234.C3194;
import p319.C3934;
import p399.C4751;
import ـˎ.ˈ;
import ᵢ.ﹳٴ;
import ﹳי.ʽ;

/* renamed from: ʿʾ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1698 implements InterfaceC1713, InterfaceC1700 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final boolean f6936 = Log.isLoggable("Engine", 2);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1649 f6937;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3194 f6938;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final ʽﹳ f6939;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final com.google.android.gms.internal.play_billing.ʽﹳ f6940;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final ٴʼ f6941;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ˈ f6942;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0241 f6943;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C3934 f6944;

    public C1698(C1649 c1649, ʽ r11, ExecutorServiceC2374 executorServiceC2374, ExecutorServiceC2374 executorServiceC23742, ExecutorServiceC2374 executorServiceC23743, ExecutorServiceC2374 executorServiceC23744) {
        this.f6937 = c1649;
        C3934 c3934 = new C3934(r11);
        this.f6944 = c3934;
        ٴʼ r112 = new ٴʼ(6);
        this.f6941 = r112;
        synchronized (this) {
            try {
                try {
                    synchronized (r112) {
                        try {
                            r112.ˈٴ = this;
                        } catch (Throwable th) {
                            th = th;
                            while (true) {
                                try {
                                    break;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                            throw th;
                        }
                    }
                    this.f6942 = new ˈ(11);
                    this.f6943 = new C0241(1);
                    this.f6938 = new C3194(executorServiceC2374, executorServiceC23742, executorServiceC23743, executorServiceC23744, this, this);
                    this.f6940 = new com.google.android.gms.internal.play_billing.ʽﹳ(c3934);
                    this.f6939 = new ʽﹳ(5);
                    c1649.f6697 = this;
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                throw th;
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m4633(String str, long j, C1702 c1702) {
        StringBuilder m3017 = AbstractC0844.m3017(str, " in ");
        m3017.append(AbstractC1747.m4706(j));
        m3017.append("ms, key: ");
        m3017.append(c1702);
        m3017.toString();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m4634(InterfaceC1710 interfaceC1710) {
        if (!(interfaceC1710 instanceof C1692)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((C1692) interfaceC1710).m4611();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1692 m4635(C1702 c1702, boolean z, long j) {
        C1692 c1692;
        if (z) {
            ٴʼ r5 = this.f6941;
            synchronized (r5) {
                C1690 c1690 = (C1690) ((HashMap) r5.ᴵˊ).get(c1702);
                if (c1690 == null) {
                    c1692 = null;
                } else {
                    c1692 = (C1692) c1690.get();
                    if (c1692 == null) {
                        r5.ٴᵢ(c1690);
                    }
                }
            }
            if (c1692 != null) {
                c1692.m4612();
            }
            if (c1692 != null) {
                if (f6936) {
                    m4633("Loaded resource from active resources", j, c1702);
                }
                return c1692;
            }
            C1692 m4638 = m4638(c1702);
            if (m4638 != null) {
                if (f6936) {
                    m4633("Loaded resource from cache", j, c1702);
                }
                return m4638;
            }
        }
        return null;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final synchronized void m4636(C1709 c1709, C1702 c1702, C1692 c1692) {
        if (c1692 != null) {
            try {
                if (c1692.f6879) {
                    this.f6941.ʾˋ(c1702, c1692);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        HashMap hashMap = this.f6943.f1713;
        if (c1709.equals(hashMap.get(c1702))) {
            hashMap.remove(c1702);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final ٴʼ m4637(C0233 c0233, Object obj, InterfaceC1141 interfaceC1141, int i, int i2, Class cls, Class cls2, EnumC0235 enumC0235, C1714 c1714, Map map, boolean z, boolean z2, C1144 c1144, boolean z3, boolean z4, C4751 c4751, Executor executor, C1702 c1702, long j) {
        C1709 c1709 = (C1709) this.f6943.f1713.get(c1702);
        if (c1709 != null) {
            c1709.m4653(c4751, executor);
            if (f6936) {
                m4633("Added to existing load", j, c1702);
            }
            return new ٴʼ(this, c4751, c1709);
        }
        C1709 c17092 = (C1709) ((ﹳٴ) this.f6938.f12217).ﾞᴵ();
        synchronized (c17092) {
            c17092.f7000 = c1702;
            c17092.f7002 = z3;
            c17092.f6986 = z4;
        }
        com.google.android.gms.internal.play_billing.ʽﹳ r15 = this.f6940;
        RunnableC1695 runnableC1695 = (RunnableC1695) ((ﹳٴ) r15.ˈٴ).ﾞᴵ();
        int i3 = r15.ᴵˊ;
        r15.ᴵˊ = i3 + 1;
        C1688 c1688 = runnableC1695.f6900;
        C3934 c3934 = runnableC1695.f6905;
        c1688.f6857 = c0233;
        c1688.f6859 = obj;
        c1688.f6865 = interfaceC1141;
        c1688.f6862 = i;
        c1688.f6872 = i2;
        c1688.f6856 = c1714;
        c1688.f6864 = cls;
        c1688.f6866 = c3934;
        c1688.f6863 = cls2;
        c1688.f6861 = enumC0235;
        c1688.f6855 = c1144;
        c1688.f6858 = map;
        c1688.f6867 = z;
        c1688.f6870 = z2;
        runnableC1695.f6908 = c0233;
        runnableC1695.f6925 = interfaceC1141;
        runnableC1695.f6915 = enumC0235;
        runnableC1695.f6923 = c1702;
        runnableC1695.f6926 = i;
        runnableC1695.f6903 = i2;
        runnableC1695.f6927 = c1714;
        runnableC1695.f6904 = c1144;
        runnableC1695.f6913 = c17092;
        runnableC1695.f6911 = i3;
        runnableC1695.f6912 = 1;
        runnableC1695.f6898 = obj;
        C0241 c0241 = this.f6943;
        c0241.getClass();
        c0241.f1713.put(c1702, c17092);
        c17092.m4653(c4751, executor);
        c17092.m4650(runnableC1695);
        if (f6936) {
            m4633("Started new load", j, c1702);
        }
        return new ٴʼ(this, c4751, c17092);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p080.C1692 m4638(p080.C1702 r10) {
        /*
            r9 = this;
            ʾⁱ.ﾞᴵ r1 = r9.f6937
            monitor-enter(r1)
            java.io.Serializable r0 = r1.f7093     // Catch: java.lang.Throwable -> L43
            java.util.LinkedHashMap r0 = (java.util.LinkedHashMap) r0     // Catch: java.lang.Throwable -> L43
            java.lang.Object r0 = r0.remove(r10)     // Catch: java.lang.Throwable -> L43
            ʿٴ.ʼˎ r0 = (p087.C1738) r0     // Catch: java.lang.Throwable -> L43
            r2 = 0
            if (r0 != 0) goto L13
            monitor-exit(r1)
            r0 = r2
            goto L1e
        L13:
            long r3 = r1.f7094     // Catch: java.lang.Throwable -> L43
            int r5 = r0.f7090     // Catch: java.lang.Throwable -> L43
            long r5 = (long) r5     // Catch: java.lang.Throwable -> L43
            long r3 = r3 - r5
            r1.f7094 = r3     // Catch: java.lang.Throwable -> L43
            java.lang.Object r0 = r0.f7091     // Catch: java.lang.Throwable -> L43
            monitor-exit(r1)
        L1e:
            r4 = r0
            ʿʾ.ᵢˏ r4 = (p080.InterfaceC1710) r4
            if (r4 != 0) goto L26
        L23:
            r8 = r9
            r7 = r10
            goto L38
        L26:
            boolean r0 = r4 instanceof p080.C1692
            if (r0 == 0) goto L2e
            r2 = r4
            ʿʾ.ʽﹳ r2 = (p080.C1692) r2
            goto L23
        L2e:
            ʿʾ.ʽﹳ r3 = new ʿʾ.ʽﹳ
            r5 = 1
            r6 = 1
            r8 = r9
            r7 = r10
            r3.<init>(r4, r5, r6, r7, r8)
            r2 = r3
        L38:
            if (r2 == 0) goto L42
            r2.m4612()
            com.parse.ٴʼ r10 = r8.f6941
            r10.ʾˋ(r7, r2)
        L42:
            return r2
        L43:
            r0 = move-exception
            r8 = r9
        L45:
            r10 = r0
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L48
            throw r10
        L48:
            r0 = move-exception
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: p080.C1698.m4638(ʿʾ.יـ):ʿʾ.ʽﹳ");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ٴʼ m4639(C0233 c0233, Object obj, InterfaceC1141 interfaceC1141, int i, int i2, Class cls, Class cls2, EnumC0235 enumC0235, C1714 c1714, C1739 c1739, boolean z, boolean z2, C1144 c1144, boolean z3, boolean z4, C4751 c4751, ʿʿ.ﹳٴ r40) {
        long j;
        if (f6936) {
            int i3 = AbstractC1747.f7106;
            j = SystemClock.elapsedRealtimeNanos();
        } else {
            j = 0;
        }
        this.f6942.getClass();
        C1702 c1702 = new C1702(obj, interfaceC1141, i, i2, c1739, cls, cls2, c1144);
        synchronized (this) {
            try {
                C1692 m4635 = m4635(c1702, z3, j);
                if (m4635 == null) {
                    return m4637(c0233, obj, interfaceC1141, i, i2, cls, cls2, enumC0235, c1714, c1739, z, z2, c1144, z3, z4, c4751, r40, c1702, j);
                }
                c4751.m9502(m4635, 5, false);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m4640(InterfaceC1141 interfaceC1141, C1692 c1692) {
        ٴʼ r0 = this.f6941;
        synchronized (r0) {
            C1690 c1690 = (C1690) ((HashMap) r0.ᴵˊ).remove(interfaceC1141);
            if (c1690 != null) {
                c1690.f6874 = null;
                c1690.clear();
            }
        }
        if (c1692.f6879) {
        } else {
            this.f6939.ˆʾ(c1692, false);
        }
    }
}
