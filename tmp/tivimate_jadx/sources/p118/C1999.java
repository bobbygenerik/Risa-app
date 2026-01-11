package p118;

/* renamed from: ˈʾ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1999 implements InterfaceC1995 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f7868;

    public C1999(int i) {
        this.f7868 = i;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return InterfaceC1995.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InterfaceC1995)) {
            return false;
        }
        if (this.f7868 != ((C1999) ((InterfaceC1995) obj)).f7868) {
            return false;
        }
        Object obj2 = EnumC1994.f7852;
        return obj2.equals(obj2);
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (14552422 ^ this.f7868) + (EnumC1994.f7852.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f7868 + "intEncoding=" + EnumC1994.f7852 + ')';
    }
}
