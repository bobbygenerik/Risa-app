package p257;

import android.graphics.Bitmap;
import p087.AbstractC1746;

/* renamed from: יᐧ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3389 implements InterfaceC3394 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Bitmap.Config f13236;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f13237;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3391 f13238;

    public C3389(C3391 c3391) {
        this.f13238 = c3391;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C3389) {
            C3389 c3389 = (C3389) obj;
            if (this.f13237 == c3389.f13237 && AbstractC1746.m4703(this.f13236, c3389.f13236)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f13237 * 31;
        Bitmap.Config config = this.f13236;
        return i + (config != null ? config.hashCode() : 0);
    }

    public final String toString() {
        return C3392.m7275(this.f13237, this.f13236);
    }

    @Override // p257.InterfaceC3394
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo7273() {
        this.f13238.ˎᐧ(this);
    }
}
