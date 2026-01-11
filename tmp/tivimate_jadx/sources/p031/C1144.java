package p031;

import java.security.MessageDigest;
import p087.C1739;
import p255.C3368;

/* renamed from: ʼᵔ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1144 implements InterfaceC1141 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1739 f4409 = new C3368(0);

    @Override // p031.InterfaceC1141
    public final boolean equals(Object obj) {
        if (obj instanceof C1144) {
            return this.f4409.equals(((C1144) obj).f4409);
        }
        return false;
    }

    @Override // p031.InterfaceC1141
    public final int hashCode() {
        return this.f4409.hashCode();
    }

    public final String toString() {
        return "Options{values=" + this.f4409 + '}';
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object m3577(C1143 c1143) {
        C1739 c1739 = this.f4409;
        return c1739.containsKey(c1143) ? c1739.get(c1143) : c1143.f4408;
    }

    @Override // p031.InterfaceC1141
    /* renamed from: ⁱˊ */
    public final void mo3574(MessageDigest messageDigest) {
        int i = 0;
        while (true) {
            C1739 c1739 = this.f4409;
            if (i >= c1739.f13167) {
                return;
            }
            C1143 c1143 = (C1143) c1739.m7225(i);
            Object m7220 = this.f4409.m7220(i);
            InterfaceC1148 interfaceC1148 = c1143.f4407;
            if (c1143.f4406 == null) {
                c1143.f4406 = c1143.f4405.getBytes(InterfaceC1141.f4403);
            }
            interfaceC1148.mo3580(c1143.f4406, m7220, messageDigest);
            i++;
        }
    }
}
