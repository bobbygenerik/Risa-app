package p420;

import android.net.Uri;
import java.util.Map;
import p171.InterfaceC2639;
import p266.C3456;
import p266.InterfaceC3457;
import p266.InterfaceC3462;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: ﹳᵢ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4986 implements InterfaceC3462 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C4984 f18622;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC3462 f18623;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final byte[] f18624;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f18625;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f18626;

    public C4986(InterfaceC3462 interfaceC3462, int i, C4984 c4984) {
        AbstractC3731.m7849(i > 0);
        this.f18623 = interfaceC3462;
        this.f18625 = i;
        this.f18622 = c4984;
        this.f18624 = new byte[1];
        this.f18626 = i;
    }

    @Override // p266.InterfaceC3462
    public final void close() {
        throw new UnsupportedOperationException();
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        int i3 = this.f18626;
        InterfaceC3462 interfaceC3462 = this.f18623;
        if (i3 == 0) {
            byte[] bArr2 = this.f18624;
            int i4 = 0;
            if (interfaceC3462.read(bArr2, 0, 1) != -1) {
                int i5 = (bArr2[0] & 255) << 4;
                if (i5 != 0) {
                    byte[] bArr3 = new byte[i5];
                    int i6 = i5;
                    while (i6 > 0) {
                        int read = interfaceC3462.read(bArr3, i4, i6);
                        if (read != -1) {
                            i4 += read;
                            i6 -= read;
                        }
                    }
                    while (i5 > 0 && bArr3[i5 - 1] == 0) {
                        i5--;
                    }
                    if (i5 > 0) {
                        C3732 c3732 = new C3732(i5, bArr3);
                        C4984 c4984 = this.f18622;
                        long max = !c4984.f18617 ? c4984.f18616 : Math.max(c4984.f18607.m9781(true), c4984.f18616);
                        int m7904 = c3732.m7904();
                        InterfaceC2639 interfaceC2639 = c4984.f18615;
                        interfaceC2639.getClass();
                        interfaceC2639.mo4109(m7904, c3732);
                        interfaceC2639.mo4112(max, 1, m7904, 0, null);
                        c4984.f18617 = true;
                    }
                }
                this.f18626 = this.f18625;
            }
            return -1;
        }
        int read2 = interfaceC3462.read(bArr, i, Math.min(this.f18626, i2));
        if (read2 != -1) {
            this.f18626 -= read2;
        }
        return read2;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ʽʽ */
    public final long mo4684(C3456 c3456) {
        throw new UnsupportedOperationException();
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ˉʿ */
    public final void mo5139(InterfaceC3457 interfaceC3457) {
        interfaceC3457.getClass();
        this.f18623.mo5139(interfaceC3457);
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ */
    public final Uri mo4685() {
        return this.f18623.mo4685();
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ٴﹶ */
    public final Map mo5140() {
        return this.f18623.mo5140();
    }
}
