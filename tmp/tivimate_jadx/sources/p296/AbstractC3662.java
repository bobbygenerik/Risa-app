package p296;

import android.os.Bundle;
import p319.C3936;

/* renamed from: ٴﾞ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3662 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC3675 f14336;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f14337;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Bundle f14338;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f14339;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Boolean f14340;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC3675 f14341;

    public AbstractC3662(AbstractC3675 abstractC3675, int i, Bundle bundle) {
        this.f14341 = abstractC3675;
        Boolean bool = Boolean.TRUE;
        this.f14336 = abstractC3675;
        this.f14340 = bool;
        this.f14339 = false;
        this.f14337 = i;
        this.f14338 = bundle;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7688() {
        synchronized (this) {
            this.f14340 = null;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m7689() {
        m7688();
        synchronized (this.f14336.f14393) {
            this.f14336.f14393.remove(this);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public abstract boolean mo7690();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public abstract void mo7691(C3936 c3936);
}
