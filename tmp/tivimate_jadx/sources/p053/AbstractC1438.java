package p053;

import android.content.Context;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.leanback.widget.VerticalGridView;
import androidx.recyclerview.widget.RecyclerView;
import ar.tvplayer.tv.R;
import p011.AbstractC0864;
import p011.C0875;
import p229.AbstractComponentCallbacksC3123;

/* renamed from: ʽᵔ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1438 extends AbstractC0864 {

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public ContextThemeWrapper f5616;

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʿ, reason: contains not printable characters */
    public final Context mo4203() {
        if (this.f5616 == null && m6803() != null) {
            TypedValue typedValue = new TypedValue();
            m6803().getTheme().resolveAttribute(R.attr.5lg, typedValue, true);
            int i = typedValue.resourceId;
            if (i == 0) {
                i = R.style.f262774kk;
            }
            this.f5616 = new ContextThemeWrapper(super.mo4203(), i);
        }
        return this.f5616;
    }

    @Override // p011.AbstractC0864
    /* renamed from: ˈـ */
    public final AbstractComponentCallbacksC3123 mo3062() {
        return this.f11928;
    }

    @Override // p011.AbstractC0864
    /* renamed from: ˑˆ */
    public final RecyclerView mo3066(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        VerticalGridView verticalGridView = (VerticalGridView) layoutInflater.inflate(R.layout.5th, viewGroup, false);
        verticalGridView.setWindowAlignment(3);
        verticalGridView.setFocusScrollStrategy(0);
        verticalGridView.setAccessibilityDelegateCompat(new C0875(verticalGridView));
        return verticalGridView;
    }
}
