package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class BrowseFrameLayout extends FrameLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public View.OnKeyListener f587;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public InterfaceC0098 f588;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public InterfaceC0085 f589;

    public BrowseFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean dispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        View.OnKeyListener onKeyListener = this.f587;
        return (onKeyListener == null || dispatchKeyEvent) ? dispatchKeyEvent : onKeyListener.onKey(getRootView(), keyEvent.getKeyCode(), keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i) {
        View m589;
        InterfaceC0098 interfaceC0098 = this.f588;
        return (interfaceC0098 == null || (m589 = interfaceC0098.m589(view, i)) == null) ? super.focusSearch(view, i) : m589;
    }

    public InterfaceC0085 getOnChildFocusListener() {
        return this.f589;
    }

    public InterfaceC0098 getOnFocusSearchListener() {
        return this.f588;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        InterfaceC0085 interfaceC0085 = this.f589;
        if (interfaceC0085 == null) {
            return super.onRequestFocusInDescendants(i, rect);
        }
        interfaceC0085.m572(i, rect);
        return true;
    }

    public void setOnChildFocusListener(InterfaceC0085 interfaceC0085) {
        this.f589 = interfaceC0085;
    }

    public void setOnDispatchKeyListener(View.OnKeyListener onKeyListener) {
        this.f587 = onKeyListener;
    }

    public void setOnFocusSearchListener(InterfaceC0098 interfaceC0098) {
        this.f588 = interfaceC0098;
    }
}
