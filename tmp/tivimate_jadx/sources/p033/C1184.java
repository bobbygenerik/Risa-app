package p033;

import p173.C2656;
import p317.AbstractC3914;

/* renamed from: ʼﹳ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1184 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public byte[] f4594;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public byte[] f4595;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4596 = 1;

    public /* synthetic */ C1184() {
    }

    public C1184(byte[] bArr, byte[] bArr2) {
        this.f4595 = bArr;
        this.f4594 = bArr2;
    }

    public String toString() {
        switch (this.f4596) {
            case 0:
                return "SMB2FileId{persistentHandle=" + AbstractC3914.m8086(this.f4595) + '}';
            default:
                return super.toString();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m3700(C2656 c2656) {
        byte[] bArr = this.f4595;
        c2656.mo6415(bArr.length, bArr);
        byte[] bArr2 = this.f4594;
        c2656.mo6415(bArr2.length, bArr2);
    }
}
