package p051;

import java.io.EOFException;
import p003.C0776;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p055.InterfaceC1455;
import p137.AbstractC2305;
import p171.C2634;
import p171.InterfaceC2639;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;
import p411.AbstractC4892;

/* renamed from: ʽᐧ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1391 implements InterfaceC2639 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f5448;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public InterfaceC1398 f5452;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public C1495 f5453;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC1389 f5454;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC2639 f5455;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f5450 = 0;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f5451 = 0;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public byte[] f5456 = AbstractC3712.f14480;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3732 f5449 = new C3732();

    public C1391(InterfaceC2639 interfaceC2639, InterfaceC1389 interfaceC1389) {
        this.f5455 = interfaceC2639;
        this.f5454 = interfaceC1389;
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ʽ, reason: contains not printable characters */
    public final int mo4107(InterfaceC1455 interfaceC1455, int i, boolean z) {
        return mo4113(interfaceC1455, i, z);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo4108(C1495 c1495) {
        c1495.f5930.getClass();
        String str = c1495.f5930;
        AbstractC3731.m7849(AbstractC1464.m4250(str) == 3);
        boolean equals = c1495.equals(this.f5453);
        InterfaceC1389 interfaceC1389 = this.f5454;
        if (!equals) {
            this.f5453 = c1495;
            this.f5452 = interfaceC1389.m4105(c1495) ? interfaceC1389.m4106(c1495) : null;
        }
        InterfaceC1398 interfaceC1398 = this.f5452;
        InterfaceC2639 interfaceC2639 = this.f5455;
        if (interfaceC1398 == null) {
            interfaceC2639.mo4108(c1495);
            return;
        }
        C1490 m4300 = c1495.m4300();
        m4300.f5861 = AbstractC1464.m4251("application/x-media3-cues");
        m4300.f5857 = str;
        m4300.f5885 = Long.MAX_VALUE;
        m4300.f5874 = interfaceC1389.m4104(c1495);
        AbstractC4892.m9687(m4300, interfaceC2639);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ void mo4109(int i, C3732 c3732) {
        AbstractC2305.m5382(this, c3732, i);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m4110(int i) {
        int length = this.f5456.length;
        int i2 = this.f5451;
        if (length - i2 >= i) {
            return;
        }
        int i3 = i2 - this.f5450;
        int max = Math.max(i3 * 2, i + i3);
        byte[] bArr = this.f5456;
        byte[] bArr2 = max <= bArr.length ? bArr : new byte[max];
        System.arraycopy(bArr, this.f5450, bArr2, 0, i3);
        this.f5450 = 0;
        this.f5451 = i3;
        this.f5456 = bArr2;
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo4111(C3732 c3732, int i, int i2) {
        if (this.f5452 == null) {
            this.f5455.mo4111(c3732, i, i2);
            return;
        }
        m4110(i);
        c3732.m7875(this.f5456, this.f5451, i);
        this.f5451 += i;
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo4112(long j, int i, int i2, int i3, C2634 c2634) {
        if (this.f5452 == null) {
            this.f5455.mo4112(j, i, i2, i3, c2634);
            return;
        }
        AbstractC3731.m7843("DRM on subtitles is not supported", c2634 == null);
        int i4 = (this.f5451 - i3) - i2;
        try {
            this.f5452.mo4118(this.f5456, i4, i2, C1393.f5457, new C0776(this, j, i));
        } catch (RuntimeException e) {
            if (!this.f5448) {
                throw e;
            }
            AbstractC3731.m7859("SubtitleTranscodingTO", "Parsing subtitles failed, ignoring sample.", e);
        }
        int i5 = i4 + i2;
        this.f5450 = i5;
        if (i5 == this.f5451) {
            this.f5450 = 0;
            this.f5451 = 0;
        }
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int mo4113(InterfaceC1455 interfaceC1455, int i, boolean z) {
        if (this.f5452 == null) {
            return this.f5455.mo4113(interfaceC1455, i, z);
        }
        m4110(i);
        int read = interfaceC1455.read(this.f5456, this.f5451, i);
        if (read != -1) {
            this.f5451 += read;
            return read;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }
}
