package p186;

import android.view.View;
import java.lang.ref.WeakReference;

/* renamed from: ˋᵔ.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2798 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final WeakReference f10550;

    public C2798(View view) {
        this.f10550 = new WeakReference(view);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m6226(long j) {
        View view = (View) this.f10550.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m6227(InterfaceC2796 interfaceC2796) {
        View view = (View) this.f10550.get();
        if (view != null) {
            if (interfaceC2796 != null) {
                view.animate().setListener(new C2803(interfaceC2796, view, 0));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m6228(float f) {
        View view = (View) this.f10550.get();
        if (view != null) {
            view.animate().translationY(f);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6229() {
        View view = (View) this.f10550.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6230(float f) {
        View view = (View) this.f10550.get();
        if (view != null) {
            view.animate().alpha(f);
        }
    }
}
