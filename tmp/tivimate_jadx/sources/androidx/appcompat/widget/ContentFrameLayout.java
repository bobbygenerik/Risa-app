package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import p137.C2286;
import p137.C2308;
import p137.C2349;
import p137.InterfaceC2263;
import p137.InterfaceC2345;
import p186.C2798;
import p353.MenuC4312;
import p363.C4429;
import p363.LayoutInflaterFactory2C4430;

/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public TypedValue f148;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public TypedValue f149;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public TypedValue f150;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public InterfaceC2263 f151;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public TypedValue f152;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Rect f153;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public TypedValue f154;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public TypedValue f155;

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f153 = new Rect();
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f155 == null) {
            this.f155 = new TypedValue();
        }
        return this.f155;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f152 == null) {
            this.f152 = new TypedValue();
        }
        return this.f152;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f148 == null) {
            this.f148 = new TypedValue();
        }
        return this.f148;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f150 == null) {
            this.f150 = new TypedValue();
        }
        return this.f150;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f149 == null) {
            this.f149 = new TypedValue();
        }
        return this.f149;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f154 == null) {
            this.f154 = new TypedValue();
        }
        return this.f154;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        InterfaceC2263 interfaceC2263 = this.f151;
        if (interfaceC2263 != null) {
            interfaceC2263.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        C2308 c2308;
        super.onDetachedFromWindow();
        InterfaceC2263 interfaceC2263 = this.f151;
        if (interfaceC2263 != null) {
            LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = ((C4429) interfaceC2263).f16483;
            InterfaceC2345 interfaceC2345 = layoutInflaterFactory2C4430.f16504;
            if (interfaceC2345 != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC2345;
                actionBarOverlayLayout.m46();
                ActionMenuView actionMenuView = ((C2286) actionBarOverlayLayout.f123).f8955.f209;
                if (actionMenuView != null && (c2308 = actionMenuView.f138) != null) {
                    c2308.m5389();
                    C2349 c2349 = c2308.f9014;
                    if (c2349 != null && c2349.m8749()) {
                        c2349.f16008.dismiss();
                    }
                }
            }
            if (layoutInflaterFactory2C4430.f16525 != null) {
                layoutInflaterFactory2C4430.f16530.getDecorView().removeCallbacks(layoutInflaterFactory2C4430.f16503);
                if (layoutInflaterFactory2C4430.f16525.isShowing()) {
                    try {
                        layoutInflaterFactory2C4430.f16525.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                layoutInflaterFactory2C4430.f16525 = null;
            }
            C2798 c2798 = layoutInflaterFactory2C4430.f16496;
            if (c2798 != null) {
                c2798.m6229();
            }
            MenuC4312 menuC4312 = layoutInflaterFactory2C4430.m8969(0).f16378;
            if (menuC4312 != null) {
                menuC4312.m8723(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ac A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b3  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r17, int r18) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(InterfaceC2263 interfaceC2263) {
        this.f151 = interfaceC2263;
    }
}
