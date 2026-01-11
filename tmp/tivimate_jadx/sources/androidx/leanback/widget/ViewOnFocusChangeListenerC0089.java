package androidx.leanback.widget;

import android.view.View;
import androidx.leanback.app.C0069;

/* renamed from: androidx.leanback.widget.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnFocusChangeListenerC0089 implements View.OnFocusChangeListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C0108 f844;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public View f845;

    public ViewOnFocusChangeListenerC0089(C0108 c0108, C0069 c0069) {
        this.f844 = c0108;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        C0108 c0108 = this.f844;
        C0117 c0117 = c0108.f918;
        VerticalGridView verticalGridView = c0108.f910;
        if (verticalGridView.f1499) {
            C0101 c0101 = (C0101) verticalGridView.m946(view);
            if (z) {
                this.f845 = view;
                C0095 c0095 = c0101.f896;
            } else if (this.f845 == view) {
                c0117.getClass();
                c0101.m590(false);
                this.f845 = null;
            }
            c0117.getClass();
        }
    }
}
