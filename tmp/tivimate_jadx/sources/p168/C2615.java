package p168;

import com.google.android.gms.internal.play_billing.ʽﹳ;
import p441.C5195;
import ʼ.ᵎﹶ;

/* renamed from: ˊⁱ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2615 implements InterfaceC2612 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f9904;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C5195 f9905;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public byte[] f9906;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public ʽﹳ f9907;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public byte[] f9908;

    @Override // p168.InterfaceC2612
    /* renamed from: ᵔʾ */
    public final int mo5863(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.f9908;
        byte[] bArr3 = this.f9906;
        int i3 = i;
        while (true) {
            int i4 = i + i2;
            if (i3 >= i4) {
                return i2;
            }
            int i5 = i3 + 16;
            int i6 = i5 <= i4 ? 16 : i4 - i3;
            this.f9907.ᴵᵔ(bArr, i3, i6);
            ᵎﹶ.ᴵˊ(this.f9904, bArr3);
            this.f9905.m10176(bArr3, bArr2);
            for (int i7 = 0; i7 < i6; i7++) {
                int i8 = i3 + i7;
                bArr[i8] = (byte) (bArr[i8] ^ bArr2[i7]);
            }
            this.f9904++;
            i3 = i5;
        }
    }
}
