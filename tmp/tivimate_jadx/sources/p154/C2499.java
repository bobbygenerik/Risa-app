package p154;

import java.io.IOException;
import p033.AbstractC1183;
import p033.C1181;
import p033.C1184;
import p033.EnumC1175;
import p033.EnumC1189;
import p173.C2656;
import p173.InterfaceC2655;
import p368.AbstractC4501;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˊʾ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2499 extends AbstractC1183 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final AbstractC4501 f9521;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C1184 f9522;

    public C2499(EnumC1175 enumC1175, C1184 c1184, long j, long j2, AbstractC4501 abstractC4501, int i) {
        super(49, enumC1175, EnumC1189.f4620, j, j2, Math.min(i, abstractC4501.mo4564()));
        this.f9522 = c1184;
        this.f9521 = abstractC4501;
    }

    @Override // p033.AbstractC1179
    /* renamed from: יˉ */
    public final void mo3695(C2656 c2656) {
        c2656.m6417(this.f4575);
        c2656.m6417(112);
        int i = ((C1181) ((InterfaceC2655) ((ᵎﹶ) this).ʾˋ)).f4588 * 65536;
        int i2 = this.f4593;
        c2656.m6419(Math.min(i2, i));
        AbstractC4501 abstractC4501 = this.f9521;
        c2656.f10939.m6405(c2656, abstractC4501.f16854);
        this.f9522.m3700(c2656);
        c2656.m6419(0L);
        int mo4564 = abstractC4501.mo4564() - Math.min(i2, ((C1181) ((InterfaceC2655) ((ᵎﹶ) this).ʾˋ)).f4588 * 65536);
        c2656.m6419(Math.max(0, mo4564));
        c2656.m6417(0);
        c2656.m6417(0);
        c2656.m6419(0L);
        int i3 = ((C1181) ((InterfaceC2655) ((ᵎﹶ) this).ʾˋ)).f4588;
        byte[] bArr = new byte[65536];
        for (int i4 = 0; i4 < i3; i4++) {
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
