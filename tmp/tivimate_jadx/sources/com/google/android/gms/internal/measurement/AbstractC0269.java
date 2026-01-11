package com.google.android.gms.internal.measurement;

import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* renamed from: com.google.android.gms.internal.measurement.ʼﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0269 extends AbstractC0514 {
    private static final Map zzd = new ConcurrentHashMap();
    private int zzb;
    protected C0278 zzc;

    public AbstractC0269() {
        this.zza = 0;
        this.zzb = -1;
        this.zzc = C0278.f1787;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m1224(Class cls, AbstractC0269 abstractC0269) {
        abstractC0269.m1235();
        zzd.put(cls, abstractC0269);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static Object m1225(Method method, AbstractC0269 abstractC0269, Object... objArr) {
        try {
            return method.invoke(abstractC0269, objArr);
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

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static AbstractC0269 m1226(Class cls) {
        Map map = zzd;
        AbstractC0269 abstractC0269 = (AbstractC0269) map.get(cls);
        if (abstractC0269 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC0269 = (AbstractC0269) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (abstractC0269 != null) {
            return abstractC0269;
        }
        AbstractC0269 abstractC02692 = (AbstractC0269) ((AbstractC0269) AbstractC0504.m1993(cls)).mo1194(6);
        if (abstractC02692 == null) {
            throw new IllegalStateException();
        }
        map.put(cls, abstractC02692);
        return abstractC02692;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return C0464.f2220.m1889(getClass()).mo1533(this, (AbstractC0269) obj);
    }

    public final int hashCode() {
        if (m1230()) {
            return C0464.f2220.m1889(getClass()).mo1545(this);
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int mo1545 = C0464.f2220.m1889(getClass()).mo1545(this);
        this.zza = mo1545;
        return mo1545;
    }

    public final String toString() {
        String obj = super.toString();
        char[] cArr = AbstractC0382.f2040;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        AbstractC0382.m1728(this, sb, 0);
        return sb.toString();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final AbstractC0495 m1227() {
        AbstractC0495 abstractC0495 = (AbstractC0495) mo1194(5);
        abstractC0495.m1946(this);
        return abstractC0495;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m1228() {
        this.zzb = (this.zzb & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m1229(C0260 c0260) {
        InterfaceC0363 m1889 = C0464.f2220.m1889(getClass());
        C0425 c0425 = c0260.f1755;
        if (c0425 == null) {
            c0425 = new C0425(c0260);
        }
        m1889.mo1527(this, c0425);
    }

    /* renamed from: ˉˆ */
    public abstract Object mo1194(int i);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m1230() {
        return (this.zzb & Integer.MIN_VALUE) != 0;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int m1231() {
        if (m1230()) {
            int mo1543 = C0464.f2220.m1889(getClass()).mo1543(this);
            if (mo1543 >= 0) {
                return mo1543;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(mo1543).length() + 42);
            sb.append("serialized size must be non-negative, was ");
            sb.append(mo1543);
            throw new IllegalStateException(sb.toString());
        }
        int i = this.zzb & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int mo15432 = C0464.f2220.m1889(getClass()).mo1543(this);
        if (mo15432 >= 0) {
            this.zzb = (this.zzb & Integer.MIN_VALUE) | mo15432;
            return mo15432;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(mo15432).length() + 42);
        sb2.append("serialized size must be non-negative, was ");
        sb2.append(mo15432);
        throw new IllegalStateException(sb2.toString());
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m1232() {
        C0464.f2220.m1889(getClass()).mo1534(this);
        m1235();
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final AbstractC0495 m1233() {
        return (AbstractC0495) mo1194(5);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0514
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int mo1234(InterfaceC0363 interfaceC0363) {
        if (m1230()) {
            int mo1543 = interfaceC0363.mo1543(this);
            if (mo1543 >= 0) {
                return mo1543;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(mo1543).length() + 42);
            sb.append("serialized size must be non-negative, was ");
            sb.append(mo1543);
            throw new IllegalStateException(sb.toString());
        }
        int i = this.zzb & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int mo15432 = interfaceC0363.mo1543(this);
        if (mo15432 >= 0) {
            this.zzb = (this.zzb & Integer.MIN_VALUE) | mo15432;
            return mo15432;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(mo15432).length() + 42);
        sb2.append("serialized size must be non-negative, was ");
        sb2.append(mo15432);
        throw new IllegalStateException(sb2.toString());
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m1235() {
        this.zzb &= Integer.MAX_VALUE;
    }
}
