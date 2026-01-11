package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ʽᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0536 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C0541 f2307;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f2308;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C0579 f2309;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Object f2310;

    public final void finalize() {
        C0541 c0541;
        C0579 c0579 = this.f2309;
        if (c0579 != null) {
            C0633 c0633 = c0579.f2373;
            if (!c0633.isDone()) {
                if (C0593.f2398.mo2029(c0633, null, new C0597(new C0537(1, "The completer object was garbage collected - this future would otherwise never complete. The tag was: ".concat(String.valueOf(this.f2310)))))) {
                    C0593.m2190(c0633);
                }
            }
        }
        if (this.f2308 || (c0541 = this.f2307) == null) {
            return;
        }
        c0541.m2090(null);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m2080(Object obj) {
        this.f2308 = true;
        C0579 c0579 = this.f2309;
        if (c0579 != null) {
            C0633 c0633 = c0579.f2373;
            c0633.getClass();
            if (obj == null) {
                obj = C0593.f2399;
            }
            if (C0593.f2398.mo2029(c0633, null, obj)) {
                C0593.m2190(c0633);
                this.f2310 = null;
                this.f2309 = null;
                this.f2307 = null;
            }
        }
    }
}
