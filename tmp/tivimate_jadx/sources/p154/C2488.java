package p154;

import p033.AbstractC1183;
import p033.C1181;
import p033.C1184;
import p033.EnumC1175;
import p033.EnumC1189;
import p173.C2656;
import p173.InterfaceC2655;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˊʾ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2488 extends AbstractC1183 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C1184 f9484;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final long f9485;

    public C2488(EnumC1175 enumC1175, C1184 c1184, long j, long j2, long j3, int i) {
        super(49, enumC1175, EnumC1189.f4625, j, j2, i);
        this.f9484 = c1184;
        this.f9485 = j3;
    }

    @Override // p033.AbstractC1179
    /* renamed from: יˉ */
    public final void mo3695(C2656 c2656) {
        c2656.m6417(this.f4575);
        c2656.mo6412((byte) 0);
        c2656.mo6412((byte) 0);
        c2656.m6419(Math.min(this.f4593, ((C1181) ((InterfaceC2655) ((ᵎﹶ) this).ʾˋ)).f4588 * 65536));
        c2656.f10939.m6405(c2656, this.f9485);
        this.f9484.m3700(c2656);
        c2656.m6419(1L);
        c2656.m6419(0L);
        c2656.m6419(0L);
        c2656.m6417(0);
        c2656.m6417(0);
        c2656.mo6412((byte) 0);
    }
}
