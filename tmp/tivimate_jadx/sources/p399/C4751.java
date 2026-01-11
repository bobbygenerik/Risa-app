package p399;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.support.v4.media.session.AbstractC0001;
import android.util.Log;
import com.bumptech.glide.C0233;
import com.bumptech.glide.EnumC0235;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.ˈ;
import com.parse.ٴʼ;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p010.AbstractC0844;
import p031.C1144;
import p031.InterfaceC1141;
import p066.InterfaceC1615;
import p066.InterfaceC1616;
import p080.C1698;
import p080.C1709;
import p080.C1714;
import p080.InterfaceC1710;
import p087.AbstractC1746;
import p087.AbstractC1747;
import p087.AbstractC1751;
import p087.C1739;
import p117.InterfaceC1991;
import p133.C2200;
import ʿʿ.ﹳٴ;

/* renamed from: ⁱⁱ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4751 implements InterfaceC4748, InterfaceC1615 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final boolean f17910 = Log.isLoggable("GlideRequest", 2);

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public Drawable f17911;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public boolean f17912;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f17913;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public InterfaceC1710 f17914;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f17915;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public Drawable f17916;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f17917;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public int f17918;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int f17919;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC4749 f17920;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final List f17921;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final ﹳٴ f17922;

    /* renamed from: ˏי, reason: contains not printable characters */
    public Drawable f17923;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C0233 f17924;

    /* renamed from: יـ, reason: contains not printable characters */
    public volatile C1698 f17925;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public int f17926;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final EnumC0235 f17927;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Class f17928;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final InterfaceC1991 f17929;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final AbstractC4754 f17930;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public ٴʼ f17931;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final RuntimeException f17932;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2200 f17933;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f17934;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public long f17935;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final InterfaceC1616 f17936;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object f17937;

    /* JADX WARN: Type inference failed for: r0v3, types: [ˈﹳ.ˑﹳ, java.lang.Object] */
    public C4751(Context context, C0233 c0233, Object obj, Object obj2, Class cls, AbstractC4754 abstractC4754, int i, int i2, EnumC0235 enumC0235, InterfaceC1616 interfaceC1616, ArrayList arrayList, InterfaceC4749 interfaceC4749, C1698 c1698, InterfaceC1991 interfaceC1991) {
        ﹳٴ r2 = AbstractC1751.f7115;
        this.f17934 = f17910 ? String.valueOf(hashCode()) : null;
        this.f17933 = new Object();
        this.f17915 = obj;
        this.f17924 = c0233;
        this.f17937 = obj2;
        this.f17928 = cls;
        this.f17930 = abstractC4754;
        this.f17913 = i;
        this.f17919 = i2;
        this.f17927 = enumC0235;
        this.f17936 = interfaceC1616;
        this.f17921 = arrayList;
        this.f17920 = interfaceC4749;
        this.f17925 = c1698;
        this.f17929 = interfaceC1991;
        this.f17922 = r2;
        this.f17917 = 1;
        if (this.f17932 == null && ((Map) c0233.f1659.ʾˋ).containsKey(ˈ.class)) {
            this.f17932 = new RuntimeException("Glide request origin trace");
        }
    }

    @Override // p399.InterfaceC4748
    public final void clear() {
        synchronized (this.f17915) {
            try {
                if (this.f17912) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f17933.m5200();
                if (this.f17917 == 6) {
                    return;
                }
                m9503();
                InterfaceC1710 interfaceC1710 = this.f17914;
                if (interfaceC1710 != null) {
                    this.f17914 = null;
                } else {
                    interfaceC1710 = null;
                }
                InterfaceC4749 interfaceC4749 = this.f17920;
                if (interfaceC4749 == null || interfaceC4749.mo9494(this)) {
                    this.f17936.mo1185(m9499());
                }
                this.f17917 = 6;
                if (interfaceC1710 != null) {
                    this.f17925.getClass();
                    C1698.m4634(interfaceC1710);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p399.InterfaceC4748
    public final boolean isRunning() {
        boolean z;
        synchronized (this.f17915) {
            int i = this.f17917;
            z = i == 2 || i == 3;
        }
        return z;
    }

    public final String toString() {
        Object obj;
        Class cls;
        synchronized (this.f17915) {
            obj = this.f17937;
            cls = this.f17928;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m9498(String str) {
        StringBuilder m3017 = AbstractC0844.m3017(str, " this: ");
        m3017.append(this.f17934);
        m3017.toString();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Drawable m9499() {
        if (this.f17916 == null) {
            this.f17916 = this.f17930.f17963;
        }
        return this.f17916;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m9500(GlideException glideException, int i) {
        boolean z;
        this.f17933.m5200();
        synchronized (this.f17915) {
            try {
                glideException.getClass();
                int i2 = this.f17924.f1653;
                if (i2 <= i) {
                    String str = "Load failed for [" + this.f17937 + "] with dimensions [" + this.f17926 + "x" + this.f17918 + "]";
                    if (i2 <= 4) {
                        glideException.m1125();
                    }
                }
                Drawable drawable = null;
                this.f17931 = null;
                this.f17917 = 5;
                InterfaceC4749 interfaceC4749 = this.f17920;
                if (interfaceC4749 != null) {
                    interfaceC4749.mo9493(this);
                }
                boolean z2 = true;
                this.f17912 = true;
                try {
                    List<InterfaceC4750> list = this.f17921;
                    if (list != null) {
                        z = false;
                        for (InterfaceC4750 interfaceC4750 : list) {
                            InterfaceC4749 interfaceC47492 = this.f17920;
                            if (interfaceC47492 != null) {
                                interfaceC47492.getRoot().mo9489();
                            }
                            z |= interfaceC4750.m9497();
                        }
                    } else {
                        z = false;
                    }
                    if (!z) {
                        InterfaceC4749 interfaceC47493 = this.f17920;
                        if (interfaceC47493 != null && !interfaceC47493.mo9492(this)) {
                            z2 = false;
                        }
                        if (this.f17937 == null) {
                            if (this.f17911 == null) {
                                this.f17930.getClass();
                                this.f17911 = null;
                            }
                            drawable = this.f17911;
                        }
                        if (drawable == null) {
                            if (this.f17923 == null) {
                                this.f17923 = this.f17930.f17955;
                            }
                            drawable = this.f17923;
                        }
                        if (drawable == null) {
                            drawable = m9499();
                        }
                        this.f17936.mo1190(drawable);
                    }
                } finally {
                    this.f17912 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ˈ */
    public final void mo9485() {
        synchronized (this.f17915) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m9501(int i, int i2) {
        C4751 c4751 = this;
        int i3 = i;
        c4751.f17933.m5200();
        Object obj = c4751.f17915;
        synchronized (obj) {
            try {
                try {
                    boolean z = f17910;
                    if (z) {
                        c4751.m9498("Got onSizeReady in " + AbstractC1747.m4706(c4751.f17935));
                    }
                    if (c4751.f17917 == 3) {
                        c4751.f17917 = 2;
                        c4751.f17930.getClass();
                        if (i3 != Integer.MIN_VALUE) {
                            i3 = Math.round(i3 * 1.0f);
                        }
                        c4751.f17926 = i3;
                        c4751.f17918 = i2 == Integer.MIN_VALUE ? i2 : Math.round(1.0f * i2);
                        if (z) {
                            c4751.m9498("finished setup for calling load in " + AbstractC1747.m4706(c4751.f17935));
                        }
                        C1698 c1698 = c4751.f17925;
                        C0233 c0233 = c4751.f17924;
                        Object obj2 = c4751.f17937;
                        AbstractC4754 abstractC4754 = c4751.f17930;
                        InterfaceC1141 interfaceC1141 = abstractC4754.f17965;
                        try {
                            int i4 = c4751.f17926;
                            int i5 = c4751.f17918;
                            Class cls = abstractC4754.f17953;
                            try {
                                Class cls2 = c4751.f17928;
                                EnumC0235 enumC0235 = c4751.f17927;
                                C1714 c1714 = abstractC4754.f17962;
                                try {
                                    C1739 c1739 = abstractC4754.f17966;
                                    boolean z2 = abstractC4754.f17960;
                                    boolean z3 = abstractC4754.f17959;
                                    try {
                                        C1144 c1144 = abstractC4754.f17964;
                                        boolean z4 = abstractC4754.f17957;
                                        boolean z5 = abstractC4754.f17958;
                                        ﹳٴ r0 = c4751.f17922;
                                        c4751 = obj;
                                        try {
                                            c4751.f17931 = c1698.m4639(c0233, obj2, interfaceC1141, i4, i5, cls, cls2, enumC0235, c1714, c1739, z2, z3, c1144, z4, z5, c4751, r0);
                                            if (c4751.f17917 != 2) {
                                                c4751.f17931 = null;
                                            }
                                            if (z) {
                                                c4751.m9498("finished onSizeReady in " + AbstractC1747.m4706(c4751.f17935));
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        c4751 = obj;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    c4751 = obj;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                c4751 = obj;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            c4751 = obj;
                        }
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (Throwable th7) {
                th = th7;
                c4751 = obj;
            }
        }
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ˑﹳ */
    public final boolean mo9486() {
        boolean z;
        synchronized (this.f17915) {
            z = this.f17917 == 6;
        }
        return z;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m9502(InterfaceC1710 interfaceC1710, int i, boolean z) {
        this.f17933.m5200();
        InterfaceC1710 interfaceC17102 = null;
        try {
            synchronized (this.f17915) {
                try {
                    this.f17931 = null;
                    if (interfaceC1710 == null) {
                        m9500(new GlideException("Expected to receive a Resource<R> with an object of " + this.f17928 + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = interfaceC1710.get();
                    try {
                        if (obj != null && this.f17928.isAssignableFrom(obj.getClass())) {
                            InterfaceC4749 interfaceC4749 = this.f17920;
                            if (interfaceC4749 == null || interfaceC4749.mo9491(this)) {
                                m9504(interfaceC1710, obj, i);
                                return;
                            }
                            this.f17914 = null;
                            this.f17917 = 4;
                            this.f17925.getClass();
                            C1698.m4634(interfaceC1710);
                        }
                        this.f17914 = null;
                        StringBuilder sb = new StringBuilder("Expected to receive an object of ");
                        sb.append(this.f17928);
                        sb.append(" but instead got ");
                        sb.append(obj != null ? obj.getClass() : "");
                        sb.append("{");
                        sb.append(obj);
                        sb.append("} inside Resource{");
                        sb.append(interfaceC1710);
                        sb.append("}.");
                        sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        m9500(new GlideException(sb.toString()), 5);
                        this.f17925.getClass();
                        C1698.m4634(interfaceC1710);
                    } catch (Throwable th) {
                        interfaceC17102 = interfaceC1710;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (interfaceC17102 != null) {
                this.f17925.getClass();
                C1698.m4634(interfaceC17102);
            }
            throw th3;
        }
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ᵎﹶ */
    public final boolean mo9487(InterfaceC4748 interfaceC4748) {
        int i;
        int i2;
        Object obj;
        Class cls;
        AbstractC4754 abstractC4754;
        EnumC0235 enumC0235;
        int size;
        int i3;
        int i4;
        Object obj2;
        Class cls2;
        AbstractC4754 abstractC47542;
        EnumC0235 enumC02352;
        int size2;
        if (!(interfaceC4748 instanceof C4751)) {
            return false;
        }
        synchronized (this.f17915) {
            try {
                i = this.f17913;
                i2 = this.f17919;
                obj = this.f17937;
                cls = this.f17928;
                abstractC4754 = this.f17930;
                enumC0235 = this.f17927;
                List list = this.f17921;
                size = list != null ? list.size() : 0;
            } finally {
            }
        }
        C4751 c4751 = (C4751) interfaceC4748;
        synchronized (c4751.f17915) {
            try {
                i3 = c4751.f17913;
                i4 = c4751.f17919;
                obj2 = c4751.f17937;
                cls2 = c4751.f17928;
                abstractC47542 = c4751.f17930;
                enumC02352 = c4751.f17927;
                List list2 = c4751.f17921;
                size2 = list2 != null ? list2.size() : 0;
            } finally {
            }
        }
        if (i == i3 && i2 == i4) {
            char[] cArr = AbstractC1746.f7105;
            if ((obj == null ? obj2 == null : obj.equals(obj2)) && cls.equals(cls2)) {
                if ((abstractC4754 == null ? abstractC47542 == null : abstractC4754.m9517(abstractC47542)) && enumC0235 == enumC02352 && size == size2) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ᵔᵢ */
    public final boolean mo9488() {
        boolean z;
        synchronized (this.f17915) {
            z = this.f17917 == 4;
        }
        return z;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9503() {
        if (this.f17912) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
        this.f17933.m5200();
        this.f17936.mo1186(this);
        ٴʼ r0 = this.f17931;
        if (r0 != null) {
            synchronized (((C1698) r0.ˈٴ)) {
                ((C1709) r0.ᴵˊ).m4647((C4751) r0.ʽʽ);
            }
            this.f17931 = null;
        }
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ﹳٴ */
    public final boolean mo9489() {
        boolean z;
        synchronized (this.f17915) {
            z = this.f17917 == 4;
        }
        return z;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m9504(InterfaceC1710 interfaceC1710, Object obj, int i) {
        InterfaceC4749 interfaceC4749 = this.f17920;
        if (interfaceC4749 != null) {
            interfaceC4749.getRoot().mo9489();
        }
        this.f17917 = 4;
        this.f17914 = interfaceC1710;
        if (this.f17924.f1653 <= 3) {
            String str = "Finished loading " + obj.getClass().getSimpleName() + " from " + AbstractC0001.m5(i) + " for " + this.f17937 + " with size [" + this.f17926 + "x" + this.f17918 + "] in " + AbstractC1747.m4706(this.f17935) + " ms";
        }
        if (interfaceC4749 != null) {
            interfaceC4749.mo9495(this);
        }
        this.f17912 = true;
        try {
            List list = this.f17921;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((InterfaceC4750) it.next()).m9496(obj);
                }
            }
            this.f17936.mo1192(obj, this.f17929.mo4972(i));
            this.f17912 = false;
        } catch (Throwable th) {
            this.f17912 = false;
            throw th;
        }
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ﾞᴵ */
    public final void mo9490() {
        synchronized (this.f17915) {
            try {
                if (this.f17912) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f17933.m5200();
                int i = AbstractC1747.f7106;
                this.f17935 = SystemClock.elapsedRealtimeNanos();
                if (this.f17937 == null) {
                    if (AbstractC1746.m4697(this.f17913, this.f17919)) {
                        this.f17926 = this.f17913;
                        this.f17918 = this.f17919;
                    }
                    if (this.f17911 == null) {
                        this.f17930.getClass();
                        this.f17911 = null;
                    }
                    m9500(new GlideException("Received null model"), this.f17911 == null ? 5 : 3);
                    return;
                }
                int i2 = this.f17917;
                if (i2 == 2) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (i2 == 4) {
                    m9502(this.f17914, 5, false);
                    return;
                }
                List<InterfaceC4750> list = this.f17921;
                if (list != null) {
                    for (InterfaceC4750 interfaceC4750 : list) {
                    }
                }
                this.f17917 = 3;
                if (AbstractC1746.m4697(this.f17913, this.f17919)) {
                    m9501(this.f17913, this.f17919);
                } else {
                    this.f17936.mo1187(this);
                }
                int i3 = this.f17917;
                if (i3 == 2 || i3 == 3) {
                    InterfaceC4749 interfaceC4749 = this.f17920;
                    if (interfaceC4749 == null || interfaceC4749.mo9492(this)) {
                        this.f17936.mo1188(m9499());
                    }
                }
                if (f17910) {
                    m9498("finished run method in " + AbstractC1747.m4706(this.f17935));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
