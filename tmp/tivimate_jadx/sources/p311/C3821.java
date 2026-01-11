package p311;

import android.support.v4.media.session.AbstractC0001;
import androidx.leanback.widget.ʻٴ;
import java.io.IOException;
import java.util.ArrayList;
import p027.C1084;
import p035.AbstractC1220;
import p164.C2571;
import p170.C2617;
import p208.AbstractC2944;
import p208.AbstractC2960;
import p208.C2937;
import p208.C2938;
import p208.C2940;
import p208.C2942;
import p208.C2945;
import p208.C2949;
import p208.C2953;
import p208.C2959;
import p208.C2965;
import p208.C2968;
import p208.InterfaceC2947;
import p229.C3125;
import p292.C3632;
import p394.AbstractC4710;
import p394.AbstractC4712;
import ᵢ.ﹳٴ;
import ﹶﾞ.ⁱי;

/* renamed from: ᐧᵢ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3821 implements InterfaceC3801 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object[] f14807;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3810 f14808;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final InterfaceC2947 f14809;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public Throwable f14810;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public volatile boolean f14811;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public C3632 f14812;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f14813;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final InterfaceC3837 f14814;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f14815;

    public C3821(C3810 c3810, Object obj, Object[] objArr, InterfaceC2947 interfaceC2947, InterfaceC3837 interfaceC3837) {
        this.f14808 = c3810;
        this.f14813 = obj;
        this.f14807 = objArr;
        this.f14809 = interfaceC2947;
        this.f14814 = interfaceC3837;
    }

    @Override // p311.InterfaceC3801
    public final void cancel() {
        C3632 c3632;
        this.f14811 = true;
        synchronized (this) {
            c3632 = this.f14812;
        }
        if (c3632 != null) {
            c3632.cancel();
        }
    }

    public final Object clone() {
        return new C3821(this.f14808, this.f14813, this.f14807, this.f14809, this.f14814);
    }

    @Override // p311.InterfaceC3801
    public final InterfaceC3801 clone() {
        return new C3821(this.f14808, this.f14813, this.f14807, this.f14809, this.f14814);
    }

    @Override // p311.InterfaceC3801
    /* renamed from: ʽ */
    public final C3789 mo7977() {
        C3632 m7997;
        synchronized (this) {
            if (this.f14815) {
                throw new IllegalStateException("Already executed.");
            }
            this.f14815 = true;
            m7997 = m7997();
        }
        if (this.f14811) {
            m7997.cancel();
        }
        return m7996(m7997.m7611());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3789 m7996(C2942 c2942) {
        AbstractC2960 abstractC2960 = c2942.f11191;
        C2959 m6475 = c2942.m6475();
        m6475.f11295 = new C3795(abstractC2960.mo4068(), abstractC2960.mo4066());
        C2942 m6492 = m6475.m6492();
        boolean z = m6492.f11185;
        int i = m6492.f11186;
        if (i < 200 || i >= 300) {
            try {
                abstractC2960.mo4067().mo5809(new Object());
                abstractC2960.mo4068();
                abstractC2960.mo4066();
                if (z) {
                    throw new IllegalArgumentException("rawResponse should not be successful response");
                }
                return new C3789(m6492, null);
            } finally {
                abstractC2960.close();
            }
        }
        if (i == 204 || i == 205) {
            if (z) {
                return new C3789(m6492, null);
            }
            throw new IllegalArgumentException("rawResponse must be successful response");
        }
        C3832 c3832 = new C3832(abstractC2960);
        try {
            Object mo8000 = this.f14814.mo8000(c3832);
            if (z) {
                return new C3789(m6492, mo8000);
            }
            throw new IllegalArgumentException("rawResponse must be successful response");
        } catch (RuntimeException e) {
            IOException iOException = c3832.f14835;
            if (iOException == null) {
                throw e;
            }
            throw iOException;
        }
    }

    @Override // p311.InterfaceC3801
    /* renamed from: ˉˆ */
    public final void mo7978(InterfaceC3826 interfaceC3826) {
        C3632 c3632;
        Throwable th;
        synchronized (this) {
            try {
                if (this.f14815) {
                    throw new IllegalStateException("Already executed.");
                }
                this.f14815 = true;
                c3632 = this.f14812;
                th = this.f14810;
                if (c3632 == null && th == null) {
                    try {
                        C3632 m7998 = m7998();
                        this.f14812 = m7998;
                        c3632 = m7998;
                    } catch (Throwable th2) {
                        th = th2;
                        AbstractC3798.m7971(th);
                        this.f14810 = th;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (th != null) {
            interfaceC3826.mo7342(th);
            return;
        }
        if (this.f14811) {
            c3632.cancel();
        }
        c3632.m7610(new C3125(this, interfaceC3826, 12, false));
    }

    @Override // p311.InterfaceC3801
    /* renamed from: ᵎﹶ */
    public final boolean mo7979() {
        boolean z = true;
        if (this.f14811) {
            return true;
        }
        synchronized (this) {
            try {
                C3632 c3632 = this.f14812;
                if (c3632 == null || !c3632.f14209) {
                    z = false;
                }
            } finally {
            }
        }
        return z;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3632 m7997() {
        C3632 c3632 = this.f14812;
        if (c3632 != null) {
            return c3632;
        }
        Throwable th = this.f14810;
        if (th != null) {
            if (th instanceof IOException) {
                throw ((IOException) th);
            }
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            throw ((Error) th);
        }
        try {
            C3632 m7998 = m7998();
            this.f14812 = m7998;
            return m7998;
        } catch (IOException | Error | RuntimeException e) {
            AbstractC3798.m7971(e);
            this.f14810 = e;
            throw e;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3632 m7998() {
        C2617 c2617;
        C2940 m5875;
        C3810 c3810 = this.f14808;
        AbstractC3798[] abstractC3798Arr = c3810.f14746;
        Object[] objArr = this.f14807;
        int length = objArr.length;
        if (length != abstractC3798Arr.length) {
            throw new IllegalArgumentException(AbstractC1220.m3782(AbstractC0001.m16(length, "Argument count (", ") doesn't match expected count ("), abstractC3798Arr.length, ")"));
        }
        C3813 c3813 = new C3813(c3810.f14744, c3810.f14742, c3810.f14745, c3810.f14752, c3810.f14747, c3810.f14748, c3810.f14741, c3810.f14743);
        if (c3810.f14751) {
            length--;
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            arrayList.add(objArr[i]);
            abstractC3798Arr[i].mo7958(c3813, objArr[i]);
        }
        C2617 c26172 = c3813.f14788;
        if (c26172 != null) {
            m5875 = c26172.m5875();
        } else {
            String str = c3813.f14786;
            C2940 c2940 = c3813.f14793;
            c2940.getClass();
            try {
                c2617 = new C2617();
                c2617.m5874(c2940, str);
            } catch (IllegalArgumentException unused) {
                c2617 = null;
            }
            m5875 = c2617 != null ? c2617.m5875() : null;
            if (m5875 == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + c2940 + ", Relative: " + c3813.f14786);
            }
        }
        AbstractC2944 abstractC2944 = c3813.f14790;
        if (abstractC2944 == null) {
            ⁱי r3 = c3813.f14787;
            if (r3 != null) {
                abstractC2944 = new C2949((ArrayList) r3.ᴵˊ, (ArrayList) r3.ʽʽ);
            } else {
                ﹳٴ r32 = c3813.f14785;
                if (r32 != null) {
                    ArrayList arrayList2 = (ArrayList) r32.ˈٴ;
                    if (arrayList2.isEmpty()) {
                        throw new IllegalStateException("Multipart body must have at least one part.");
                    }
                    abstractC2944 = new C2953((C2571) r32.ᴵˊ, (C2968) r32.ʽʽ, AbstractC4712.m9443(arrayList2));
                } else if (c3813.f14792) {
                    long j = 0;
                    AbstractC4710.m9438(j, j, j);
                    abstractC2944 = new C2965(0, new byte[0]);
                }
            }
        }
        C2968 c2968 = c3813.f14791;
        C1084 c1084 = c3813.f14795;
        if (c2968 != null) {
            if (abstractC2944 != null) {
                abstractC2944 = new C2938(abstractC2944, c2968);
            } else {
                c1084.m3437("Content-Type", c2968.f11345);
            }
        }
        ʻٴ r33 = c3813.f14789;
        r33.ʽʽ = m5875;
        r33.ᴵᵔ = c1084.m3432().m6482();
        r33.ʼᐧ(c3813.f14794, abstractC2944);
        r33.ᵢˏ(C3812.class, new C3812(c3810.f14750, this.f14813, c3810.f14749, arrayList));
        C2945 c2945 = new C2945(r33);
        C2937 c2937 = (C2937) this.f14809;
        c2937.getClass();
        return new C3632(c2937, c2945);
    }

    @Override // p311.InterfaceC3801
    /* renamed from: ﹳᐧ */
    public final synchronized C2945 mo7980() {
        try {
        } catch (IOException e) {
            throw new RuntimeException("Unable to create request.", e);
        }
        return m7997().f14216;
    }
}
