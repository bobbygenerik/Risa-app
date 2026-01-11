package p407;

import p210.C2975;
import p262.C3433;
import p453.AbstractC5372;

/* renamed from: ﹳˈ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4836 extends AbstractC5372 {

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public byte[] f18136;

    @Override // p453.AbstractC5372
    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void mo9635(C3433 c3433) {
        super.mo9635(c3433);
        this.f18136 = new byte[(this.f20470 - this.f20464) - 24];
        c3433.m7336(8);
        ((C2975) c3433.f13456).readFully(this.f18136);
        c3433.m7336(this.f20464);
    }
}
