package p171;

import java.io.EOFException;
import p055.C1495;
import p055.InterfaceC1455;
import p137.AbstractC2305;
import p305.C3732;

/* renamed from: ˊﾞ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2644 implements InterfaceC2639 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f10028 = new byte[4096];

    @Override // p171.InterfaceC2639
    /* renamed from: ʽ */
    public final int mo4107(InterfaceC1455 interfaceC1455, int i, boolean z) {
        return mo4113(interfaceC1455, i, z);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ˈ */
    public final void mo4108(C1495 c1495) {
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ˑﹳ */
    public final /* synthetic */ void mo4109(int i, C3732 c3732) {
        AbstractC2305.m5382(this, c3732, i);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ⁱˊ */
    public final void mo4111(C3732 c3732, int i, int i2) {
        c3732.m7900(i);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ﹳٴ */
    public final void mo4112(long j, int i, int i2, int i3, C2634 c2634) {
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ﾞᴵ */
    public final int mo4113(InterfaceC1455 interfaceC1455, int i, boolean z) {
        byte[] bArr = this.f10028;
        int read = interfaceC1455.read(bArr, 0, Math.min(bArr.length, i));
        if (read != -1) {
            return read;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }
}
