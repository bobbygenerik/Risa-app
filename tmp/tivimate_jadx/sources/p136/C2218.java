package p136;

import p137.C2286;
import p186.InterfaceC2796;
import ˈˋ.ʾˊ;

/* renamed from: ˉʿ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2218 extends ʾˊ {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f8690;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f8691;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f8692;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final /* synthetic */ Object f8693;

    public C2218(C2220 c2220) {
        this.f8690 = 0;
        this.f8693 = c2220;
        this.f8691 = false;
        this.f8692 = 0;
    }

    public C2218(C2286 c2286, int i) {
        this.f8690 = 1;
        this.f8693 = c2286;
        this.f8692 = i;
        this.f8691 = false;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m5203() {
        switch (this.f8690) {
            case 0:
                int i = this.f8692 + 1;
                this.f8692 = i;
                C2220 c2220 = (C2220) this.f8693;
                if (i == c2220.f8704.size()) {
                    InterfaceC2796 interfaceC2796 = c2220.f8701;
                    if (interfaceC2796 != null) {
                        interfaceC2796.m6216();
                    }
                    this.f8692 = 0;
                    this.f8691 = false;
                    c2220.f8702 = false;
                    return;
                }
                return;
            default:
                if (this.f8691) {
                    return;
                }
                ((C2286) this.f8693).f8955.setVisibility(this.f8692);
                return;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5204() {
        switch (this.f8690) {
            case 0:
                if (this.f8691) {
                    return;
                }
                this.f8691 = true;
                InterfaceC2796 interfaceC2796 = ((C2220) this.f8693).f8701;
                if (interfaceC2796 != null) {
                    interfaceC2796.m6217();
                    return;
                }
                return;
            default:
                ((C2286) this.f8693).f8955.setVisibility(0);
                return;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m5205() {
        switch (this.f8690) {
            case 1:
                this.f8691 = true;
                return;
            default:
                return;
        }
    }
}
