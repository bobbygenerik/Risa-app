package p080;

import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.C0233;
import com.bumptech.glide.EnumC0235;
import com.bumptech.glide.load.data.InterfaceC0220;
import com.bumptech.glide.load.data.InterfaceC0222;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Collections;
import p004.C0803;
import p010.AbstractC0844;
import p027.C1090;
import p031.C1143;
import p031.C1144;
import p031.InterfaceC1141;
import p031.InterfaceC1142;
import p035.AbstractC1220;
import p087.AbstractC1747;
import p087.C1739;
import p133.C2200;
import p133.InterfaceC2201;
import p238.InterfaceC3203;
import p307.AbstractC3740;
import p319.C3934;
import p366.C4464;
import ˑי.ʽ;
import ᵢ.ﹳٴ;

/* renamed from: ʿʾ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC1695 implements InterfaceC1706, Runnable, Comparable, InterfaceC2201 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public Object f6898;

    /* renamed from: ʿ, reason: contains not printable characters */
    public volatile InterfaceC1708 f6901;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public volatile boolean f6902;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f6903;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public C1144 f6904;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3934 f6905;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public InterfaceC1141 f6906;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public InterfaceC0220 f6907;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public C0233 f6908;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public long f6910;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public int f6911;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public int f6912;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public C1709 f6913;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public Thread f6914;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public EnumC0235 f6915;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public int f6917;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public boolean f6918;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public int f6919;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public Object f6921;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final InterfaceC3203 f6922;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public C1702 f6923;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public volatile boolean f6924;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public InterfaceC1141 f6925;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f6926;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public C1714 f6927;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public InterfaceC1141 f6928;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1688 f6900 = new C1688();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayList f6920 = new ArrayList();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2200 f6899 = new Object();

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final ﹳٴ f6909 = new ﹳٴ(6, false);

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C0803 f6916 = new Object();

    /* JADX WARN: Type inference failed for: r0v2, types: [ˈﹳ.ˑﹳ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, ʻˆ.ˑﹳ] */
    public RunnableC1695(C3934 c3934, ﹳٴ r5) {
        this.f6905 = c3934;
        this.f6922 = r5;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        RunnableC1695 runnableC1695 = (RunnableC1695) obj;
        int ordinal = this.f6915.ordinal() - runnableC1695.f6915.ordinal();
        return ordinal == 0 ? this.f6911 - runnableC1695.f6911 : ordinal;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0220 interfaceC0220 = this.f6907;
        try {
            try {
                if (this.f6924) {
                    m4618();
                    if (interfaceC0220 != null) {
                        interfaceC0220.mo1112();
                        return;
                    }
                    return;
                }
                m4627();
                if (interfaceC0220 != null) {
                    interfaceC0220.mo1112();
                }
            } catch (Throwable th) {
                if (interfaceC0220 != null) {
                    interfaceC0220.mo1112();
                }
                throw th;
            }
        } catch (C1696 e) {
            throw e;
        } catch (Throwable th2) {
            if (Log.isLoggable("DecodeJob", 3)) {
                String str = "DecodeJob threw unexpectedly, isCancelled: " + this.f6924 + ", stage: " + AbstractC1220.m3787(this.f6917);
            }
            if (this.f6917 != 5) {
                this.f6920.add(th2);
                m4618();
            }
            if (!this.f6924) {
                throw th2;
            }
            throw th2;
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m4615(long j, String str, String str2) {
        StringBuilder m3017 = AbstractC0844.m3017(str, " in ");
        m3017.append(AbstractC1747.m4706(j));
        m3017.append(", load key: ");
        m3017.append(this.f6923);
        m3017.append(str2 != null ? ", ".concat(str2) : "");
        m3017.append(", thread: ");
        m3017.append(Thread.currentThread().getName());
        m3017.toString();
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m4616() {
        this.f6914 = Thread.currentThread();
        int i = AbstractC1747.f7106;
        this.f6910 = SystemClock.elapsedRealtimeNanos();
        boolean z = false;
        while (!this.f6924 && this.f6901 != null && !(z = this.f6901.mo4613())) {
            this.f6917 = m4626(this.f6917);
            this.f6901 = m4624();
            if (this.f6917 == 4) {
                m4621(2);
                return;
            }
        }
        if ((this.f6917 == 6 || this.f6924) && !z) {
            m4618();
        }
    }

    @Override // p080.InterfaceC1706
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo4617(InterfaceC1141 interfaceC1141, Exception exc, InterfaceC0220 interfaceC0220, int i) {
        interfaceC0220.mo1112();
        GlideException glideException = new GlideException("Fetching data failed", Collections.singletonList(exc));
        Class mo1113 = interfaceC0220.mo1113();
        glideException.f1641 = interfaceC1141;
        glideException.f1638 = i;
        glideException.f1640 = mo1113;
        this.f6920.add(glideException);
        if (Thread.currentThread() != this.f6914) {
            m4621(2);
        } else {
            m4616();
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m4618() {
        m4629();
        GlideException glideException = new GlideException("Failed to load resource", new ArrayList(this.f6920));
        C1709 c1709 = this.f6913;
        synchronized (c1709) {
            c1709.f6993 = glideException;
        }
        c1709.m4651();
        m4630();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC1710 m4619(InterfaceC0220 interfaceC0220, Object obj, int i) {
        if (obj == null) {
            return null;
        }
        try {
            int i2 = AbstractC1747.f7106;
            long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            InterfaceC1710 m4622 = m4622(i, obj);
            if (Log.isLoggable("DecodeJob", 2)) {
                m4615(elapsedRealtimeNanos, "Decoded result " + m4622, null);
            }
            return m4622;
        } finally {
            interfaceC0220.mo1112();
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m4620() {
        boolean m2922;
        C0803 c0803 = this.f6916;
        synchronized (c0803) {
            c0803.f3423 = true;
            m2922 = c0803.m2922();
        }
        if (m2922) {
            m4625();
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m4621(int i) {
        this.f6912 = i;
        C1709 c1709 = this.f6913;
        (c1709.f6986 ? c1709.f7001 : c1709.f6990).execute(this);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final InterfaceC1710 m4622(int i, Object obj) {
        Class<?> cls = obj.getClass();
        C1688 c1688 = this.f6900;
        C1694 m4606 = c1688.m4606(cls);
        C1144 c1144 = this.f6904;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z = i == 4 || c1688.f6870;
            C1143 c1143 = C4464.f16704;
            Boolean bool = (Boolean) c1144.m3577(c1143);
            if (bool == null || (bool.booleanValue() && !z)) {
                c1144 = new C1144();
                C1739 c1739 = this.f6904.f4409;
                C1739 c17392 = c1144.f4409;
                c17392.mo4687(c1739);
                c17392.put(c1143, Boolean.valueOf(z));
            }
        }
        C1144 c11442 = c1144;
        InterfaceC0222 m1175 = this.f6908.m1144().m1175(obj);
        try {
            return m4606.m4614(this.f6926, this.f6903, m1175, new C1090(i, 4, this), c11442);
        } finally {
            m1175.mo1105();
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m4623() {
        boolean m2922;
        C0803 c0803 = this.f6916;
        synchronized (c0803) {
            c0803.f3422 = true;
            m2922 = c0803.m2922();
        }
        if (m2922) {
            m4625();
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final InterfaceC1708 m4624() {
        int m3018 = AbstractC0844.m3018(this.f6917);
        C1688 c1688 = this.f6900;
        if (m3018 == 1) {
            return new C1693(c1688, this);
        }
        if (m3018 == 2) {
            return new C1701(c1688.m4610(), c1688, this);
        }
        if (m3018 == 3) {
            return new C1697(c1688, this);
        }
        if (m3018 == 5) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: ".concat(AbstractC1220.m3787(this.f6917)));
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m4625() {
        C0803 c0803 = this.f6916;
        synchronized (c0803) {
            c0803.f3422 = false;
            c0803.f3423 = false;
            c0803.f3421 = false;
        }
        ﹳٴ r0 = this.f6909;
        r0.ᴵˊ = null;
        r0.ʽʽ = null;
        r0.ˈٴ = null;
        C1688 c1688 = this.f6900;
        c1688.f6857 = null;
        c1688.f6859 = null;
        c1688.f6865 = null;
        c1688.f6864 = null;
        c1688.f6863 = null;
        c1688.f6855 = null;
        c1688.f6861 = null;
        c1688.f6858 = null;
        c1688.f6856 = null;
        c1688.f6869.clear();
        c1688.f6871 = false;
        c1688.f6868.clear();
        c1688.f6860 = false;
        this.f6902 = false;
        this.f6908 = null;
        this.f6925 = null;
        this.f6904 = null;
        this.f6915 = null;
        this.f6923 = null;
        this.f6913 = null;
        this.f6917 = 0;
        this.f6901 = null;
        this.f6914 = null;
        this.f6928 = null;
        this.f6921 = null;
        this.f6919 = 0;
        this.f6907 = null;
        this.f6910 = 0L;
        this.f6924 = false;
        this.f6898 = null;
        this.f6920.clear();
        this.f6922.mo3014(this);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int m4626(int i) {
        boolean z;
        boolean z2;
        int m3018 = AbstractC0844.m3018(i);
        if (m3018 == 0) {
            switch (this.f6927.f7011) {
                case 0:
                case 1:
                    z = false;
                    break;
                default:
                    z = true;
                    break;
            }
            if (z) {
                return 2;
            }
            return m4626(2);
        }
        if (m3018 != 1) {
            if (m3018 == 2) {
                return 4;
            }
            if (m3018 == 3 || m3018 == 5) {
                return 6;
            }
            throw new IllegalArgumentException("Unrecognized stage: ".concat(AbstractC1220.m3787(i)));
        }
        switch (this.f6927.f7011) {
            case 0:
                z2 = false;
                break;
            case 1:
            default:
                z2 = true;
                break;
        }
        if (z2) {
            return 3;
        }
        return m4626(3);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m4627() {
        int m3018 = AbstractC0844.m3018(this.f6912);
        if (m3018 == 0) {
            this.f6917 = m4626(1);
            this.f6901 = m4624();
            m4616();
        } else if (m3018 == 1) {
            m4616();
        } else if (m3018 == 2) {
            m4631();
        } else {
            int i = this.f6912;
            throw new IllegalStateException("Unrecognized run reason: ".concat(i != 1 ? i != 2 ? i != 3 ? "null" : "DECODE_DATA" : "SWITCH_TO_SOURCE_SERVICE" : "INITIALIZE"));
        }
    }

    @Override // p080.InterfaceC1706
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo4628(InterfaceC1141 interfaceC1141, Object obj, InterfaceC0220 interfaceC0220, int i, InterfaceC1141 interfaceC11412) {
        this.f6928 = interfaceC1141;
        this.f6921 = obj;
        this.f6907 = interfaceC0220;
        this.f6919 = i;
        this.f6906 = interfaceC11412;
        this.f6918 = interfaceC1141 != this.f6900.m4610().get(0);
        if (Thread.currentThread() != this.f6914) {
            m4621(3);
        } else {
            m4631();
        }
    }

    @Override // p133.InterfaceC2201
    /* renamed from: ﹳٴ */
    public final C2200 mo4506() {
        return this.f6899;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m4629() {
        this.f6899.m5200();
        if (this.f6902) {
            throw new IllegalStateException("Already notified", this.f6920.isEmpty() ? null : (Throwable) AbstractC3740.m7939(1, this.f6920));
        }
        this.f6902 = true;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m4630() {
        boolean m2922;
        C0803 c0803 = this.f6916;
        synchronized (c0803) {
            c0803.f3421 = true;
            m2922 = c0803.m2922();
        }
        if (m2922) {
            m4625();
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m4631() {
        InterfaceC1710 interfaceC1710;
        if (Log.isLoggable("DecodeJob", 2)) {
            m4615(this.f6910, "Retrieved data", "data: " + this.f6921 + ", cache key: " + this.f6928 + ", fetcher: " + this.f6907);
        }
        C1687 c1687 = null;
        try {
            interfaceC1710 = m4619(this.f6907, this.f6921, this.f6919);
        } catch (GlideException e) {
            InterfaceC1141 interfaceC1141 = this.f6906;
            int i = this.f6919;
            e.f1641 = interfaceC1141;
            e.f1638 = i;
            e.f1640 = null;
            this.f6920.add(e);
            interfaceC1710 = null;
        }
        if (interfaceC1710 == null) {
            m4616();
            return;
        }
        int i2 = this.f6919;
        boolean z = this.f6918;
        if (interfaceC1710 instanceof InterfaceC1703) {
            ((InterfaceC1703) interfaceC1710).mo4641();
        }
        boolean z2 = true;
        if (((C1687) this.f6909.ˈٴ) != null) {
            c1687 = (C1687) C1687.f6850.ﾞᴵ();
            c1687.f6853 = false;
            c1687.f6851 = true;
            c1687.f6854 = interfaceC1710;
            interfaceC1710 = c1687;
        }
        m4629();
        C1709 c1709 = this.f6913;
        synchronized (c1709) {
            c1709.f7003 = interfaceC1710;
            c1709.f6987 = i2;
            c1709.f6989 = z;
        }
        c1709.m4652();
        this.f6917 = 5;
        try {
            ﹳٴ r1 = this.f6909;
            if (((C1687) r1.ˈٴ) == null) {
                z2 = false;
            }
            if (z2) {
                C3934 c3934 = this.f6905;
                C1144 c1144 = this.f6904;
                r1.getClass();
                try {
                    c3934.m8106().mo4500((InterfaceC1141) r1.ᴵˊ, new ʽ((InterfaceC1142) r1.ʽʽ, (C1687) r1.ˈٴ, c1144));
                    ((C1687) r1.ˈٴ).m4605();
                } catch (Throwable th) {
                    ((C1687) r1.ˈٴ).m4605();
                    throw th;
                }
            }
            m4623();
        } finally {
            if (c1687 != null) {
                c1687.m4605();
            }
        }
    }
}
