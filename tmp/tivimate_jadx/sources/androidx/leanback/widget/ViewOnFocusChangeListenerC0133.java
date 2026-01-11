package androidx.leanback.widget;

import android.view.View;

/* renamed from: androidx.leanback.widget.ᴵʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnFocusChangeListenerC0133 implements View.OnFocusChangeListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ SearchBar f978;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f979;

    public /* synthetic */ ViewOnFocusChangeListenerC0133(SearchBar searchBar, int i) {
        this.f979 = i;
        this.f978 = searchBar;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        switch (this.f979) {
            case 0:
                SearchBar searchBar = this.f978;
                if (z) {
                    searchBar.f738.post(new RunnableC0082(searchBar, 1));
                } else {
                    searchBar.m551();
                }
                searchBar.m550(z);
                return;
            default:
                SearchBar searchBar2 = this.f978;
                if (z) {
                    searchBar2.m551();
                    if (searchBar2.f737) {
                        searchBar2.m548();
                        searchBar2.f737 = false;
                    }
                } else {
                    searchBar2.m552();
                }
                searchBar2.m550(z);
                return;
        }
    }
}
