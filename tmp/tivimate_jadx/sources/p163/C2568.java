package p163;

import p168.InterfaceC2613;
import p261.C3411;
import p332.AbstractC4200;
import ﹶﾞ.ⁱי;

/* renamed from: ˊٴ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2568 extends AbstractC2566 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ int f9758;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2568(C2560 c2560, C3411 c3411, char[] cArr, boolean z, int i) {
        super(c2560, c3411, cArr, z);
        this.f9758 = i;
    }

    @Override // p163.AbstractC2566, java.io.OutputStream
    public void write(int i) {
        switch (this.f9758) {
            case 1:
                super.write(new byte[]{(byte) i}, 0, 1);
                return;
            default:
                super.write(i);
                return;
        }
    }

    @Override // p163.AbstractC2566, java.io.OutputStream
    public void write(byte[] bArr) {
        switch (this.f9758) {
            case 1:
                super.write(bArr, 0, bArr.length);
                return;
            default:
                super.write(bArr);
                return;
        }
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object, ˊⁱ.ˈ] */
    @Override // p163.AbstractC2566
    /* renamed from: ᵎﹶ */
    public final InterfaceC2613 mo5731(C3411 c3411, char[] cArr, boolean z) {
        switch (this.f9758) {
            case 0:
                return new Object();
            default:
                ⁱי r5 = new ⁱי(cArr, c3411.f13399 ? (AbstractC4200.m8605(c3411.f13389) & 65535) << 16 : c3411.f13396, z);
                this.f9754.write((byte[]) r5.ʽʽ);
                return r5;
        }
    }
}
