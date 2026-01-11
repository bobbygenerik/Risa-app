package p056;

import com.google.android.gms.internal.play_billing.C0537;

/* renamed from: ʽﹳ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1508 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C1507 f5966;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f5967;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C1505 f5968;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Object f5969;

    public final void finalize() {
        C1507 c1507;
        C1505 c1505 = this.f5968;
        if (c1505 != null) {
            C1500 c1500 = c1505.f5958;
            if (!c1500.isDone()) {
                c1500.mo4321(new C0537(3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f5969));
            }
        }
        if (this.f5967 || (c1507 = this.f5966) == null) {
            return;
        }
        c1507.m4320(null);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4322(Throwable th) {
        this.f5967 = true;
        C1505 c1505 = this.f5968;
        if (c1505 == null || !c1505.f5958.mo4321(th)) {
            return;
        }
        this.f5969 = null;
        this.f5968 = null;
        this.f5966 = null;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4323(Object obj) {
        this.f5967 = true;
        C1505 c1505 = this.f5968;
        if (c1505 == null || !c1505.f5958.m4320(obj)) {
            return;
        }
        this.f5969 = null;
        this.f5968 = null;
        this.f5966 = null;
    }
}
