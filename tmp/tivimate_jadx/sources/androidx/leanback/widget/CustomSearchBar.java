package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import ar.tvplayer.tv.R;

/* loaded from: classes.dex */
public final class CustomSearchBar extends SearchBar {
    public CustomSearchBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    @Override // androidx.leanback.widget.SearchBar, android.view.View
    public final void onFinishInflate() {
        View findViewById = findViewById(R.id.2f3);
        if (findViewById != null) {
            findViewById.setBackgroundResource(R.drawable.3s0);
        }
        super.onFinishInflate();
    }

    @Override // androidx.leanback.widget.SearchBar
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo458() {
    }

    @Override // androidx.leanback.widget.SearchBar
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo459() {
    }

    @Override // androidx.leanback.widget.SearchBar
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo460() {
    }
}
