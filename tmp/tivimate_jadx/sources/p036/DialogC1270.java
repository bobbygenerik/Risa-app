package p036;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.window.OnBackInvokedDispatcher;
import androidx.lifecycle.C0184;
import androidx.lifecycle.EnumC0174;
import androidx.lifecycle.InterfaceC0162;
import androidx.lifecycle.RunnableC0197;
import ar.tvplayer.tv.R;
import p077.C1666;
import p229.C3125;
import p262.C3433;
import p333.InterfaceC4203;
import יˋ.ˈ;

/* renamed from: ʽ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class DialogC1270 extends Dialog implements InterfaceC0162, InterfaceC4203 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1254 f4926;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C0184 f4927;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3433 f4928;

    public DialogC1270(Context context, int i) {
        super(context, i);
        this.f4928 = new C3433(new C1666(this, new ˈ(29, this)));
        this.f4926 = new C1254(new RunnableC0197(11, this));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m3860(DialogC1270 dialogC1270) {
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3861();
        super.addContentView(view, layoutParams);
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.f4926.m3842();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            C1254 c1254 = this.f4926;
            c1254.f4868 = onBackInvokedDispatcher;
            c1254.m3841(c1254.f4869);
        }
        this.f4928.m7334(bundle);
        C0184 c0184 = this.f4927;
        if (c0184 == null) {
            c0184 = new C0184(this);
            this.f4927 = c0184;
        }
        c0184.m710(EnumC0174.ON_CREATE);
    }

    @Override // android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        this.f4928.m7332(onSaveInstanceState);
        return onSaveInstanceState;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        C0184 c0184 = this.f4927;
        if (c0184 == null) {
            c0184 = new C0184(this);
            this.f4927 = c0184;
        }
        c0184.m710(EnumC0174.ON_RESUME);
    }

    @Override // android.app.Dialog
    public void onStop() {
        C0184 c0184 = this.f4927;
        if (c0184 == null) {
            c0184 = new C0184(this);
            this.f4927 = c0184;
        }
        c0184.m710(EnumC0174.ON_DESTROY);
        this.f4927 = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        m3861();
        super.setContentView(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        m3861();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3861();
        super.setContentView(view, layoutParams);
    }

    @Override // androidx.lifecycle.InterfaceC0162
    /* renamed from: ˋᵔ */
    public final C0184 mo691() {
        C0184 c0184 = this.f4927;
        if (c0184 != null) {
            return c0184;
        }
        C0184 c01842 = new C0184(this);
        this.f4927 = c01842;
        return c01842;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3861() {
        getWindow().getDecorView().setTag(R.id.79b, this);
        getWindow().getDecorView().setTag(R.id.1ra, this);
        getWindow().getDecorView().setTag(R.id.59v, this);
    }

    @Override // p333.InterfaceC4203
    /* renamed from: ﾞᴵ */
    public final C3125 mo3852() {
        return (C3125) this.f4928.f13456;
    }
}
