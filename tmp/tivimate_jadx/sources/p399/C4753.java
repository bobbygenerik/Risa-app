package p399;

/* renamed from: ⁱⁱ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4753 implements InterfaceC4749, InterfaceC4748 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public volatile InterfaceC4748 f17945;

    /* renamed from: ˈ, reason: contains not printable characters */
    public volatile InterfaceC4748 f17946;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC4749 f17948;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f17949;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f17947 = 3;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f17950 = 3;

    public C4753(Object obj, InterfaceC4749 interfaceC4749) {
        this.f17949 = obj;
        this.f17948 = interfaceC4749;
    }

    @Override // p399.InterfaceC4748
    public final void clear() {
        synchronized (this.f17949) {
            try {
                this.f17947 = 3;
                this.f17945.clear();
                if (this.f17950 != 3) {
                    this.f17950 = 3;
                    this.f17946.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p399.InterfaceC4749
    public final InterfaceC4749 getRoot() {
        InterfaceC4749 root;
        synchronized (this.f17949) {
            try {
                InterfaceC4749 interfaceC4749 = this.f17948;
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
        synchronized (this.f17949) {
            try {
                z = true;
                if (this.f17947 != 1 && this.f17950 != 1) {
                    z = false;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // p399.InterfaceC4749
    /* renamed from: ʼˎ */
    public final boolean mo9491(InterfaceC4748 interfaceC4748) {
        boolean z;
        synchronized (this.f17949) {
            InterfaceC4749 interfaceC4749 = this.f17948;
            z = interfaceC4749 == null || interfaceC4749.mo9491(this);
        }
        return z;
    }

    @Override // p399.InterfaceC4749
    /* renamed from: ʽ */
    public final boolean mo9492(InterfaceC4748 interfaceC4748) {
        boolean z;
        int i;
        synchronized (this.f17949) {
            InterfaceC4749 interfaceC4749 = this.f17948;
            z = false;
            if (interfaceC4749 == null || interfaceC4749.mo9492(this)) {
                if (this.f17947 != 5 ? interfaceC4748.equals(this.f17945) : interfaceC4748.equals(this.f17946) && ((i = this.f17950) == 4 || i == 5)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p399.InterfaceC4749
    /* renamed from: ˆʾ */
    public final void mo9493(InterfaceC4748 interfaceC4748) {
        synchronized (this.f17949) {
            try {
                if (interfaceC4748.equals(this.f17946)) {
                    this.f17950 = 5;
                    InterfaceC4749 interfaceC4749 = this.f17948;
                    if (interfaceC4749 != null) {
                        interfaceC4749.mo9493(this);
                    }
                    return;
                }
                this.f17947 = 5;
                if (this.f17950 != 1) {
                    this.f17950 = 1;
                    this.f17946.mo9490();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ˈ */
    public final void mo9485() {
        synchronized (this.f17949) {
            try {
                if (this.f17947 == 1) {
                    this.f17947 = 2;
                    this.f17945.mo9485();
                }
                if (this.f17950 == 1) {
                    this.f17950 = 2;
                    this.f17946.mo9485();
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
        synchronized (this.f17949) {
            try {
                z = this.f17947 == 3 && this.f17950 == 3;
            } finally {
            }
        }
        return z;
    }

    @Override // p399.InterfaceC4749
    /* renamed from: ٴﹶ */
    public final boolean mo9494(InterfaceC4748 interfaceC4748) {
        boolean z;
        synchronized (this.f17949) {
            InterfaceC4749 interfaceC4749 = this.f17948;
            z = (interfaceC4749 == null || interfaceC4749.mo9494(this)) && interfaceC4748.equals(this.f17945);
        }
        return z;
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ᵎﹶ */
    public final boolean mo9487(InterfaceC4748 interfaceC4748) {
        if (interfaceC4748 instanceof C4753) {
            C4753 c4753 = (C4753) interfaceC4748;
            if (this.f17945.mo9487(c4753.f17945) && this.f17946.mo9487(c4753.f17946)) {
                return true;
            }
        }
        return false;
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ᵔᵢ */
    public final boolean mo9488() {
        boolean z;
        synchronized (this.f17949) {
            try {
                z = this.f17947 == 4 || this.f17950 == 4;
            } finally {
            }
        }
        return z;
    }

    @Override // p399.InterfaceC4749
    /* renamed from: ⁱˊ */
    public final void mo9495(InterfaceC4748 interfaceC4748) {
        synchronized (this.f17949) {
            try {
                if (interfaceC4748.equals(this.f17945)) {
                    this.f17947 = 4;
                } else if (interfaceC4748.equals(this.f17946)) {
                    this.f17950 = 4;
                }
                InterfaceC4749 interfaceC4749 = this.f17948;
                if (interfaceC4749 != null) {
                    interfaceC4749.mo9495(this);
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
        synchronized (this.f17949) {
            try {
                z = this.f17945.mo9489() || this.f17946.mo9489();
            } finally {
            }
        }
        return z;
    }

    @Override // p399.InterfaceC4748
    /* renamed from: ﾞᴵ */
    public final void mo9490() {
        synchronized (this.f17949) {
            try {
                if (this.f17947 != 1) {
                    this.f17947 = 1;
                    this.f17945.mo9490();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
