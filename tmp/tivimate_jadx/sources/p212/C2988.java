package p212;

/* renamed from: ˏ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2988 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Class f11404;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Class f11405;

    public C2988(Class cls, Class cls2) {
        this.f11405 = cls;
        this.f11404 = cls2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2988 m6519(Class cls) {
        return new C2988(InterfaceC2992.class, cls);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2988.class != obj.getClass()) {
            return false;
        }
        C2988 c2988 = (C2988) obj;
        if (this.f11404.equals(c2988.f11404)) {
            return this.f11405.equals(c2988.f11405);
        }
        return false;
    }

    public final int hashCode() {
        return this.f11405.hashCode() + (this.f11404.hashCode() * 31);
    }

    public final String toString() {
        Class cls = this.f11404;
        Class cls2 = this.f11405;
        if (cls2 == InterfaceC2992.class) {
            return cls.getName();
        }
        return "@" + cls2.getName() + " " + cls.getName();
    }
}
