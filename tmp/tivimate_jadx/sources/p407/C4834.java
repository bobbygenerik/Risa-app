package p407;

import p210.C2978;
import p453.AbstractC5372;
import p453.EnumC5370;
import ˊⁱ.ˑﹳ;

/* renamed from: ﹳˈ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4834 extends AbstractC5372 {

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public short f18133;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public byte[] f18134;

    @Override // p453.AbstractC5372
    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void mo9633(ˑﹳ r3) {
        if (this.f18134 == null) {
            throw new IllegalStateException("Invalid stub: " + this.f18134);
        }
        this.f20470 = (short) ((this.f20471.contains(EnumC5370.f20448) ? 40 : 24) + this.f18134.length);
        super.mo9633(r3);
        byte[] bArr = this.f18134;
        r3.ʽʽ(bArr.length);
        r3.ᴵᵔ(0);
        r3.ᴵᵔ(this.f18133);
        ((C2978) r3.ᴵˊ).write(bArr);
    }
}
