package p363;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.widget.PopupWindow;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ViewStubCompat;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import p136.AbstractC2222;
import p136.AbstractC2224;
import p136.AbstractC2228;
import p136.AbstractC2229;
import p136.C2219;
import p186.AbstractC2780;
import p186.AbstractC2823;
import p186.C2798;
import p229.C3125;
import p307.AbstractC3740;
import p353.MenuC4312;
import ˏˆ.ﹳٴ;

/* renamed from: ᵔᵢ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class WindowCallbackC4401 implements Window.Callback {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f16362;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Window.Callback f16363;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f16364;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f16365;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ LayoutInflaterFactory2C4430 f16366;

    public WindowCallbackC4401(LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430, Window.Callback callback) {
        this.f16366 = layoutInflaterFactory2C4430;
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.f16363 = callback;
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.f16363.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z = this.f16362;
        Window.Callback callback = this.f16363;
        return z ? callback.dispatchKeyEvent(keyEvent) : this.f16366.m8961(keyEvent) || callback.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0067, code lost:
    
        if (r7 != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0039, code lost:
    
        if (r0 != false) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x006e A[RETURN] */
    @Override // android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchKeyShortcutEvent(android.view.KeyEvent r7) {
        /*
            r6 = this;
            android.view.Window$Callback r0 = r6.f16363
            boolean r0 = r0.dispatchKeyShortcutEvent(r7)
            r1 = 1
            if (r0 != 0) goto L6f
            int r0 = r7.getKeyCode()
            ᵔᵢ.ᵢˏ r2 = r6.f16366
            r2.m8955()
            ᵔᵢ.ᵎⁱ r3 = r2.f16500
            r4 = 0
            if (r3 == 0) goto L3d
            ᵔᵢ.ˉٴ r3 = r3.f16456
            if (r3 != 0) goto L1d
        L1b:
            r0 = r4
            goto L39
        L1d:
            ᵔʾ.ˆʾ r3 = r3.f16427
            if (r3 == 0) goto L1b
            int r5 = r7.getDeviceId()
            android.view.KeyCharacterMap r5 = android.view.KeyCharacterMap.load(r5)
            int r5 = r5.getKeyboardType()
            if (r5 == r1) goto L31
            r5 = r1
            goto L32
        L31:
            r5 = r4
        L32:
            r3.setQwertyMode(r5)
            boolean r0 = r3.performShortcut(r0, r7, r4)
        L39:
            if (r0 == 0) goto L3d
        L3b:
            r7 = r1
            goto L6b
        L3d:
            ᵔᵢ.ʼʼ r0 = r2.f16519
            if (r0 == 0) goto L52
            int r3 = r7.getKeyCode()
            boolean r0 = r2.m8960(r0, r3, r7)
            if (r0 == 0) goto L52
            ᵔᵢ.ʼʼ r7 = r2.f16519
            if (r7 == 0) goto L3b
            r7.f16381 = r1
            goto L3b
        L52:
            ᵔᵢ.ʼʼ r0 = r2.f16519
            if (r0 != 0) goto L6a
            ᵔᵢ.ʼʼ r0 = r2.m8969(r4)
            r2.m8963(r0, r7)
            int r3 = r7.getKeyCode()
            boolean r7 = r2.m8960(r0, r3, r7)
            r0.f16375 = r4
            if (r7 == 0) goto L6a
            goto L3b
        L6a:
            r7 = r4
        L6b:
            if (r7 == 0) goto L6e
            goto L6f
        L6e:
            return r4
        L6f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p363.WindowCallbackC4401.dispatchKeyShortcutEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.f16363.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f16363.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.f16363.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeFinished(ActionMode actionMode) {
        this.f16363.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeStarted(ActionMode actionMode) {
        this.f16363.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onAttachedToWindow() {
        this.f16363.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        if (this.f16365) {
            this.f16363.onContentChanged();
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0 || (menu instanceof MenuC4312)) {
            return this.f16363.onCreatePanelMenu(i, menu);
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final View onCreatePanelView(int i) {
        return this.f16363.onCreatePanelView(i);
    }

    @Override // android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.f16363.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        return this.f16363.onMenuItemSelected(i, menuItem);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuOpened(int i, Menu menu) {
        m8903(i, menu);
        if (i == 108) {
            LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = this.f16366;
            layoutInflaterFactory2C4430.m8955();
            C4425 c4425 = layoutInflaterFactory2C4430.f16500;
            if (c4425 != null) {
                ArrayList arrayList = c4425.f16458;
                if (true != c4425.f16467) {
                    c4425.f16467 = true;
                    if (arrayList.size() > 0) {
                        throw AbstractC3740.m7931(0, arrayList);
                    }
                }
            }
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final void onPanelClosed(int i, Menu menu) {
        if (this.f16364) {
            this.f16363.onPanelClosed(i, menu);
            return;
        }
        m8901(i, menu);
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = this.f16366;
        if (i != 108) {
            if (i == 0) {
                C4402 m8969 = layoutInflaterFactory2C4430.m8969(i);
                if (m8969.f16372) {
                    layoutInflaterFactory2C4430.m8970(m8969, false);
                    return;
                }
                return;
            }
            return;
        }
        layoutInflaterFactory2C4430.m8955();
        C4425 c4425 = layoutInflaterFactory2C4430.f16500;
        if (c4425 != null) {
            ArrayList arrayList = c4425.f16458;
            if (c4425.f16467) {
                c4425.f16467 = false;
                if (arrayList.size() > 0) {
                    throw AbstractC3740.m7931(0, arrayList);
                }
            }
        }
    }

    @Override // android.view.Window.Callback
    public final void onPointerCaptureChanged(boolean z) {
        AbstractC2222.m5226(this.f16363, z);
    }

    @Override // android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        MenuC4312 menuC4312 = menu instanceof MenuC4312 ? (MenuC4312) menu : null;
        if (i == 0 && menuC4312 == null) {
            return false;
        }
        if (menuC4312 != null) {
            menuC4312.f15955 = true;
        }
        boolean onPreparePanel = this.f16363.onPreparePanel(i, view, menu);
        if (menuC4312 != null) {
            menuC4312.f15955 = false;
        }
        return onPreparePanel;
    }

    @Override // android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i) {
        MenuC4312 menuC4312 = this.f16366.m8969(0).f16378;
        if (menuC4312 != null) {
            m8902(list, menuC4312, i);
        } else {
            m8902(list, menu, i);
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested() {
        return this.f16363.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested(SearchEvent searchEvent) {
        return AbstractC2224.m5228(this.f16363, searchEvent);
    }

    @Override // android.view.Window.Callback
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.f16363.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        this.f16363.onWindowFocusChanged(z);
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [ˉʿ.ﹳٴ, java.lang.Object, ˉʿ.ˈ, ᵔʾ.ᵔᵢ] */
    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
        ViewGroup viewGroup;
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = this.f16366;
        if (!layoutInflaterFactory2C4430.f16498 || i != 0) {
            return AbstractC2224.m5227(this.f16363, callback, i);
        }
        Context context = layoutInflaterFactory2C4430.f16528;
        ﹳٴ r11 = new ﹳٴ(context, callback);
        AbstractC2228 abstractC2228 = layoutInflaterFactory2C4430.f16534;
        if (abstractC2228 != null) {
            abstractC2228.mo5223();
        }
        C3125 c3125 = new C3125(layoutInflaterFactory2C4430, r11, 17, false);
        layoutInflaterFactory2C4430.m8955();
        C4425 c4425 = layoutInflaterFactory2C4430.f16500;
        int i2 = 1;
        if (c4425 != null) {
            C4415 c4415 = c4425.f16456;
            if (c4415 != null) {
                c4415.mo5223();
            }
            c4425.f16447.setHideOnContentScrollEnabled(false);
            c4425.f16468.m38();
            C4415 c44152 = new C4415(c4425, c4425.f16468.getContext(), c3125);
            MenuC4312 menuC4312 = c44152.f16427;
            menuC4312.m8727();
            try {
                if (((ﹳٴ) c44152.f16430.f11943).ˈٴ(c44152, menuC4312)) {
                    c4425.f16456 = c44152;
                    c44152.mo5210();
                    c4425.f16468.m36(c44152);
                    c4425.m8927(true);
                } else {
                    c44152 = null;
                }
                layoutInflaterFactory2C4430.f16534 = c44152;
            } finally {
                menuC4312.m8720();
            }
        }
        if (layoutInflaterFactory2C4430.f16534 == null) {
            C2798 c2798 = layoutInflaterFactory2C4430.f16496;
            if (c2798 != null) {
                c2798.m6229();
            }
            AbstractC2228 abstractC22282 = layoutInflaterFactory2C4430.f16534;
            if (abstractC22282 != null) {
                abstractC22282.mo5223();
            }
            if (layoutInflaterFactory2C4430.f16502 == null) {
                if (layoutInflaterFactory2C4430.f16537) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = context.getTheme();
                    theme.resolveAttribute(R.attr.6lo, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme newTheme = context.getResources().newTheme();
                        newTheme.setTo(theme);
                        newTheme.applyStyle(typedValue.resourceId, true);
                        C2219 c2219 = new C2219(context, 0);
                        c2219.getTheme().setTo(newTheme);
                        context = c2219;
                    }
                    layoutInflaterFactory2C4430.f16502 = new ActionBarContextView(context, null);
                    PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, R.attr.5vv);
                    layoutInflaterFactory2C4430.f16525 = popupWindow;
                    popupWindow.setWindowLayoutType(2);
                    layoutInflaterFactory2C4430.f16525.setContentView(layoutInflaterFactory2C4430.f16502);
                    layoutInflaterFactory2C4430.f16525.setWidth(-1);
                    context.getTheme().resolveAttribute(R.attr.3ut, typedValue, true);
                    layoutInflaterFactory2C4430.f16502.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                    layoutInflaterFactory2C4430.f16525.setHeight(-2);
                    layoutInflaterFactory2C4430.f16503 = new RunnableC4414(layoutInflaterFactory2C4430, i2);
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) layoutInflaterFactory2C4430.f16523.findViewById(R.id.4v1);
                    if (viewStubCompat != null) {
                        layoutInflaterFactory2C4430.m8955();
                        C4425 c44252 = layoutInflaterFactory2C4430.f16500;
                        Context m8932 = c44252 != null ? c44252.m8932() : null;
                        if (m8932 != null) {
                            context = m8932;
                        }
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(context));
                        layoutInflaterFactory2C4430.f16502 = (ActionBarContextView) viewStubCompat.m83();
                    }
                }
            }
            if (layoutInflaterFactory2C4430.f16502 != null) {
                C2798 c27982 = layoutInflaterFactory2C4430.f16496;
                if (c27982 != null) {
                    c27982.m6229();
                }
                layoutInflaterFactory2C4430.f16502.m38();
                Context context2 = layoutInflaterFactory2C4430.f16502.getContext();
                ActionBarContextView actionBarContextView = layoutInflaterFactory2C4430.f16502;
                ?? obj = new Object();
                obj.f8706 = context2;
                obj.f8707 = actionBarContextView;
                obj.f8711 = c3125;
                MenuC4312 menuC43122 = new MenuC4312(actionBarContextView.getContext());
                menuC43122.f15972 = 1;
                obj.f8708 = menuC43122;
                menuC43122.f15961 = obj;
                if (r11.ˈٴ((AbstractC2228) obj, menuC43122)) {
                    obj.mo5210();
                    layoutInflaterFactory2C4430.f16502.m36(obj);
                    layoutInflaterFactory2C4430.f16534 = obj;
                    if (layoutInflaterFactory2C4430.f16529 && (viewGroup = layoutInflaterFactory2C4430.f16523) != null && viewGroup.isLaidOut()) {
                        layoutInflaterFactory2C4430.f16502.setAlpha(0.0f);
                        C2798 m6281 = AbstractC2823.m6281(layoutInflaterFactory2C4430.f16502);
                        m6281.m6230(1.0f);
                        layoutInflaterFactory2C4430.f16496 = m6281;
                        m6281.m6227(new C4433(i2, layoutInflaterFactory2C4430));
                    } else {
                        layoutInflaterFactory2C4430.f16502.setAlpha(1.0f);
                        layoutInflaterFactory2C4430.f16502.setVisibility(0);
                        if (layoutInflaterFactory2C4430.f16502.getParent() instanceof View) {
                            View view = (View) layoutInflaterFactory2C4430.f16502.getParent();
                            WeakHashMap weakHashMap = AbstractC2823.f10603;
                            AbstractC2780.m6186(view);
                        }
                    }
                    if (layoutInflaterFactory2C4430.f16525 != null) {
                        layoutInflaterFactory2C4430.f16530.getDecorView().post(layoutInflaterFactory2C4430.f16503);
                    }
                } else {
                    layoutInflaterFactory2C4430.f16534 = null;
                }
            }
            layoutInflaterFactory2C4430.m8966();
            layoutInflaterFactory2C4430.f16534 = layoutInflaterFactory2C4430.f16534;
        }
        layoutInflaterFactory2C4430.m8966();
        AbstractC2228 abstractC22283 = layoutInflaterFactory2C4430.f16534;
        if (abstractC22283 != null) {
            return r11.ʽﹳ(abstractC22283);
        }
        return null;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8901(int i, Menu menu) {
        this.f16363.onPanelClosed(i, menu);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m8902(List list, Menu menu, int i) {
        AbstractC2229.m5233(this.f16363, list, menu, i);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m8903(int i, Menu menu) {
        return this.f16363.onMenuOpened(i, menu);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8904(Window.Callback callback) {
        try {
            this.f16365 = true;
            callback.onContentChanged();
        } finally {
            this.f16365 = false;
        }
    }
}
