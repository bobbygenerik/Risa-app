package androidx.constraintlayout.widget;

import android.content.Context;
import android.util.AttributeSet;
import p065.AbstractC1609;
import p065.C1600;

/* loaded from: classes.dex */
public class Group extends AbstractC1609 {
    public Group(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // p065.AbstractC1609, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        m4388();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        m4388();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        m4388();
    }

    @Override // p065.AbstractC1609
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void mo93() {
        C1600 c1600 = (C1600) getLayoutParams();
        c1600.f6341.m4446(0);
        c1600.f6341.m4464(0);
    }

    @Override // p065.AbstractC1609
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo94(ConstraintLayout constraintLayout) {
        m4389(constraintLayout);
    }
}
