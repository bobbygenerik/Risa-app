package p011;

import android.R;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.preference.DialogPreference;
import p229.AbstractComponentCallbacksC3123;
import p229.DialogInterfaceOnCancelListenerC3073;
import p363.C4411;
import p363.C4426;
import p363.DialogInterfaceC4428;

/* renamed from: ʻᐧ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractDialogInterfaceOnClickListenerC0852 extends DialogInterfaceOnCancelListenerC3073 implements DialogInterface.OnClickListener {

    /* renamed from: ˈـ, reason: contains not printable characters */
    public CharSequence f3647;

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public CharSequence f3648;

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public int f3649;

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public CharSequence f3650;

    /* renamed from: יˉ, reason: contains not printable characters */
    public DialogPreference f3651;

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public int f3652;

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public BitmapDrawable f3653;

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public CharSequence f3654;

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f3652 = i;
    }

    @Override // p229.DialogInterfaceOnCancelListenerC3073, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        mo3053(this.f3652 == -1);
    }

    @Override // p229.DialogInterfaceOnCancelListenerC3073, p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽᵔ */
    public void mo421(Bundle bundle) {
        super.mo421(bundle);
        AbstractComponentCallbacksC3123 m6802 = m6802(true);
        if (!(m6802 instanceof AbstractC0864)) {
            throw new IllegalStateException("Target fragment must implement TargetFragment interface");
        }
        AbstractC0864 abstractC0864 = (AbstractC0864) m6802;
        Bundle bundle2 = this.f11906;
        if (bundle2 == null) {
            throw new IllegalStateException("Fragment " + this + " does not have any arguments.");
        }
        String string = bundle2.getString("key");
        if (bundle != null) {
            this.f3654 = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.f3647 = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.f3648 = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.f3650 = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.f3649 = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.f3653 = new BitmapDrawable(m6801(), bitmap);
                return;
            }
            return;
        }
        DialogPreference dialogPreference = (DialogPreference) abstractC0864.m3069(string);
        this.f3651 = dialogPreference;
        this.f3654 = dialogPreference.f1332;
        this.f3647 = dialogPreference.f1331;
        this.f3648 = dialogPreference.f1329;
        this.f3650 = dialogPreference.f1328;
        this.f3649 = dialogPreference.f1330;
        Drawable drawable = dialogPreference.f1333;
        if (drawable == null || (drawable instanceof BitmapDrawable)) {
            this.f3653 = (BitmapDrawable) drawable;
            return;
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        this.f3653 = new BitmapDrawable(m6801(), createBitmap);
    }

    @Override // p229.DialogInterfaceOnCancelListenerC3073, p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾﾞ */
    public void mo424(Bundle bundle) {
        super.mo424(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.f3654);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.f3647);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.f3648);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.f3650);
        bundle.putInt("PreferenceDialogFragment.layout", this.f3649);
        BitmapDrawable bitmapDrawable = this.f3653;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public void mo3050(View view) {
        int i;
        View findViewById = view.findViewById(R.id.message);
        if (findViewById != null) {
            CharSequence charSequence = this.f3650;
            if (TextUtils.isEmpty(charSequence)) {
                i = 8;
            } else {
                if (findViewById instanceof TextView) {
                    ((TextView) findViewById).setText(charSequence);
                }
                i = 0;
            }
            if (findViewById.getVisibility() != i) {
                findViewById.setVisibility(i);
            }
        }
    }

    @Override // p229.DialogInterfaceOnCancelListenerC3073
    /* renamed from: ˎʾ */
    public final Dialog mo2399(Bundle bundle) {
        this.f3652 = -2;
        C4426 title = new C4426(m6779()).setTitle(this.f3654);
        BitmapDrawable bitmapDrawable = this.f3653;
        C4411 c4411 = title.f16470;
        c4411.f16406 = bitmapDrawable;
        c4411.f16415 = this.f3647;
        c4411.f16417 = this;
        c4411.f16404 = this.f3648;
        c4411.f16407 = this;
        m6779();
        int i = this.f3649;
        View view = null;
        if (i != 0) {
            LayoutInflater layoutInflater = this.f11922;
            if (layoutInflater == null) {
                layoutInflater = mo6621(null);
                this.f11922 = layoutInflater;
            }
            view = layoutInflater.inflate(i, (ViewGroup) null);
        }
        if (view != null) {
            mo3050(view);
            title.setView(view);
        } else {
            c4411.f16423 = this.f3650;
        }
        mo3051(title);
        DialogInterfaceC4428 create = title.create();
        if (this instanceof C0859) {
            Window window = create.getWindow();
            if (Build.VERSION.SDK_INT >= 30) {
                AbstractC0862.m3060(window);
                return create;
            }
            C0859 c0859 = (C0859) this;
            c0859.f3671 = SystemClock.currentThreadTimeMillis();
            c0859.m3059();
        }
        return create;
    }

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public void mo3051(C4426 c4426) {
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public final DialogPreference m3052() {
        if (this.f3651 == null) {
            Bundle bundle = this.f11906;
            if (bundle == null) {
                throw new IllegalStateException("Fragment " + this + " does not have any arguments.");
            }
            this.f3651 = (DialogPreference) ((AbstractC0864) m6802(true)).m3069(bundle.getString("key"));
        }
        return this.f3651;
    }

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public abstract void mo3053(boolean z);
}
