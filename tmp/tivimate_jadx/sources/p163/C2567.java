package p163;

import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.io.ByteArrayOutputStream;
import javax.crypto.Mac;
import p168.C2614;
import p168.InterfaceC2613;
import p261.C3411;

/* renamed from: ˊٴ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2567 extends AbstractC2566 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public byte[] f9756;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f9757;

    @Override // p163.AbstractC2566, java.io.OutputStream
    public final void write(int i) {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // p163.AbstractC2566, java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // p163.AbstractC2566, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3;
        byte[] bArr2 = this.f9756;
        int i4 = this.f9757;
        if (i2 < 16 - i4) {
            System.arraycopy(bArr, i, bArr2, i4, i2);
            this.f9757 += i2;
            return;
        }
        System.arraycopy(bArr, i, bArr2, i4, 16 - i4);
        super.write(bArr2, 0, bArr2.length);
        int i5 = 16 - this.f9757;
        int i6 = i2 - i5;
        this.f9757 = 0;
        if (i6 != 0 && (i3 = i6 % 16) != 0) {
            System.arraycopy(bArr, (i6 + i5) - i3, bArr2, 0, i3);
            this.f9757 = i3;
            i6 -= i3;
        }
        super.write(bArr, i5, i6);
    }

    @Override // p163.AbstractC2566
    /* renamed from: ʽ */
    public final void mo5730() {
        int i = this.f9757;
        if (i != 0) {
            super.write(this.f9756, 0, i);
            this.f9757 = 0;
        }
        ʽﹳ r0 = ((C2614) this.f9755).f9901;
        if (((ByteArrayOutputStream) r0.ˈٴ).size() > 0) {
            r0.ˆʾ(0);
        }
        byte[] bArr = new byte[10];
        System.arraycopy(((Mac) r0.ʽʽ).doFinal(), 0, bArr, 0, 10);
        C2560 c2560 = this.f9754;
        c2560.getClass();
        c2560.write(bArr, 0, 10);
        super.mo5730();
    }

    @Override // p163.AbstractC2566
    /* renamed from: ᵎﹶ */
    public final InterfaceC2613 mo5731(C3411 c3411, char[] cArr, boolean z) {
        C2614 c2614 = new C2614(cArr, c3411.f13400, z);
        C2560 c2560 = this.f9754;
        c2560.write(c2614.f9899);
        c2560.write(c2614.f9903);
        return c2614;
    }
}
