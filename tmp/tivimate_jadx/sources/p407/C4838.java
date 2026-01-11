package p407;

import java.util.EnumSet;
import p210.C2978;
import p453.AbstractC5372;
import p453.EnumC5369;
import p453.EnumC5370;
import p453.EnumC5371;
import ˊⁱ.ˑﹳ;

/* renamed from: ﹳˈ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4838 extends AbstractC5372 {

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final EnumC5371 f18138;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int f18139;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final EnumC5371 f18140;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int f18141;

    public C4838(EnumC5371 enumC5371, EnumC5371 enumC53712) {
        this.f20468 = EnumC5369.f20442;
        this.f20471 = EnumSet.of(EnumC5370.f20449, EnumC5370.f20447);
        this.f20470 = (short) 72;
        this.f18139 = 16384;
        this.f18141 = 16384;
        this.f18138 = enumC5371;
        this.f18140 = enumC53712;
    }

    @Override // p453.AbstractC5372
    /* renamed from: ᵎⁱ */
    public final void mo9633(ˑﹳ r4) {
        super.mo9633(r4);
        r4.ᴵᵔ(this.f18139);
        r4.ᴵᵔ(this.f18141);
        r4.ʽʽ(0);
        r4.ᴵˊ(1);
        r4.ᴵˊ(0);
        r4.ᴵᵔ(0);
        r4.ᴵᵔ(0);
        r4.ᴵˊ(1);
        r4.ᴵˊ(0);
        EnumC5371 enumC5371 = this.f18138;
        byte[] bArr = enumC5371.f20459;
        C2978 c2978 = (C2978) r4.ᴵˊ;
        c2978.write(bArr);
        r4.ᴵᵔ(enumC5371.f20461);
        r4.ᴵᵔ(enumC5371.f20463);
        EnumC5371 enumC53712 = this.f18140;
        c2978.write(enumC53712.f20459);
        r4.ᴵᵔ(enumC53712.f20461);
        r4.ᴵᵔ(enumC53712.f20463);
    }
}
