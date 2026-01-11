package p154;

import java.io.IOException;
import p033.AbstractC1183;
import p033.C1184;
import p033.EnumC1175;
import p033.EnumC1189;
import p173.C2656;
import p368.AbstractC4501;

/* renamed from: ˊʾ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2509 extends AbstractC1183 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C1184 f9540;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final boolean f9541;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final long f9542;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final long f9543;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final AbstractC4501 f9544;

    public C2509(EnumC1175 enumC1175, long j, long j2, long j3, C1184 c1184, AbstractC4501 abstractC4501, int i) {
        super(57, enumC1175, EnumC1189.f4624, j, j2, Math.max(abstractC4501.mo4564(), i));
        this.f9542 = j3;
        this.f9540 = c1184;
        this.f9544 = abstractC4501;
        this.f9541 = true;
        this.f9543 = i;
    }

    @Override // p033.AbstractC1179
    /* renamed from: יˉ */
    public final void mo3695(C2656 c2656) {
        c2656.m6417(this.f4575);
        c2656.m5937();
        c2656.m6419(this.f9542);
        this.f9540.m3700(c2656);
        AbstractC4501 abstractC4501 = this.f9544;
        int mo4564 = abstractC4501.mo4564();
        if (mo4564 > 0) {
            c2656.m6419(120);
            c2656.m6419(mo4564);
        } else {
            c2656.m6419(0L);
            c2656.m6419(0L);
        }
        c2656.m6419(0L);
        c2656.m6419(0L);
        c2656.m6419(0L);
        c2656.m6419(this.f9543);
        c2656.m6419(this.f9541 ? 1L : 0L);
        c2656.m5938();
        while (abstractC4501.mo4564() > 0) {
            byte[] bArr = new byte[65536];
            try {
                int mo4565 = abstractC4501.mo4565(bArr);
                c2656.mo6415(mo4565, bArr);
                abstractC4501.f16854 += mo4565;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
