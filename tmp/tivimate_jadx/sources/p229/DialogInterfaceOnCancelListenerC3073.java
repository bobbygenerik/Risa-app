package p229;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.leanback.widget.RunnableC0142;
import ar.tvplayer.tv.R;
import p036.DialogC1270;
import ʼ.ᵎﹶ;

/* renamed from: ˑʼ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class DialogInterfaceOnCancelListenerC3073 extends AbstractComponentCallbacksC3123 implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public boolean f11669;

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public boolean f11671;

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public boolean f11673;

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public Handler f11675;

    /* renamed from: ⁱᴵ, reason: contains not printable characters */
    public Dialog f11678;

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public boolean f11681;

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public final RunnableC0142 f11667 = new RunnableC0142(23, this);

    /* renamed from: ـˊ, reason: contains not printable characters */
    public final DialogInterfaceOnCancelListenerC3138 f11672 = new DialogInterfaceOnCancelListenerC3138(this);

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public final DialogInterfaceOnDismissListenerC3108 f11676 = new DialogInterfaceOnDismissListenerC3108(this);

    /* renamed from: ʿـ, reason: contains not printable characters */
    public int f11670 = 0;

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public int f11679 = 0;

    /* renamed from: ⁱי, reason: contains not printable characters */
    public boolean f11677 = true;

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public boolean f11666 = true;

    /* renamed from: ﹶ, reason: contains not printable characters */
    public int f11680 = -1;

    /* renamed from: ٴᴵ, reason: contains not printable characters */
    public final C3102 f11674 = new C3102(this);

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public boolean f11668 = false;

    public void onCancel(DialogInterface dialogInterface) {
    }

    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f11681) {
            return;
        }
        if (C3085.m6654(3)) {
            String str = "onDismiss called for DialogFragment " + this;
        }
        m6622(true, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0048 A[Catch: all -> 0x0050, TryCatch #0 {all -> 0x0050, blocks: (B:10:0x001a, B:12:0x0026, B:18:0x003e, B:20:0x0048, B:21:0x0052, B:23:0x0030, B:25:0x0036, B:26:0x003b, B:27:0x006a), top: B:9:0x001a }] */
    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʼـ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.LayoutInflater mo6621(android.os.Bundle r8) {
        /*
            r7 = this;
            android.view.LayoutInflater r0 = super.mo6621(r8)
            boolean r1 = r7.f11666
            java.lang.String r2 = "FragmentManager"
            r3 = 2
            if (r1 == 0) goto L9a
            boolean r4 = r7.f11673
            if (r4 == 0) goto L11
            goto L9a
        L11:
            if (r1 != 0) goto L14
            goto L73
        L14:
            boolean r1 = r7.f11668
            if (r1 != 0) goto L73
            r1 = 0
            r4 = 1
            r7.f11673 = r4     // Catch: java.lang.Throwable -> L50
            android.app.Dialog r8 = r7.mo2399(r8)     // Catch: java.lang.Throwable -> L50
            r7.f11678 = r8     // Catch: java.lang.Throwable -> L50
            boolean r5 = r7.f11666     // Catch: java.lang.Throwable -> L50
            if (r5 == 0) goto L6a
            int r5 = r7.f11670     // Catch: java.lang.Throwable -> L50
            if (r5 == r4) goto L3b
            if (r5 == r3) goto L3b
            r6 = 3
            if (r5 == r6) goto L30
            goto L3e
        L30:
            android.view.Window r5 = r8.getWindow()     // Catch: java.lang.Throwable -> L50
            if (r5 == 0) goto L3b
            r6 = 24
            r5.addFlags(r6)     // Catch: java.lang.Throwable -> L50
        L3b:
            r8.requestWindowFeature(r4)     // Catch: java.lang.Throwable -> L50
        L3e:
            android.content.Context r8 = r7.mo4203()     // Catch: java.lang.Throwable -> L50
            boolean r5 = p137.AbstractC2305.m5366(r8)     // Catch: java.lang.Throwable -> L50
            if (r5 == 0) goto L52
            android.app.Dialog r5 = r7.f11678     // Catch: java.lang.Throwable -> L50
            android.app.Activity r8 = (android.app.Activity) r8     // Catch: java.lang.Throwable -> L50
            r5.setOwnerActivity(r8)     // Catch: java.lang.Throwable -> L50
            goto L52
        L50:
            r8 = move-exception
            goto L70
        L52:
            android.app.Dialog r8 = r7.f11678     // Catch: java.lang.Throwable -> L50
            boolean r5 = r7.f11677     // Catch: java.lang.Throwable -> L50
            r8.setCancelable(r5)     // Catch: java.lang.Throwable -> L50
            android.app.Dialog r8 = r7.f11678     // Catch: java.lang.Throwable -> L50
            ˑʼ.ﹳᐧ r5 = r7.f11672     // Catch: java.lang.Throwable -> L50
            r8.setOnCancelListener(r5)     // Catch: java.lang.Throwable -> L50
            android.app.Dialog r8 = r7.f11678     // Catch: java.lang.Throwable -> L50
            ˑʼ.יـ r5 = r7.f11676     // Catch: java.lang.Throwable -> L50
            r8.setOnDismissListener(r5)     // Catch: java.lang.Throwable -> L50
            r7.f11668 = r4     // Catch: java.lang.Throwable -> L50
            goto L6d
        L6a:
            r8 = 0
            r7.f11678 = r8     // Catch: java.lang.Throwable -> L50
        L6d:
            r7.f11673 = r1
            goto L73
        L70:
            r7.f11673 = r1
            throw r8
        L73:
            boolean r8 = p229.C3085.m6654(r3)
            if (r8 == 0) goto L8d
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r1 = "get layout inflater for DialogFragment "
            r8.<init>(r1)
            r8.append(r7)
            java.lang.String r1 = " from dialog context"
            r8.append(r1)
            java.lang.String r8 = r8.toString()
        L8d:
            android.app.Dialog r8 = r7.f11678
            if (r8 == 0) goto Ld1
            android.content.Context r8 = r8.getContext()
            android.view.LayoutInflater r8 = r0.cloneInContext(r8)
            return r8
        L9a:
            boolean r8 = p229.C3085.m6654(r3)
            if (r8 == 0) goto Ld1
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r1 = "getting layout inflater for DialogFragment "
            r8.<init>(r1)
            r8.append(r7)
            java.lang.String r8 = r8.toString()
            boolean r1 = r7.f11666
            if (r1 != 0) goto Lc2
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "mShowsDialog = false: "
            r1.<init>(r3)
            r1.append(r8)
            java.lang.String r8 = r1.toString()
            return r0
        Lc2:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "mCreatingDialog = true: "
            r1.<init>(r3)
            r1.append(r8)
            java.lang.String r8 = r1.toString()
        Ld1:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p229.DialogInterfaceOnCancelListenerC3073.mo6621(android.os.Bundle):android.view.LayoutInflater");
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽᵔ */
    public void mo421(Bundle bundle) {
        super.mo421(bundle);
        this.f11675 = new Handler();
        this.f11666 = this.f11897 == 0;
        if (bundle != null) {
            this.f11670 = bundle.getInt("android:style", 0);
            this.f11679 = bundle.getInt("android:theme", 0);
            this.f11677 = bundle.getBoolean("android:cancelable", true);
            this.f11666 = bundle.getBoolean("android:showsDialog", this.f11666);
            this.f11680 = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾˊ */
    public final void mo423() {
        this.f11926 = true;
        Dialog dialog = this.f11678;
        if (dialog != null) {
            this.f11681 = true;
            dialog.setOnDismissListener(null);
            this.f11678.dismiss();
            if (!this.f11669) {
                onDismiss(this.f11678);
            }
            this.f11678 = null;
            this.f11668 = false;
        }
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾﾞ */
    public void mo424(Bundle bundle) {
        Dialog dialog = this.f11678;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            onSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i = this.f11670;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.f11679;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.f11677;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.f11666;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.f11680;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final void m6622(boolean z, boolean z2) {
        if (this.f11669) {
            return;
        }
        this.f11669 = true;
        this.f11671 = false;
        Dialog dialog = this.f11678;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f11678.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.f11675.getLooper()) {
                    onDismiss(this.f11678);
                } else {
                    this.f11675.post(this.f11667);
                }
            }
        }
        this.f11681 = true;
        if (this.f11680 >= 0) {
            m6805().m6696(this.f11680, 1, z);
            this.f11680 = -1;
            return;
        }
        C3137 c3137 = new C3137(m6805());
        c3137.f11996 = true;
        c3137.m6885(this);
        if (z) {
            c3137.m6886(true, true);
        } else {
            c3137.m6890();
        }
    }

    /* renamed from: ˎʾ */
    public Dialog mo2399(Bundle bundle) {
        if (C3085.m6654(3)) {
            String str = "onCreateDialog called for DialogFragment " + this;
        }
        return new DialogC1270(m6779(), this.f11679);
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public void m6623() {
        m6632();
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ˑ, reason: contains not printable characters */
    public final void mo6624() {
        this.f11926 = true;
        if (!this.f11671 && !this.f11669) {
            this.f11669 = true;
        }
        this.f11894.m683(this.f11674);
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ˑʼ, reason: contains not printable characters */
    public final void mo6625() {
        this.f11926 = true;
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public void m6626() {
        m6632();
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ـˊ, reason: contains not printable characters */
    public final void mo6627(Bundle bundle) {
        Bundle bundle2;
        this.f11926 = true;
        if (this.f11678 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f11678.onRestoreInstanceState(bundle2);
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ـᵎ, reason: contains not printable characters */
    public final void mo6628(Context context) {
        super.mo6628(context);
        this.f11894.m690(this.f11674);
        if (this.f11671) {
            return;
        }
        this.f11669 = false;
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ᐧˎ */
    public void mo2400() {
        this.f11926 = true;
        Dialog dialog = this.f11678;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public final void mo6629(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.mo6629(layoutInflater, viewGroup, bundle);
        if (this.f11908 != null || this.f11678 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f11678.onRestoreInstanceState(bundle2);
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ⁱˉ */
    public void mo2402() {
        this.f11926 = true;
        Dialog dialog = this.f11678;
        if (dialog != null) {
            this.f11681 = false;
            dialog.show();
            View decorView = this.f11678.getWindow().getDecorView();
            decorView.setTag(R.id.79b, this);
            decorView.setTag(R.id.39d, this);
            decorView.setTag(R.id.59v, this);
        }
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final ᵎﹶ mo6630() {
        return new C3082(this, new C3134(this));
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public void m6631() {
        m6632();
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final void m6632() {
        m6622(true, false);
    }
}
