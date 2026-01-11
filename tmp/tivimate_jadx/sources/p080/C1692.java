package p080;

import p031.InterfaceC1141;
import p087.AbstractC1751;

/* renamed from: ʿʾ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1692 implements InterfaceC1710 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC1710 f6878;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f6879;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final InterfaceC1700 f6880;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f6881;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f6882;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean f6883;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final InterfaceC1141 f6884;

    public C1692(InterfaceC1710 interfaceC1710, boolean z, boolean z2, InterfaceC1141 interfaceC1141, InterfaceC1700 interfaceC1700) {
        AbstractC1751.m4711(interfaceC1710, "Argument must not be null");
        this.f6878 = interfaceC1710;
        this.f6879 = z;
        this.f6883 = z2;
        this.f6884 = interfaceC1141;
        AbstractC1751.m4711(interfaceC1700, "Argument must not be null");
        this.f6880 = interfaceC1700;
    }

    @Override // p080.InterfaceC1710
    public final Object get() {
        return this.f6878.get();
    }

    public final synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f6879 + ", listener=" + this.f6880 + ", key=" + this.f6884 + ", acquired=" + this.f6881 + ", isRecycled=" + this.f6882 + ", resource=" + this.f6878 + '}';
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ʽ */
    public final Class mo4403() {
        return this.f6878.mo4403();
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ˈ */
    public final synchronized void mo4404() {
        if (this.f6881 > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f6882) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f6882 = true;
        if (this.f6883) {
            this.f6878.mo4404();
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m4611() {
        boolean z;
        synchronized (this) {
            int i = this.f6881;
            if (i <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z = true;
            int i2 = i - 1;
            this.f6881 = i2;
            if (i2 != 0) {
                z = false;
            }
        }
        if (z) {
            ((C1698) this.f6880).m4640(this.f6884, this);
        }
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ⁱˊ */
    public final int mo4405() {
        return this.f6878.mo4405();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized void m4612() {
        if (this.f6882) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.f6881++;
    }
}
