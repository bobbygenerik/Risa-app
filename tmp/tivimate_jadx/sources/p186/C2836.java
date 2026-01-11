package p186;

import android.view.ScrollFeedbackProvider;
import androidx.core.widget.NestedScrollView;

/* renamed from: ˋᵔ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2836 implements InterfaceC2806 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ScrollFeedbackProvider f10637;

    public C2836(NestedScrollView nestedScrollView) {
        this.f10637 = ScrollFeedbackProvider.createProvider(nestedScrollView);
    }

    @Override // p186.InterfaceC2806
    public final void onScrollLimit(int i, int i2, int i3, boolean z) {
        this.f10637.onScrollLimit(i, i2, i3, z);
    }

    @Override // p186.InterfaceC2806
    public final void onScrollProgress(int i, int i2, int i3, int i4) {
        this.f10637.onScrollProgress(i, i2, i3, i4);
    }
}
