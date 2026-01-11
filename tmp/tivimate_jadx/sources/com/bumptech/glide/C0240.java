package com.bumptech.glide;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import p066.C1614;
import p066.InterfaceC1616;
import p066.ViewTreeObserverOnPreDrawListenerC1617;
import p087.AbstractC1751;
import p117.InterfaceC1990;
import p399.C4751;
import p399.InterfaceC4748;

/* renamed from: com.bumptech.glide.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0240 implements InterfaceC1616 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1614 f1711;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final View f1712;

    public C0240(View view) {
        AbstractC1751.m4711(view, "Argument must not be null");
        this.f1712 = view;
        this.f1711 = new C1614(view);
    }

    public final String toString() {
        return "Target for: " + this.f1712;
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo1185(Drawable drawable) {
        C1614 c1614 = this.f1711;
        ViewTreeObserver viewTreeObserver = c1614.f6446.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(c1614.f6444);
        }
        c1614.f6444 = null;
        c1614.f6445.clear();
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ʽ */
    public final void mo1159() {
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ˆʾ */
    public final void mo1160() {
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo1186(C4751 c4751) {
        this.f1711.f6445.remove(c4751);
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo1187(C4751 c4751) {
        C1614 c1614 = this.f1711;
        ArrayList arrayList = c1614.f6445;
        View view = c1614.f6446;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int m4397 = c1614.m4397(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        int m43972 = c1614.m4397(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((m4397 > 0 || m4397 == Integer.MIN_VALUE) && (m43972 > 0 || m43972 == Integer.MIN_VALUE)) {
            c4751.m9501(m4397, m43972);
            return;
        }
        if (!arrayList.contains(c4751)) {
            arrayList.add(c4751);
        }
        if (c1614.f6444 == null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            ViewTreeObserverOnPreDrawListenerC1617 viewTreeObserverOnPreDrawListenerC1617 = new ViewTreeObserverOnPreDrawListenerC1617(c1614);
            c1614.f6444 = viewTreeObserverOnPreDrawListenerC1617;
            viewTreeObserver.addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC1617);
        }
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ٴﹶ */
    public final void mo1163() {
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo1188(Drawable drawable) {
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final InterfaceC4748 mo1189() {
        Object tag = this.f1712.getTag(R.id.4ku);
        if (tag == null) {
            return null;
        }
        if (tag instanceof InterfaceC4748) {
            return (InterfaceC4748) tag;
        }
        throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo1190(Drawable drawable) {
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo1191(InterfaceC4748 interfaceC4748) {
        this.f1712.setTag(R.id.4ku, interfaceC4748);
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo1192(Object obj, InterfaceC1990 interfaceC1990) {
    }
}
