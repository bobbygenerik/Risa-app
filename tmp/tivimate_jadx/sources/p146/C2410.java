package p146;

import java.lang.ref.WeakReference;

/* renamed from: ˉᵔ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2410 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f9314;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Object f9315;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C2410 f9316;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C2410 f9317;

    public C2410(C2410 c2410, int i) {
        this.f9314 = i;
        this.f9317 = c2410;
        c2410.f9316 = this;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m5514() {
        switch (this.f9314) {
            case 0:
                return this.f9315;
            default:
                return ((WeakReference) this.f9315).get();
        }
    }
}
