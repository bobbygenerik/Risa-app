package p073;

import android.content.SharedPreferences;
import android.os.Handler;
import android.util.Log;
import com.bumptech.glide.C0229;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.concurrent.TimeUnit;
import p003.RunnableC0786;
import p031.C1144;
import p031.InterfaceC1141;
import p031.InterfaceC1145;
import p205.C2921;
import p250.C3304;
import p262.C3432;
import p262.C3433;
import p289.C3602;
import p296.AbstractC3659;
import p344.C4269;
import p355.AbstractC4340;
import p355.C4335;
import p404.C4790;
import p447.C5313;
import p447.C5322;
import p447.C5337;
import ʽⁱ.ᵎﹶ;
import ˊⁱ.ˑﹳ;
import ᐧﹳ.ʽ;
import ﹶﾞ.ⁱי;

/* renamed from: ʾⁱ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1643 implements InterfaceC1648 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f6681;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f6682;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Object f6683;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Object f6684;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f6685;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Object f6686;

    public C1643(long j, C2921 c2921, C3304 c3304, C3602 c3602, C4269 c4269) {
        this.f6682 = 1;
        this.f6685 = j;
        this.f6681 = c2921;
        this.f6683 = c3304;
        this.f6686 = c3602;
        this.f6684 = c4269;
    }

    public C1643(File file) {
        this.f6682 = 0;
        this.f6686 = new ⁱי(14);
        this.f6683 = file;
        this.f6685 = 262144000L;
        this.f6681 = new C4790(12);
    }

    public C1643(ˑﹳ r4, C3433 c3433) {
        this.f6682 = 2;
        long millis = TimeUnit.MINUTES.toMillis(90L);
        this.f6681 = r4;
        this.f6683 = c3433;
        this.f6685 = millis;
        this.f6686 = new Object();
        this.f6684 = new LinkedHashMap();
    }

    public /* synthetic */ C1643(C5313 c5313, long j) {
        this.f6682 = 3;
        this.f6684 = c5313;
        AbstractC3659.m7680("health_monitor");
        AbstractC3659.m7686(j > 0);
        this.f6681 = "health_monitor:start";
        this.f6683 = "health_monitor:count";
        this.f6686 = "health_monitor:value";
        this.f6685 = j;
    }

    public /* synthetic */ C1643(C5337 c5337) {
        this.f6682 = 4;
        this.f6684 = c5337;
    }

    @Override // p073.InterfaceC1648
    public synchronized void clear() {
        try {
            try {
                C4335 m4501 = m4501();
                m4501.close();
                AbstractC4340.m8801(m4501.f16129);
            } catch (IOException e) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                }
            }
        } finally {
            m4496();
        }
    }

    public String toString() {
        switch (this.f6682) {
            case 1:
                return "TreeConnect[" + this.f6685 + "](" + ((C2921) this.f6681) + ")";
            default:
                return super.toString();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public synchronized void m4496() {
        this.f6684 = null;
    }

    @Override // p073.InterfaceC1648
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public File mo4497(InterfaceC1141 interfaceC1141) {
        String m9560 = ((C4790) this.f6681).m9560(interfaceC1141);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            String str = "Get: Obtained: " + m9560 + " for for Key: " + interfaceC1141;
        }
        try {
            ʽ m8791 = m4501().m8791(m9560);
            if (m8791 != null) {
                return ((File[]) m8791.ᴵˊ)[0];
            }
            return null;
        } catch (IOException e) {
            return Log.isLoggable("DiskLruCacheWrapper", 5) ? null : null;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m4498(C3432 c3432) {
        RunnableC0786 runnableC0786 = new RunnableC0786(this, 23, c3432);
        synchronized (this.f6686) {
        }
        ˑﹳ r4 = (ˑﹳ) this.f6681;
        ((Handler) r4.ᴵˊ).postDelayed(runnableC0786, this.f6685);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007e, code lost:
    
        if (r2 < java.lang.Math.max(0, ((java.lang.Integer) p447.AbstractC5321.f20090.m10388(null)).intValue())) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0097, code lost:
    
        if (r2 >= java.lang.Math.max(0, ((java.lang.Integer) p447.AbstractC5321.f20090.m10388(null)).intValue())) goto L24;
     */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m4499(long r11, com.google.android.gms.internal.measurement.C0414 r13) {
        /*
            r10 = this;
            java.lang.Object r0 = r10.f6686
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            if (r0 != 0) goto Ld
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r10.f6686 = r0
        Ld:
            java.lang.Object r0 = r10.f6683
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            if (r0 != 0) goto L1a
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r10.f6683 = r0
        L1a:
            java.lang.Object r0 = r10.f6686
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            boolean r0 = r0.isEmpty()
            r1 = 0
            if (r0 != 0) goto L45
            java.lang.Object r0 = r10.f6686
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            java.lang.Object r0 = r0.get(r1)
            com.google.android.gms.internal.measurement.ٴʿ r0 = (com.google.android.gms.internal.measurement.C0414) r0
            long r2 = r0.m1820()
            r4 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 / r4
            r6 = 60
            long r2 = r2 / r6
            long r2 = r2 / r6
            long r8 = r13.m1820()
            long r8 = r8 / r4
            long r8 = r8 / r6
            long r8 = r8 / r6
            int r0 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r0 != 0) goto Lcc
        L45:
            long r2 = r10.f6685
            int r0 = r13.m1231()
            long r4 = (long) r0
            long r2 = r2 + r4
            java.lang.Object r0 = r10.f6684
            ﹶﾞ.ᵢי r0 = (p447.C5337) r0
            ﹶﾞ.ᵎﹶ r4 = r0.m10639()
            ﹶﾞ.ˈٴ r5 = p447.AbstractC5321.f20104
            r6 = 0
            boolean r4 = r4.m10577(r6, r5)
            if (r4 == 0) goto L81
            java.lang.Object r4 = r10.f6686
            java.util.ArrayList r4 = (java.util.ArrayList) r4
            boolean r4 = r4.isEmpty()
            if (r4 != 0) goto L9a
            r0.m10639()
            ﹶﾞ.ˈٴ r4 = p447.AbstractC5321.f20090
            java.lang.Object r4 = r4.m10388(r6)
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r4 = r4.intValue()
            int r4 = java.lang.Math.max(r1, r4)
            long r4 = (long) r4
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 >= 0) goto Lcc
            goto L9a
        L81:
            r0.m10639()
            ﹶﾞ.ˈٴ r4 = p447.AbstractC5321.f20090
            java.lang.Object r4 = r4.m10388(r6)
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r4 = r4.intValue()
            int r4 = java.lang.Math.max(r1, r4)
            long r4 = (long) r4
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 < 0) goto L9a
            goto Lcc
        L9a:
            r10.f6685 = r2
            java.lang.Object r2 = r10.f6686
            java.util.ArrayList r2 = (java.util.ArrayList) r2
            r2.add(r13)
            java.lang.Object r13 = r10.f6683
            java.util.ArrayList r13 = (java.util.ArrayList) r13
            java.lang.Long r11 = java.lang.Long.valueOf(r11)
            r13.add(r11)
            java.lang.Object r11 = r10.f6686
            java.util.ArrayList r11 = (java.util.ArrayList) r11
            int r11 = r11.size()
            r0.m10639()
            ﹶﾞ.ˈٴ r12 = p447.AbstractC5321.f20140
            java.lang.Object r12 = r12.m10388(r6)
            java.lang.Integer r12 = (java.lang.Integer) r12
            int r12 = r12.intValue()
            r13 = 1
            int r12 = java.lang.Math.max(r13, r12)
            if (r11 < r12) goto Lcd
        Lcc:
            return r1
        Lcd:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: p073.C1643.m4499(long, com.google.android.gms.internal.measurement.ٴʿ):boolean");
    }

    @Override // p073.InterfaceC1648
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void mo4500(InterfaceC1141 interfaceC1141, ˑי.ʽ r9) {
        C1647 c1647;
        boolean z;
        String m9560 = ((C4790) this.f6681).m9560(interfaceC1141);
        ⁱי r3 = (ⁱי) this.f6686;
        synchronized (r3) {
            try {
                c1647 = (C1647) ((HashMap) r3.ᴵˊ).get(m9560);
                if (c1647 == null) {
                    c1647 = ((C1642) r3.ʽʽ).m4495();
                    ((HashMap) r3.ᴵˊ).put(m9560, c1647);
                }
                c1647.f6695++;
            } catch (Throwable th) {
                throw th;
            }
        }
        c1647.f6696.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                String str = "Put: Obtained: " + m9560 + " for for Key: " + interfaceC1141;
            }
            try {
                C4335 m4501 = m4501();
                if (m4501.m8791(m9560) == null) {
                    C0229 m8797 = m4501.m8797(m9560);
                    if (m8797 == null) {
                        throw new IllegalStateException("Had two simultaneous puts for: ".concat(m9560));
                    }
                    try {
                        if (((InterfaceC1145) r9.ʾˋ).mo3578(r9.ᴵˊ, m8797.m1141(), (C1144) r9.ʽʽ)) {
                            C4335.m8785((C4335) m8797.f1645, m8797, true);
                            m8797.f1644 = true;
                        }
                        if (!z) {
                            try {
                                m8797.m1139();
                            } catch (IOException unused) {
                            }
                        }
                    } finally {
                        if (!m8797.f1644) {
                            try {
                                m8797.m1139();
                            } catch (IOException unused2) {
                            }
                        }
                    }
                }
            } catch (IOException e) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                }
            }
        } finally {
            ((ⁱי) this.f6686).ʽʽ(m9560);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public synchronized C4335 m4501() {
        try {
            if (((C4335) this.f6684) == null) {
                this.f6684 = C4335.m8789((File) this.f6683, this.f6685);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (C4335) this.f6684;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m4502(C3432 c3432) {
        Runnable runnable;
        synchronized (this.f6686) {
            runnable = (Runnable) ((LinkedHashMap) this.f6684).remove(c3432);
        }
        if (runnable != null) {
            ((Handler) ((ˑﹳ) this.f6681).ᴵˊ).removeCallbacks(runnable);
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void m4503() {
        C5313 c5313 = (C5313) this.f6684;
        c5313.ⁱᴵ();
        ((C5322) ((ᵎﹶ) c5313).ʾˋ).f20206.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor edit = c5313.m10545().edit();
        edit.remove((String) this.f6683);
        edit.remove((String) this.f6686);
        edit.putLong((String) this.f6681, currentTimeMillis);
        edit.apply();
    }
}
