package p154;

import java.util.EnumSet;
import java.util.Set;
import p033.AbstractC1183;
import p033.C1181;
import p033.C1184;
import p033.EnumC1175;
import p033.EnumC1189;
import p173.C2656;
import p173.InterfaceC2655;
import p317.AbstractC3913;
import p317.AbstractC3914;
import p411.AbstractC4892;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˊʾ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2508 extends AbstractC1183 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final Set f9536;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final String f9537;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f9538;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C1184 f9539;

    public C2508(EnumC1175 enumC1175, long j, long j2, C1184 c1184, int i, EnumSet enumSet, String str, int i2) {
        super(33, enumC1175, EnumC1189.f4613, j, j2, i2);
        this.f9538 = i;
        this.f9536 = enumSet;
        this.f9539 = c1184;
        this.f9537 = str == null ? "*" : str;
    }

    @Override // p033.AbstractC1179
    /* renamed from: יˉ */
    public final void mo3695(C2656 c2656) {
        c2656.m6417(this.f4575);
        c2656.mo6412((byte) AbstractC4892.m9685(this.f9538));
        c2656.mo6412((byte) AbstractC3914.m8088(this.f9536));
        c2656.m6419(0L);
        this.f9539.m3700(c2656);
        c2656.m6417(96);
        String str = this.f9537;
        c2656.m6417(str.length() * 2);
        c2656.m6419(Math.min(this.f4593, ((C1181) ((InterfaceC2655) ((ᵎﹶ) this).ʾˋ)).f4588 * 65536));
        c2656.m6423(str, AbstractC3913.f15173);
    }
}
