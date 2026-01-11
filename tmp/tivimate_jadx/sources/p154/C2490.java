package p154;

import p033.AbstractC1179;
import p033.C1184;
import p033.EnumC1175;
import p033.EnumC1189;
import p173.C2656;
import p411.AbstractC4892;

/* renamed from: ˊʾ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2490 extends AbstractC1179 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f9488;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C1184 f9489;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f9490;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final byte[] f9491;

    public C2490(EnumC1175 enumC1175, long j, long j2, C1184 c1184, int i, byte[] bArr) {
        super(33, enumC1175, EnumC1189.f4614, j, j2);
        this.f9489 = c1184;
        this.f9490 = 1;
        this.f9488 = i;
        this.f9491 = bArr;
    }

    @Override // p033.AbstractC1179
    /* renamed from: יˉ */
    public final void mo3695(C2656 c2656) {
        long j;
        c2656.m6417(this.f4575);
        int i = this.f9490;
        if (i == 1) {
            j = 1;
        } else if (i == 2) {
            j = 2;
        } else if (i == 3) {
            j = 3;
        } else {
            if (i != 4) {
                throw null;
            }
            j = 4;
        }
        c2656.mo6412((byte) j);
        c2656.mo6412(this.f9488 == 0 ? (byte) 0 : (byte) AbstractC4892.m9685(r0));
        byte[] bArr = this.f9491;
        c2656.m6419(bArr.length);
        c2656.m6417(96);
        c2656.m5937();
        c2656.m6419(0L);
        this.f9489.m3700(c2656);
        c2656.mo6415(bArr.length, bArr);
    }
}
