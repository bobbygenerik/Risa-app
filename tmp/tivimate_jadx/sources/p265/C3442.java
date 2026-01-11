package p265;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import androidx.leanback.widget.ʻٴ;
import com.parse.ˊﾞ;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import p033.C1182;
import p073.C1643;
import p113.AbstractC1971;
import p126.InterfaceC2136;
import p152.AbstractC2444;
import p171.C2640;
import p179.RunnableC2689;
import p229.C3125;
import p240.C3231;
import p240.C3232;
import p262.C3417;
import p262.C3432;
import p262.C3433;
import p262.InterfaceC3425;
import p262.InterfaceC3436;
import p322.C3965;
import p322.C3966;
import p322.C3980;
import p322.EnumC3961;
import p324.AbstractC3999;
import p324.AbstractC4017;
import p324.InterfaceC4036;
import p396.AbstractC4736;
import p396.AbstractC4737;
import p396.C4742;
import p396.C4743;
import p396.InterfaceC4744;
import ʼˋ.ᵔʾ;
import ˉᵎ.ⁱˊ;
import ˊⁱ.ˑﹳ;
import ᐧᵎ.ᵢי;

/* renamed from: ـˉ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3442 implements InterfaceC3425, InterfaceC4744, InterfaceC3436 {

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static final String f13506 = C3965.m8128("GreedyScheduler");

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C3444 f13507;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Context f13508;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final ᵢי f13509;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f13510;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C3433 f13511;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C3417 f13514;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public Boolean f13517;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C3980 f13518;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C1182 f13519;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final C1643 f13520;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final HashMap f13515 = new HashMap();

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Object f13516 = new Object();

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C3125 f13512 = new C3125(new C2640(1));

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final HashMap f13513 = new HashMap();

    public C3442(Context context, C3980 c3980, ʻٴ r5, C3417 c3417, C3433 c3433, ᵢי r8) {
        this.f13508 = context;
        ˑﹳ r3 = c3980.f15343;
        this.f13507 = new C3444(this, r3, c3980.f15339);
        this.f13520 = new C1643(r3, c3433);
        this.f13509 = r8;
        this.f13519 = new C1182(r5);
        this.f13518 = c3980;
        this.f13514 = c3417;
        this.f13511 = c3433;
    }

    @Override // p262.InterfaceC3425
    /* renamed from: ʽ */
    public final boolean mo7317() {
        return false;
    }

    @Override // p262.InterfaceC3436
    /* renamed from: ˈ */
    public final void mo1037(C3232 c3232, boolean z) {
        C3432 m6816 = this.f13512.m6816(c3232);
        if (m6816 != null) {
            this.f13520.m4502(m6816);
        }
        m7357(c3232);
        if (z) {
            return;
        }
        synchronized (this.f13516) {
            this.f13513.remove(c3232);
        }
    }

    @Override // p396.InterfaceC4744
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo7355(C3231 c3231, AbstractC4737 abstractC4737) {
        C3232 c3232 = ⁱˊ.ʼᐧ(c3231);
        boolean z = abstractC4737 instanceof C4743;
        C3433 c3433 = this.f13511;
        C1643 c1643 = this.f13520;
        String str = f13506;
        C3125 c3125 = this.f13512;
        if (z) {
            if (c3125.m6851(c3232)) {
                return;
            }
            C3965.m8127().m8133(str, "Constraints met: Scheduling work ID " + c3232);
            C3432 m6843 = c3125.m6843(c3232);
            c1643.m4498(m6843);
            ((ᵢי) c3433.f13456).ʼˎ(new ˊﾞ(c3433, m6843, (Object) null, 6));
            return;
        }
        C3965.m8127().m8133(str, "Constraints not met: Cancelling work ID " + c3232);
        C3432 m6816 = c3125.m6816(c3232);
        if (m6816 != null) {
            c1643.m4502(m6816);
            c3433.m7335(m6816, ((C4742) abstractC4737).f17901);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long m7356(C3231 c3231) {
        long max;
        synchronized (this.f13516) {
            try {
                C3232 c3232 = ⁱˊ.ʼᐧ(c3231);
                C3443 c3443 = (C3443) this.f13513.get(c3232);
                if (c3443 == null) {
                    int i = c3231.f12335;
                    this.f13518.f15339.getClass();
                    c3443 = new C3443(i, System.currentTimeMillis());
                    this.f13513.put(c3232, c3443);
                }
                max = (Math.max((c3231.f12335 - c3443.f13522) - 5, 0) * 30000) + c3443.f13521;
            } catch (Throwable th) {
                throw th;
            }
        }
        return max;
    }

    @Override // p262.InterfaceC3425
    /* renamed from: ⁱˊ */
    public final void mo7318(String str) {
        List<C3432> m5896;
        Runnable runnable;
        String str2 = f13506;
        if (this.f13517 == null) {
            this.f13517 = Boolean.valueOf(AbstractC1971.m4957(this.f13508));
        }
        if (!this.f13517.booleanValue()) {
            C3965.m8127().m8134(str2, "Ignoring schedule request in non-main process");
            return;
        }
        if (!this.f13510) {
            this.f13514.m7309(this);
            this.f13510 = true;
        }
        C3965.m8127().m8133(str2, "Cancelling work ID " + str);
        C3444 c3444 = this.f13507;
        if (c3444 != null && (runnable = (Runnable) c3444.f13525.remove(str)) != null) {
            ((Handler) c3444.f13526.ᴵˊ).removeCallbacks(runnable);
        }
        C3125 c3125 = this.f13512;
        synchronized (c3125.f11941) {
            m5896 = ((C2640) c3125.f11943).m5896(str);
        }
        for (C3432 c3432 : m5896) {
            this.f13520.m4502(c3432);
            this.f13511.m7335(c3432, -512);
        }
    }

    @Override // p262.InterfaceC3425
    /* renamed from: ﹳٴ */
    public final void mo7319(C3231... c3231Arr) {
        if (this.f13517 == null) {
            this.f13517 = Boolean.valueOf(AbstractC1971.m4957(this.f13508));
        }
        if (!this.f13517.booleanValue()) {
            C3965.m8127().m8134(f13506, "Ignoring schedule request in a secondary process");
            return;
        }
        if (!this.f13510) {
            this.f13514.m7309(this);
            this.f13510 = true;
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (C3231 c3231 : c3231Arr) {
            if (!this.f13512.m6851(ⁱˊ.ʼᐧ(c3231))) {
                long max = Math.max(c3231.m7061(), m7356(c3231));
                this.f13518.f15339.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                if (c3231.f12340 == EnumC3961.f15274) {
                    if (currentTimeMillis < max) {
                        C3444 c3444 = this.f13507;
                        if (c3444 != null) {
                            ˑﹳ r8 = c3444.f13526;
                            HashMap hashMap = c3444.f13525;
                            Runnable runnable = (Runnable) hashMap.remove(c3231.f12341);
                            if (runnable != null) {
                                ((Handler) r8.ᴵˊ).removeCallbacks(runnable);
                            }
                            RunnableC2689 runnableC2689 = new RunnableC2689(c3444, 11, c3231);
                            hashMap.put(c3231.f12341, runnableC2689);
                            c3444.f13524.getClass();
                            ((Handler) r8.ᴵˊ).postDelayed(runnableC2689, max - System.currentTimeMillis());
                        }
                    } else if (!AbstractC2444.m5562(C3966.f15288, c3231.f12327)) {
                        C3966 c3966 = c3231.f12327;
                        if (c3966.f15291) {
                            C3965.m8127().m8133(f13506, "Ignoring " + c3231 + ". Requires device idle.");
                        } else if (Build.VERSION.SDK_INT < 24 || !c3966.m8135()) {
                            hashSet.add(c3231);
                            hashSet2.add(c3231.f12341);
                        } else {
                            C3965.m8127().m8133(f13506, "Ignoring " + c3231 + ". Requires ContentUri triggers.");
                        }
                    } else if (!this.f13512.m6851(ⁱˊ.ʼᐧ(c3231))) {
                        C3965.m8127().m8133(f13506, "Starting work for " + c3231.f12341);
                        C3125 c3125 = this.f13512;
                        c3125.getClass();
                        C3432 m6843 = c3125.m6843(ⁱˊ.ʼᐧ(c3231));
                        this.f13520.m4498(m6843);
                        C3433 c3433 = this.f13511;
                        ((ᵢי) c3433.f13456).ʼˎ(new ˊﾞ(c3433, m6843, (Object) null, 6));
                    }
                }
            }
        }
        synchronized (this.f13516) {
            try {
                try {
                    if (!hashSet.isEmpty()) {
                        C3965.m8127().m8133(f13506, "Starting tracking for " + TextUtils.join(",", hashSet2));
                        Iterator it = hashSet.iterator();
                        while (it.hasNext()) {
                            C3231 c32312 = (C3231) it.next();
                            C3232 c3232 = ⁱˊ.ʼᐧ(c32312);
                            if (!this.f13515.containsKey(c3232)) {
                                C1182 c1182 = this.f13519;
                                AbstractC4017 abstractC4017 = (AbstractC4017) this.f13509.ᴵˊ;
                                String str = AbstractC4736.f17887;
                                this.f13515.put(c3232, AbstractC3999.m8168(AbstractC3999.m8179(abstractC4017), null, new ᵔʾ(c1182, c32312, this, (InterfaceC2136) null, 23), 3));
                            }
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m7357(C3232 c3232) {
        InterfaceC4036 interfaceC4036;
        synchronized (this.f13516) {
            interfaceC4036 = (InterfaceC4036) this.f13515.remove(c3232);
        }
        if (interfaceC4036 != null) {
            C3965.m8127().m8133(f13506, "Stopping tracking for " + c3232);
            interfaceC4036.mo3899(null);
        }
    }
}
