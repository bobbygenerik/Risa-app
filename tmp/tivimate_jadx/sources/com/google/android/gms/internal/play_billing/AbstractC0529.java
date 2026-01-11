package com.google.android.gms.internal.play_billing;

import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import p307.AbstractC3740;

/* renamed from: com.google.android.gms.internal.play_billing.ʼـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0529 extends AbstractC0601 {
    private static final Map zzb = new ConcurrentHashMap();
    protected C0650 zzc;
    private int zzd;

    public AbstractC0529() {
        this.zza = 0;
        this.zzd = -1;
        this.zzc = C0650.f2510;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static Object m2040(Method method, AbstractC0529 abstractC0529, Object... objArr) {
        try {
            return method.invoke(abstractC0529, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final boolean m2041(AbstractC0529 abstractC0529, boolean z) {
        byte byteValue = ((Byte) abstractC0529.mo2022(1)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean mo2145 = C0637.f2473.m2245(abstractC0529.getClass()).mo2145(abstractC0529);
        if (z) {
            abstractC0529.mo2022(2);
        }
        return mo2145;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m2042(Class cls, AbstractC0529 abstractC0529) {
        abstractC0529.m2044();
        zzb.put(cls, abstractC0529);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static AbstractC0529 m2043(Class cls) {
        Map map = zzb;
        AbstractC0529 abstractC0529 = (AbstractC0529) map.get(cls);
        if (abstractC0529 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC0529 = (AbstractC0529) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (abstractC0529 != null) {
            return abstractC0529;
        }
        AbstractC0529 abstractC05292 = (AbstractC0529) ((AbstractC0529) AbstractC0641.m2262(cls)).mo2022(6);
        if (abstractC05292 == null) {
            throw new IllegalStateException();
        }
        map.put(cls, abstractC05292);
        return abstractC05292;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return C0637.f2473.m2245(getClass()).mo2144(this, (AbstractC0529) obj);
    }

    public final int hashCode() {
        if (m2045()) {
            return C0637.f2473.m2245(getClass()).mo2152(this);
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int mo2152 = C0637.f2473.m2245(getClass()).mo2152(this);
        this.zza = mo2152;
        return mo2152;
    }

    public final String toString() {
        String obj = super.toString();
        char[] cArr = AbstractC0520.f2286;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        AbstractC0520.m2023(this, sb, 0);
        return sb.toString();
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m2044() {
        this.zzd &= Integer.MAX_VALUE;
    }

    /* renamed from: ˈ */
    public abstract Object mo2022(int i);

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final boolean m2045() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m2046() {
        if (m2045()) {
            int mo2149 = C0637.f2473.m2245(getClass()).mo2149(this);
            if (mo2149 >= 0) {
                return mo2149;
            }
            throw new IllegalStateException(AbstractC3740.m7932(mo2149, "serialized size must be non-negative, was "));
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int mo21492 = C0637.f2473.m2245(getClass()).mo2149(this);
        if (mo21492 < 0) {
            throw new IllegalStateException(AbstractC3740.m7932(mo21492, "serialized size must be non-negative, was "));
        }
        this.zzd = (this.zzd & Integer.MIN_VALUE) | mo21492;
        return mo21492;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final AbstractC0584 m2047() {
        AbstractC0584 abstractC0584 = (AbstractC0584) mo2022(5);
        if (!abstractC0584.f2386.equals(this)) {
            if (!abstractC0584.f2387.m2045()) {
                AbstractC0529 abstractC0529 = (AbstractC0529) abstractC0584.f2386.mo2022(4);
                C0637.f2473.m2245(abstractC0529.getClass()).mo2146(abstractC0529, abstractC0584.f2387);
                abstractC0584.f2387 = abstractC0529;
            }
            AbstractC0529 abstractC05292 = abstractC0584.f2387;
            C0637.f2473.m2245(abstractC05292.getClass()).mo2146(abstractC05292, this);
        }
        return abstractC0584;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0601
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int mo2048(InterfaceC0571 interfaceC0571) {
        if (m2045()) {
            int mo2149 = interfaceC0571.mo2149(this);
            if (mo2149 >= 0) {
                return mo2149;
            }
            throw new IllegalStateException(AbstractC3740.m7932(mo2149, "serialized size must be non-negative, was "));
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int mo21492 = interfaceC0571.mo2149(this);
        if (mo21492 < 0) {
            throw new IllegalStateException(AbstractC3740.m7932(mo21492, "serialized size must be non-negative, was "));
        }
        this.zzd = (this.zzd & Integer.MIN_VALUE) | mo21492;
        return mo21492;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m2049() {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final AbstractC0584 m2050() {
        return (AbstractC0584) mo2022(5);
    }
}
