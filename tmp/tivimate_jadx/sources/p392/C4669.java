package p392;

import j$.util.Objects;
import p017.AbstractC0997;
import p384.C4603;

/* renamed from: ⁱי.ˏᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4669 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4669 f17498;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0997 f17499;

    /* JADX WARN: Type inference failed for: r0v0, types: [ⁱʽ.ﹳٴ, java.lang.Object] */
    static {
        ?? obj = new Object();
        obj.f17126 = AbstractC0997.m3275(2, 1, 5);
        f17498 = new C4669(obj);
    }

    public C4669(C4603 c4603) {
        this.f17499 = (AbstractC0997) c4603.f17126;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C4669) && this.f17499.equals(((C4669) obj).f17499);
    }

    public final int hashCode() {
        Boolean bool = Boolean.TRUE;
        return Objects.hash(this.f17499, null, null, bool, bool, bool, bool);
    }
}
