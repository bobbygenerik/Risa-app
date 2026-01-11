package p433;

import j$.util.Objects;
import java.io.EOFException;
import java.util.Arrays;
import p001.C0765;
import p001.C0766;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p055.InterfaceC1455;
import p137.AbstractC2305;
import p171.C2634;
import p171.InterfaceC2639;
import p305.AbstractC3731;
import p305.C3732;
import p307.AbstractC3740;

/* renamed from: ﹶˎ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5124 implements InterfaceC2639 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C1495 f19269;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C1495 f19270;

    /* renamed from: ʽ, reason: contains not printable characters */
    public C1495 f19271;

    /* renamed from: ˈ, reason: contains not printable characters */
    public byte[] f19272;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f19273;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1495 f19274;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5129 f19275;

    static {
        C1490 c1490 = new C1490();
        c1490.f5861 = AbstractC1464.m4251("application/id3");
        f19270 = new C1495(c1490);
        C1490 c14902 = new C1490();
        c14902.f5861 = AbstractC1464.m4251("application/x-emsg");
        f19269 = new C1495(c14902);
    }

    public C5124(C5129 c5129, int i) {
        this.f19275 = c5129;
        if (i == 1) {
            this.f19274 = f19270;
        } else {
            if (i != 3) {
                throw new IllegalArgumentException(AbstractC3740.m7932(i, "Unknown metadataType: "));
            }
            this.f19274 = f19269;
        }
        this.f19272 = new byte[0];
        this.f19273 = 0;
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ʽ */
    public final int mo4107(InterfaceC1455 interfaceC1455, int i, boolean z) {
        return mo4113(interfaceC1455, i, z);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ˈ */
    public final void mo4108(C1495 c1495) {
        this.f19271 = c1495;
        this.f19275.mo4108(this.f19274);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ˑﹳ */
    public final /* synthetic */ void mo4109(int i, C3732 c3732) {
        AbstractC2305.m5382(this, c3732, i);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ⁱˊ */
    public final void mo4111(C3732 c3732, int i, int i2) {
        int i3 = this.f19273 + i;
        byte[] bArr = this.f19272;
        if (bArr.length < i3) {
            this.f19272 = Arrays.copyOf(bArr, (i3 / 2) + i3);
        }
        c3732.m7875(this.f19272, this.f19273, i);
        this.f19273 += i;
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ﹳٴ */
    public final void mo4112(long j, int i, int i2, int i3, C2634 c2634) {
        this.f19271.getClass();
        int i4 = this.f19273 - i3;
        C3732 c3732 = new C3732(Arrays.copyOfRange(this.f19272, i4 - i2, i4));
        byte[] bArr = this.f19272;
        System.arraycopy(bArr, i4, bArr, 0, i3);
        this.f19273 = i3;
        String str = this.f19271.f5930;
        C1495 c1495 = this.f19274;
        String str2 = c1495.f5930;
        String str3 = c1495.f5930;
        if (!Objects.equals(str, str2)) {
            if (!"application/x-emsg".equals(this.f19271.f5930)) {
                AbstractC3731.m7850("HlsSampleStreamWrapper", "Ignoring sample for unsupported format: " + this.f19271.f5930);
                return;
            }
            C0766 m2788 = C0765.m2788(c3732);
            C1495 mo2791 = m2788.mo2791();
            if (mo2791 == null || !Objects.equals(str3, mo2791.f5930)) {
                AbstractC3731.m7850("HlsSampleStreamWrapper", "Ignoring EMSG. Expected it to contain wrapped " + str3 + " but actual wrapped format: " + m2788.mo2791());
                return;
            }
            byte[] mo2790 = m2788.mo2790();
            mo2790.getClass();
            c3732 = new C3732(mo2790);
        }
        int m7904 = c3732.m7904();
        C5129 c5129 = this.f19275;
        AbstractC2305.m5382(c5129, c3732, m7904);
        c5129.mo4112(j, i, m7904, 0, c2634);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ﾞᴵ */
    public final int mo4113(InterfaceC1455 interfaceC1455, int i, boolean z) {
        int i2 = this.f19273 + i;
        byte[] bArr = this.f19272;
        if (bArr.length < i2) {
            this.f19272 = Arrays.copyOf(bArr, (i2 / 2) + i2);
        }
        int read = interfaceC1455.read(this.f19272, this.f19273, i);
        if (read != -1) {
            this.f19273 += read;
            return read;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }
}
