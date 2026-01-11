package androidx.leanback.widget;

import android.view.View;

/* renamed from: androidx.leanback.widget.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC0143 implements View.OnClickListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C0101 f997;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C0117 f998;

    public ViewOnClickListenerC0143(C0117 c0117, C0101 c0101) {
        this.f998 = c0117;
        this.f997 = c0101;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC0136 interfaceC0136;
        C0117 c0117 = this.f998;
        if (c0117.f938 == null && (interfaceC0136 = ((C0108) c0117.f944.getAdapter()).f914) != null) {
            interfaceC0136.mo441(this.f997.f896);
        }
    }
}
