package p087;

/* renamed from: ʿٴ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1750 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Class f7111;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Class f7112;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Class f7113;

    public C1750(Class cls, Class cls2, Class cls3) {
        this.f7113 = cls;
        this.f7112 = cls2;
        this.f7111 = cls3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1750.class != obj.getClass()) {
            return false;
        }
        C1750 c1750 = (C1750) obj;
        return this.f7113.equals(c1750.f7113) && this.f7112.equals(c1750.f7112) && AbstractC1746.m4703(this.f7111, c1750.f7111);
    }

    public final int hashCode() {
        int hashCode = (this.f7112.hashCode() + (this.f7113.hashCode() * 31)) * 31;
        Class cls = this.f7111;
        return hashCode + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f7113 + ", second=" + this.f7112 + '}';
    }
}
