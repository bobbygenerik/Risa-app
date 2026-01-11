package p154;

import java.util.UUID;
import p033.AbstractC1179;
import p033.EnumC1175;
import p173.C2656;
import p197.C2900;
import p307.AbstractC3740;
import p451.C5363;
import ﹳٴ.ﹳٴ;

/* renamed from: ˊʾ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2492 extends AbstractC1179 {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public C5363 f9492;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public UUID f9493;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f9494;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public int f9495;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public EnumC1175 f9496;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public int f9497;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public long f9498;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f9499;

    @Override // p033.AbstractC1179
    /* renamed from: ˋˊ */
    public final void mo3694(C2656 c2656) {
        c2656.m6414(2);
        C2900 c2900 = c2656.f10939;
        this.f9494 = c2900.m6406(c2656);
        int m6406 = c2900.m6406(c2656);
        int i = 0;
        for (EnumC1175 enumC1175 : EnumC1175.values()) {
            if (enumC1175.f4564 == m6406) {
                this.f9496 = enumC1175;
                EnumC1175 enumC11752 = EnumC1175.f4558;
                if (enumC1175 == enumC11752) {
                    c2900.m6406(c2656);
                } else {
                    c2656.m6414(2);
                }
                this.f9493 = new UUID((((c2900.m6402(c2656) << 16) | c2900.m6406(c2656)) << 16) | c2900.m6406(c2656), C2900.f10934.m6407(c2656));
                this.f9498 = c2900.m6402(c2656);
                this.f9495 = c2656.m6418();
                this.f9497 = c2656.m6418();
                this.f9499 = c2656.m6418();
                this.f9492 = ﹳٴ.ٴʼ(c2656);
                ﹳٴ.ٴʼ(c2656);
                int m64062 = c2900.m6406(c2656);
                int m64063 = c2900.m6406(c2656);
                if (this.f9496 == enumC11752) {
                    i = c2900.m6406(c2656);
                } else {
                    c2656.m6414(2);
                }
                if (m64063 > 0) {
                    c2656.f10937 = m64062;
                    c2656.m6416(m64063);
                }
                if (this.f9496 != enumC11752) {
                    return;
                }
                c2656.f10937 = i;
                throw new UnsupportedOperationException("Cannot read NegotiateContextList yet");
            }
        }
        throw new IllegalStateException(AbstractC3740.m7932(m6406, "Unknown SMB2 Dialect: "));
    }
}
