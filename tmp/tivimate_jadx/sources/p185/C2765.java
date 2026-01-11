package p185;

import java.security.MessageDigest;
import p031.InterfaceC1141;
import p087.AbstractC1751;

/* renamed from: ˋᵎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2765 implements InterfaceC1141 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f10526;

    public C2765(Object obj) {
        AbstractC1751.m4711(obj, "Argument must not be null");
        this.f10526 = obj;
    }

    @Override // p031.InterfaceC1141
    public final boolean equals(Object obj) {
        if (obj instanceof C2765) {
            return this.f10526.equals(((C2765) obj).f10526);
        }
        return false;
    }

    @Override // p031.InterfaceC1141
    public final int hashCode() {
        return this.f10526.hashCode();
    }

    public final String toString() {
        return "ObjectKey{object=" + this.f10526 + '}';
    }

    @Override // p031.InterfaceC1141
    /* renamed from: ⁱˊ */
    public final void mo3574(MessageDigest messageDigest) {
        messageDigest.update(this.f10526.toString().getBytes(InterfaceC1141.f4403));
    }
}
