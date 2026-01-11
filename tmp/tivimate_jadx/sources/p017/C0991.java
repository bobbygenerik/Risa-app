package p017;

/* renamed from: ʼʻ.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0991 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f3973;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f3974;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f3975;

    public C0991(Object obj, Object obj2, Object obj3) {
        this.f3975 = obj;
        this.f3974 = obj2;
        this.f3973 = obj3;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final IllegalArgumentException m3258() {
        StringBuilder sb = new StringBuilder("Multiple entries with same key: ");
        Object obj = this.f3975;
        sb.append(obj);
        sb.append("=");
        sb.append(this.f3974);
        sb.append(" and ");
        sb.append(obj);
        sb.append("=");
        sb.append(this.f3973);
        return new IllegalArgumentException(sb.toString());
    }
}
