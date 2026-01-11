package p040;

import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.C1468;
import p079.C1685;
import p171.C2624;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2646;

/* renamed from: ʽʾ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1293 implements InterfaceC2632 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC2632 f4988;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4989;

    public C1293(byte b, int i) {
        this.f4989 = i;
        switch (i) {
            case 1:
                this.f4988 = new C2624(35152, 2, "image/png");
                return;
            default:
                this.f4988 = new C2624(16973, 2, "image/bmp");
                return;
        }
    }

    public C1293(int i) {
        this.f4989 = 2;
        if ((i & 1) != 0) {
            this.f4988 = new C2624(65496, 2, "image/jpeg");
        } else {
            this.f4988 = new C1685();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m3888() {
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    private final void m3889() {
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        switch (this.f4989) {
            case 0:
                ((C2624) this.f4988).mo2900(interfaceC2646);
                return;
            case 1:
                ((C2624) this.f4988).mo2900(interfaceC2646);
                return;
            default:
                this.f4988.mo2900(interfaceC2646);
                return;
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        int i = this.f4989;
        return this;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    public final int mo2904(InterfaceC2622 interfaceC2622, C1468 c1468) {
        switch (this.f4989) {
            case 0:
                return ((C2624) this.f4988).mo2904(interfaceC2622, c1468);
            case 1:
                return ((C2624) this.f4988).mo2904(interfaceC2622, c1468);
            default:
                return this.f4988.mo2904(interfaceC2622, c1468);
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ᵎﹶ */
    public final List mo2905() {
        switch (this.f4989) {
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
        switch (this.f4989) {
            case 0:
                ((C2624) this.f4988).mo2908(j, j2);
                return;
            case 1:
                ((C2624) this.f4988).mo2908(j, j2);
                return;
            default:
                this.f4988.mo2908(j, j2);
                return;
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
        switch (this.f4989) {
            case 0:
            case 1:
                return;
            default:
                this.f4988.mo2909();
                return;
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        switch (this.f4989) {
            case 0:
                return ((C2624) this.f4988).mo2910(interfaceC2622);
            case 1:
                return ((C2624) this.f4988).mo2910(interfaceC2622);
            default:
                return this.f4988.mo2910(interfaceC2622);
        }
    }
}
