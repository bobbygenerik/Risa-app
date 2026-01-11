package p154;

import java.util.EnumSet;
import p033.AbstractC1179;
import p033.EnumC1175;
import p173.C2656;
import p197.C2900;
import p317.AbstractC3914;

/* renamed from: ˊʾ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2496 extends AbstractC1179 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public long f9509;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public EnumC1175 f9510;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public EnumSet f9511;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public byte f9512;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public byte[] f9513;

    @Override // p033.AbstractC1179
    /* renamed from: ˋˊ */
    public final void mo3694(C2656 c2656) {
        byte[] bArr;
        c2656.m6413();
        C2900 c2900 = c2656.f10939;
        this.f9511 = AbstractC3914.m8087(c2900.m6406(c2656), EnumC2498.class);
        int m6406 = c2900.m6406(c2656);
        int m64062 = c2900.m6406(c2656);
        if (m64062 > 0) {
            c2656.f10937 = m6406;
            bArr = new byte[m64062];
            c2656.m6411(m64062, bArr);
        } else {
            bArr = new byte[0];
        }
        this.f9513 = bArr;
    }

    @Override // p033.AbstractC1179
    /* renamed from: יˉ */
    public final void mo3695(C2656 c2656) {
        c2656.m6417(this.f4575);
        this.f9510.getClass();
        c2656.mo6412((byte) 0);
        c2656.mo6412(this.f9512);
        c2656.m6419(this.f9509 & 1);
        c2656.m5938();
        c2656.m6417(88);
        byte[] bArr = this.f9513;
        c2656.m6417(bArr != null ? bArr.length : 0);
        c2656.f10939.m6405(c2656, 0L);
        byte[] bArr2 = this.f9513;
        if (bArr2 != null) {
            c2656.mo6415(bArr2.length, bArr2);
        }
    }
}
