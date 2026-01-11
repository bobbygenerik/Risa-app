package p080;

import p133.AbstractC2199;
import p133.C2200;
import p133.InterfaceC2201;
import ٴﾞ.ˆʾ;
import ᵢ.ﹳٴ;

/* renamed from: ʿʾ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1687 implements InterfaceC1710, InterfaceC2201 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final ﹳٴ f6850 = AbstractC2199.m5199(20, new ˆʾ(11));

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f6851;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2200 f6852 = new Object();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f6853;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public InterfaceC1710 f6854;

    @Override // p080.InterfaceC1710
    public final Object get() {
        return this.f6854.get();
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ʽ */
    public final Class mo4403() {
        return this.f6854.mo4403();
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ˈ */
    public final synchronized void mo4404() {
        this.f6852.m5200();
        this.f6853 = true;
        if (!this.f6851) {
            this.f6854.mo4404();
            this.f6854 = null;
            f6850.ˑﹳ(this);
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final synchronized void m4605() {
        this.f6852.m5200();
        if (!this.f6851) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f6851 = false;
        if (this.f6853) {
            mo4404();
        }
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ⁱˊ */
    public final int mo4405() {
        return this.f6854.mo4405();
    }

    @Override // p133.InterfaceC2201
    /* renamed from: ﹳٴ */
    public final C2200 mo4506() {
        return this.f6852;
    }
}
