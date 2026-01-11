package p399;

import p307.AbstractC3740;

/* renamed from: ⁱⁱ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4752 implements InterfaceC4749, InterfaceC4748 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public volatile C4751 f17938;

    /* renamed from: ˈ, reason: contains not printable characters */
    public volatile InterfaceC4748 f17939;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f17941;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f17942;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC4749 f17943;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f17940 = 3;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f17944 = 3;

    public C4752(Object obj, InterfaceC4749 interfaceC4749) {
        this.f17942 = obj;
        this.f17943 = interfaceC4749;
    }

    @Override // p399.InterfaceC4748
    public final void clear() {
        synchronized (this.f17942) {
            this.f17941 = false;
            this.f17940 = 3;
            this.f17944 = 3;
            this.f17939.clear();
            this.f17938.clear();
        }
    }

    @Override // p399.InterfaceC4749
    public final InterfaceC4749 getRoot() {
        InterfaceC4749 root;
        synchronized (this.f17942) {
            try {
                InterfaceC4749 interfaceC4749 = this.f17943;
                root = interfaceC4749 != null ? interfaceC4749.getRoot() : this;
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    @Override // p399.InterfaceC4748
    public final boolean isRunning() {
        boolean z;
        synchronized (this.f17942) {
            z = true;
            if (this.f17940 != 1) {
                z = false;
            }
        }
        return z;
    }

    @Override // p399.InterfaceC4749
    /* renamed from: ʼˎ */
    public final boolean mo9491(InterfaceC4748 interfaceC4748) {
        boolean z;
        synchronized (this.f17942) {
            try {
                InterfaceC4749 interfaceC4749 = this.f17943;
                z = (interfaceC4749 == null || interfaceC4749.mo9491(this)) && (interfaceC4748.equals(this.f17938) || this.f17940 != 4);
            } finally {
            }
        }
        return z;
    }

    @Override // p399.InterfaceC4749
    /* renamed from: ʽ */
    public final boolean mo9492(InterfaceC4748 interfaceC4748) {
        boolean z;
        synchronized (this.f17942) {
            try {
                InterfaceC4749 interfaceC4749 = this.f17943;
                z = (interfaceC4749 == null || interfaceC4749.mo9492(this)) && interfaceC4748.equals(this.f17938) && !mo9489();
            } finally {
            }
        }
        return z;
    }

    @Override // p399.InterfaceC4749
    /* renamed from: ˆʾ */
    public final void mo9493(InterfaceC4748 interfaceC4748) {
        synchronized (this.f17942) {
            try {
                if (!interfaceC4748.equals(this.f17938)) {
                    this.f17944 = 5;
                    return;
                }
                this.f17940 = 5;
                InterfaceC4749 interfaceC4749 = this.f17943;
                if (interfaceC4749 != null) {
                    interfaceC4749.mo9493(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ˈ */
    public final void mo9485() {
        synchronized (this.f17942) {
            try {
                if (!AbstractC3740.m7946(this.f17944)) {
                    this.f17944 = 2;
                    this.f17939.mo9485();
                }
                if (!AbstractC3740.m7946(this.f17940)) {
                    this.f17940 = 2;
                    this.f17938.mo9485();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ˑﹳ */
    public final boolean mo9486() {
        boolean z;
        synchronized (this.f17942) {
            z = this.f17940 == 3;
        }
        return z;
    }

    @Override // p399.InterfaceC4749
    /* renamed from: ٴﹶ */
    public final boolean mo9494(InterfaceC4748 interfaceC4748) {
        boolean z;
        synchronized (this.f17942) {
            try {
                InterfaceC4749 interfaceC4749 = this.f17943;
                z = (interfaceC4749 == null || interfaceC4749.mo9494(this)) && interfaceC4748.equals(this.f17938) && this.f17940 != 2;
            } finally {
            }
        }
        return z;
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ᵎﹶ */
    public final boolean mo9487(InterfaceC4748 interfaceC4748) {
        if (!(interfaceC4748 instanceof C4752)) {
            return false;
        }
        C4752 c4752 = (C4752) interfaceC4748;
        if (this.f17938 == null) {
            if (c4752.f17938 != null) {
                return false;
            }
        } else if (!this.f17938.mo9487(c4752.f17938)) {
            return false;
        }
        return this.f17939 == null ? c4752.f17939 == null : this.f17939.mo9487(c4752.f17939);
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ᵔᵢ */
    public final boolean mo9488() {
        boolean z;
        synchronized (this.f17942) {
            z = this.f17940 == 4;
        }
        return z;
    }

    @Override // p399.InterfaceC4749
    /* renamed from: ⁱˊ */
    public final void mo9495(InterfaceC4748 interfaceC4748) {
        synchronized (this.f17942) {
            try {
                if (interfaceC4748.equals(this.f17939)) {
                    this.f17944 = 4;
                    return;
                }
                this.f17940 = 4;
                InterfaceC4749 interfaceC4749 = this.f17943;
                if (interfaceC4749 != null) {
                    interfaceC4749.mo9495(this);
                }
                if (!AbstractC3740.m7946(this.f17944)) {
                    this.f17939.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p399.InterfaceC4749, p399.InterfaceC4748
    /* renamed from: ﹳٴ */
    public final boolean mo9489() {
        boolean z;
        synchronized (this.f17942) {
            try {
                z = this.f17939.mo9489() || this.f17938.mo9489();
            } finally {
            }
        }
        return z;
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ﾞᴵ */
    public final void mo9490() {
        synchronized (this.f17942) {
            try {
                this.f17941 = true;
                try {
                    if (this.f17940 != 4 && this.f17944 != 1) {
                        this.f17944 = 1;
                        this.f17939.mo9490();
                    }
                    if (this.f17941 && this.f17940 != 1) {
                        this.f17940 = 1;
                        this.f17938.mo9490();
                    }
                    this.f17941 = false;
                } catch (Throwable th) {
                    this.f17941 = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
