package p169;

import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.C1468;
import p171.C2624;
import p171.C2651;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2646;
import p305.C3732;

/* renamed from: ˊﹳ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2616 implements InterfaceC2632 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2624 f9909;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3732 f9910;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f9911;

    public C2616(int i) {
        this.f9911 = i;
        switch (i) {
            case 1:
                this.f9910 = new C3732(4);
                this.f9909 = new C2624(-1, -1, "image/heif");
                return;
            case 2:
                this.f9910 = new C3732(4);
                this.f9909 = new C2624(-1, -1, "image/webp");
                return;
            default:
                this.f9910 = new C3732(4);
                this.f9909 = new C2624(-1, -1, "image/avif");
                return;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m5865() {
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    private final void m5866() {
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    private final void m5867() {
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        switch (this.f9911) {
            case 0:
                this.f9909.mo2900(interfaceC2646);
                return;
            case 1:
                this.f9909.mo2900(interfaceC2646);
                return;
            default:
                this.f9909.mo2900(interfaceC2646);
                return;
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        int i = this.f9911;
        return this;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    public final int mo2904(InterfaceC2622 interfaceC2622, C1468 c1468) {
        switch (this.f9911) {
            case 0:
                return this.f9909.mo2904(interfaceC2622, c1468);
            case 1:
                return this.f9909.mo2904(interfaceC2622, c1468);
            default:
                return this.f9909.mo2904(interfaceC2622, c1468);
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ᵎﹶ */
    public final List mo2905() {
        switch (this.f9911) {
            case 0:
            case 1:
            default:
                C0982 c0982 = AbstractC0993.f3977;
                return C0956.f3901;
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ⁱˊ */
    public final void mo2908(long j, long j2) {
        switch (this.f9911) {
            case 0:
                this.f9909.mo2908(j, j2);
                return;
            case 1:
                this.f9909.mo2908(j, j2);
                return;
            default:
                this.f9909.mo2908(j, j2);
                return;
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
        int i = this.f9911;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        switch (this.f9911) {
            case 0:
                C2651 c2651 = (C2651) interfaceC2622;
                c2651.m5932(4, false);
                C3732 c3732 = this.f9910;
                c3732.m7886(4);
                c2651.mo4572(c3732.f14534, 0, 4, false);
                if (c3732.m7880() != 1718909296) {
                    return false;
                }
                c3732.m7886(4);
                c2651.mo4572(c3732.f14534, 0, 4, false);
                return c3732.m7880() == ((long) 1635150182);
            case 1:
                C2651 c26512 = (C2651) interfaceC2622;
                c26512.m5932(4, false);
                C3732 c37322 = this.f9910;
                c37322.m7886(4);
                c26512.mo4572(c37322.f14534, 0, 4, false);
                if (c37322.m7880() != 1718909296) {
                    return false;
                }
                c37322.m7886(4);
                c26512.mo4572(c37322.f14534, 0, 4, false);
                return c37322.m7880() == ((long) 1751476579);
            default:
                C3732 c37323 = this.f9910;
                c37323.m7886(4);
                C2651 c26513 = (C2651) interfaceC2622;
                c26513.mo4572(c37323.f14534, 0, 4, false);
                if (c37323.m7880() != 1380533830) {
                    return false;
                }
                c26513.m5932(4, false);
                c37323.m7886(4);
                c26513.mo4572(c37323.f14534, 0, 4, false);
                return c37323.m7880() == 1464156752;
        }
    }
}
