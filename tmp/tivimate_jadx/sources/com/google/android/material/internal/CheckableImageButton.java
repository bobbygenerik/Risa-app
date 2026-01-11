package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import com.google.android.material.datepicker.C0661;
import p129.C2188;
import p129.InterfaceC2189;
import p137.C2251;
import p186.AbstractC2823;
import p323.AbstractC3985;

/* loaded from: classes.dex */
public class CheckableImageButton extends C2251 implements Checkable {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final int[] f2790 = {R.attr.state_checked};

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f2791;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f2792;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public InterfaceC2189 f2793;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f2794;

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, ar.tvplayer.tv.R.attr.4aq);
        this.f2794 = true;
        this.f2792 = true;
        AbstractC2823.m6273(this, new C0661(2, this));
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f2791;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        return this.f2791 ? View.mergeDrawableStates(super.onCreateDrawableState(i + 1), f2790) : super.onCreateDrawableState(i);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        this.f2793 = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C2188)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C2188 c2188 = (C2188) parcelable;
        super.onRestoreInstanceState(c2188.f15355);
        setChecked(c2188.f8643);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.os.Parcelable, ˈᐧ.ⁱˊ, ᴵˑ.ⁱˊ] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? abstractC3985 = new AbstractC3985(super.onSaveInstanceState());
        abstractC3985.f8643 = this.f2791;
        return abstractC3985;
    }

    public void setCheckable(boolean z) {
        if (this.f2794 != z) {
            this.f2794 = z;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!this.f2794 || this.f2791 == z) {
            return;
        }
        this.f2791 = z;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    @Override // android.view.View
    public void setFocusable(boolean z) {
        InterfaceC2189 interfaceC2189;
        boolean isFocusable = isFocusable();
        super.setFocusable(z);
        if (isFocusable == z || (interfaceC2189 = this.f2793) == null) {
            return;
        }
        interfaceC2189.mo4012();
    }

    public void setOnFocusableChangedListener(InterfaceC2189 interfaceC2189) {
        this.f2793 = interfaceC2189;
    }

    public void setPressable(boolean z) {
        this.f2792 = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.f2792) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f2791);
    }
}
