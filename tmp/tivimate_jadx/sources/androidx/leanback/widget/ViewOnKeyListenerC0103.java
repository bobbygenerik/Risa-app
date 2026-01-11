package androidx.leanback.widget;

import android.view.KeyEvent;
import android.view.View;

/* renamed from: androidx.leanback.widget.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnKeyListenerC0103 implements View.OnKeyListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f897 = false;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C0108 f898;

    public ViewOnKeyListenerC0103(C0108 c0108) {
        this.f898 = c0108;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        C0108 c0108 = this.f898;
        C0117 c0117 = c0108.f918;
        if (view != null && keyEvent != null) {
            VerticalGridView verticalGridView = c0108.f910;
            if (verticalGridView.f1499 && (i == 23 || i == 66 || i == 160 || i == 99 || i == 100)) {
                C0101 c0101 = (C0101) verticalGridView.m946(view);
                C0095 c0095 = c0101.f896;
                if (!c0095.m580() || (c0095.f875 & 8) == 8) {
                    keyEvent.getAction();
                    return true;
                }
                int action = keyEvent.getAction();
                if (action != 0) {
                    if (action == 1 && this.f897) {
                        this.f897 = false;
                        c0117.m619(c0101, false);
                        return false;
                    }
                } else if (!this.f897) {
                    this.f897 = true;
                    c0117.m619(c0101, true);
                    return false;
                }
            }
        }
        return false;
    }
}
