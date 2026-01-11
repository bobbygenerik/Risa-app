package p353;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import ar.tvplayer.tv.R;
import p137.C2335;

/* renamed from: ᵔʾ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4318 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public InterfaceC4316 f16006;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f16007;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public AbstractC4328 f16008;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f16009;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f16010;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public PopupWindow.OnDismissListener f16011;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f16013;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final MenuC4312 f16014;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f16015;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public View f16017;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f16012 = 8388611;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C2335 f16016 = new C2335(1, this);

    public C4318(int i, int i2, Context context, View view, MenuC4312 menuC4312, boolean z) {
        this.f16015 = context;
        this.f16014 = menuC4312;
        this.f16017 = view;
        this.f16007 = z;
        this.f16009 = i;
        this.f16010 = i2;
    }

    /* renamed from: ʽ */
    public void mo5436() {
        this.f16008 = null;
        PopupWindow.OnDismissListener onDismissListener = this.f16011;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m8748(int i, int i2, boolean z, boolean z2) {
        AbstractC4328 m8750 = m8750();
        m8750.mo8739(z2);
        if (z) {
            if ((Gravity.getAbsoluteGravity(this.f16012, this.f16017.getLayoutDirection()) & 7) == 5) {
                i -= this.f16017.getWidth();
            }
            m8750.mo8741(i);
            m8750.mo8738(i2);
            int i3 = (int) ((this.f16015.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            m8750.f16066 = new Rect(i - i3, i2 - i3, i + i3, i2 + i3);
        }
        m8750.mo5273();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m8749() {
        AbstractC4328 abstractC4328 = this.f16008;
        return abstractC4328 != null && abstractC4328.mo5277();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC4328 m8750() {
        AbstractC4328 viewOnKeyListenerC4325;
        if (this.f16008 == null) {
            Context context = this.f16015;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.34)) {
                viewOnKeyListenerC4325 = new ViewOnKeyListenerC4313(this.f16015, this.f16017, this.f16009, this.f16010, this.f16007);
            } else {
                View view = this.f16017;
                viewOnKeyListenerC4325 = new ViewOnKeyListenerC4325(this.f16009, this.f16010, this.f16015, view, this.f16014, this.f16007);
            }
            viewOnKeyListenerC4325.mo8743(this.f16014);
            viewOnKeyListenerC4325.mo8742(this.f16016);
            viewOnKeyListenerC4325.mo8740(this.f16017);
            viewOnKeyListenerC4325.mo5390(this.f16006);
            viewOnKeyListenerC4325.mo8737(this.f16013);
            viewOnKeyListenerC4325.mo8735(this.f16012);
            this.f16008 = viewOnKeyListenerC4325;
        }
        return this.f16008;
    }
}
