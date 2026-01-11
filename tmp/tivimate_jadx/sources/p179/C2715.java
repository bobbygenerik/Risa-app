package p179;

import android.view.animation.Interpolator;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: ˋˋ.ـᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2715 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f10323;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f10324;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Interpolator f10325;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f10326;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f10327;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f10328;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f10329;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6097(RecyclerView recyclerView) {
        int i = this.f10324;
        if (i >= 0) {
            this.f10324 = -1;
            recyclerView.m934(i);
            this.f10329 = false;
            return;
        }
        if (!this.f10329) {
            this.f10326 = 0;
            return;
        }
        Interpolator interpolator = this.f10325;
        if (interpolator != null && this.f10323 < 1) {
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        int i2 = this.f10323;
        if (i2 < 1) {
            throw new IllegalStateException("Scroll duration must be a positive number");
        }
        recyclerView.f1507.m6075(this.f10328, this.f10327, i2, interpolator);
        int i3 = this.f10326 + 1;
        this.f10326 = i3;
        if (i3 > 10) {
        }
        this.f10329 = false;
    }
}
