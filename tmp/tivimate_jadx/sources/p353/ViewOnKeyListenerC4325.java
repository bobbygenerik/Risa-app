package p353;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import p044.ViewOnAttachStateChangeListenerC1333;
import p137.C2249;
import p137.C2254;
import p137.C2301;
import p137.C2331;
import p137.ViewTreeObserverOnGlobalLayoutListenerC2270;

/* renamed from: ᵔʾ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnKeyListenerC4325 extends AbstractC4328 implements PopupWindow.OnDismissListener, View.OnKeyListener {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public int f16030;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final MenuC4312 f16031;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public View f16032;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public InterfaceC4316 f16033;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C4321 f16034;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f16035;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f16036;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f16037;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public boolean f16038;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public ViewTreeObserver f16039;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f16042;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Context f16043;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean f16044;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C2301 f16046;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public PopupWindow.OnDismissListener f16047;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public View f16048;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public boolean f16049;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final ViewTreeObserverOnGlobalLayoutListenerC2270 f16041 = new ViewTreeObserverOnGlobalLayoutListenerC2270(3, this);

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final ViewOnAttachStateChangeListenerC1333 f16045 = new ViewOnAttachStateChangeListenerC1333(5, this);

    /* renamed from: ـˏ, reason: contains not printable characters */
    public int f16040 = 0;

    /* JADX WARN: Type inference failed for: r7v1, types: [ˉˆ.ـᵢ, ˉˆ.ʿـ] */
    public ViewOnKeyListenerC4325(int i, int i2, Context context, View view, MenuC4312 menuC4312, boolean z) {
        this.f16043 = context;
        this.f16031 = menuC4312;
        this.f16044 = z;
        this.f16034 = new C4321(menuC4312, LayoutInflater.from(context), z, R.layout.5q1);
        this.f16042 = i;
        this.f16035 = i2;
        Resources resources = context.getResources();
        this.f16036 = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.470));
        this.f16032 = view;
        this.f16046 = new C2254(context, null, i, i2);
        menuC4312.m8731(this, context);
    }

    @Override // p353.InterfaceC4305
    public final void dismiss() {
        if (mo5277()) {
            this.f16046.dismiss();
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f16038 = true;
        this.f16031.m8723(true);
        ViewTreeObserver viewTreeObserver = this.f16039;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f16039 = this.f16048.getViewTreeObserver();
            }
            this.f16039.removeGlobalOnLayoutListener(this.f16041);
            this.f16039 = null;
        }
        this.f16048.removeOnAttachStateChangeListener(this.f16045);
        PopupWindow.OnDismissListener onDismissListener = this.f16047;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // p353.AbstractC4328
    /* renamed from: ʼᐧ */
    public final void mo8735(int i) {
        this.f16040 = i;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ʽ */
    public final void mo5353(MenuC4312 menuC4312, boolean z) {
        if (menuC4312 != this.f16031) {
            return;
        }
        dismiss();
        InterfaceC4316 interfaceC4316 = this.f16033;
        if (interfaceC4316 != null) {
            interfaceC4316.mo8744(menuC4312, z);
        }
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ˆʾ */
    public final boolean mo5354() {
        return false;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ˈ */
    public final void mo5355() {
        this.f16037 = false;
        C4321 c4321 = this.f16034;
        if (c4321 != null) {
            c4321.notifyDataSetChanged();
        }
    }

    @Override // p353.AbstractC4328
    /* renamed from: ˉˆ */
    public final void mo8737(boolean z) {
        this.f16034.f16021 = z;
    }

    @Override // p353.AbstractC4328
    /* renamed from: ˏי */
    public final void mo8738(int i) {
        this.f16046.m5272(i);
    }

    @Override // p353.InterfaceC4305
    /* renamed from: ˑﹳ */
    public final void mo5273() {
        View view;
        if (mo5277()) {
            return;
        }
        if (this.f16038 || (view = this.f16032) == null) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
        this.f16048 = view;
        C2301 c2301 = this.f16046;
        C2331 c2331 = c2301.f8835;
        C2331 c23312 = c2301.f8835;
        c2331.setOnDismissListener(this);
        c2301.f8845 = this;
        c2301.f8834 = true;
        c23312.setFocusable(true);
        View view2 = this.f16048;
        boolean z = this.f16039 == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f16039 = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f16041);
        }
        view2.addOnAttachStateChangeListener(this.f16045);
        c2301.f8837 = view2;
        c2301.f8854 = this.f16040;
        boolean z2 = this.f16037;
        Context context = this.f16043;
        C4321 c4321 = this.f16034;
        if (!z2) {
            this.f16030 = AbstractC4328.m8754(c4321, context, this.f16036);
            this.f16037 = true;
        }
        c2301.m5278(this.f16030);
        c23312.setInputMethodMode(2);
        Rect rect = this.f16066;
        c2301.f8840 = rect != null ? new Rect(rect) : null;
        c2301.mo5273();
        C2249 c2249 = c2301.f8832;
        c2249.setOnKeyListener(this);
        if (this.f16049) {
            MenuC4312 menuC4312 = this.f16031;
            if (menuC4312.f15958 != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.j3, (ViewGroup) c2249, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(menuC4312.f15958);
                }
                frameLayout.setEnabled(false);
                c2249.addHeaderView(frameLayout, null, false);
            }
        }
        c2301.mo5270(c4321);
        c2301.mo5273();
    }

    @Override // p353.AbstractC4328
    /* renamed from: יـ */
    public final void mo8739(boolean z) {
        this.f16049 = z;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ᵎﹶ */
    public final boolean mo5357(SubMenuC4310 subMenuC4310) {
        boolean z;
        if (subMenuC4310.hasVisibleItems()) {
            C4318 c4318 = new C4318(this.f16042, this.f16035, this.f16043, this.f16048, subMenuC4310, this.f16044);
            InterfaceC4316 interfaceC4316 = this.f16033;
            c4318.f16006 = interfaceC4316;
            AbstractC4328 abstractC4328 = c4318.f16008;
            if (abstractC4328 != null) {
                abstractC4328.mo5390(interfaceC4316);
            }
            int size = subMenuC4310.f15973.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z = false;
                    break;
                }
                MenuItem item = subMenuC4310.getItem(i);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
                i++;
            }
            c4318.f16013 = z;
            AbstractC4328 abstractC43282 = c4318.f16008;
            if (abstractC43282 != null) {
                abstractC43282.mo8737(z);
            }
            c4318.f16011 = this.f16047;
            this.f16047 = null;
            this.f16031.m8723(false);
            C2301 c2301 = this.f16046;
            int i2 = c2301.f8842;
            int m5274 = c2301.m5274();
            if ((Gravity.getAbsoluteGravity(this.f16040, this.f16032.getLayoutDirection()) & 7) == 5) {
                i2 += this.f16032.getWidth();
            }
            if (!c4318.m8749()) {
                if (c4318.f16017 != null) {
                    c4318.m8748(i2, m5274, true, true);
                }
            }
            InterfaceC4316 interfaceC43162 = this.f16033;
            if (interfaceC43162 != null) {
                interfaceC43162.mo8745(subMenuC4310);
            }
            return true;
        }
        return false;
    }

    @Override // p353.AbstractC4328
    /* renamed from: ᵔʾ */
    public final void mo8740(View view) {
        this.f16032 = view;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ᵔᵢ */
    public final void mo5390(InterfaceC4316 interfaceC4316) {
        this.f16033 = interfaceC4316;
    }

    @Override // p353.AbstractC4328
    /* renamed from: ᵔﹳ */
    public final void mo8741(int i) {
        this.f16046.f8842 = i;
    }

    @Override // p353.InterfaceC4305
    /* renamed from: ﹳٴ */
    public final boolean mo5277() {
        return !this.f16038 && this.f16046.f8835.isShowing();
    }

    @Override // p353.AbstractC4328
    /* renamed from: ﹳᐧ */
    public final void mo8742(PopupWindow.OnDismissListener onDismissListener) {
        this.f16047 = onDismissListener;
    }

    @Override // p353.AbstractC4328
    /* renamed from: ﾞʻ */
    public final void mo8743(MenuC4312 menuC4312) {
    }

    @Override // p353.InterfaceC4305
    /* renamed from: ﾞᴵ */
    public final C2249 mo5280() {
        return this.f16046.f8832;
    }
}
