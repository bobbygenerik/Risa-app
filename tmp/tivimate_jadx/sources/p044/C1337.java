package p044;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import ar.tvplayer.tv.R;
import com.google.android.material.datepicker.ViewOnClickListenerC0663;

/* renamed from: ʽˊ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1337 extends AbstractC1343 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f5159;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ViewOnClickListenerC0663 f5160;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public EditText f5161;

    public C1337(C1324 c1324, int i) {
        super(c1324);
        this.f5159 = R.drawable.4ud;
        this.f5160 = new ViewOnClickListenerC0663(5, this);
        if (i != 0) {
            this.f5159 = i;
        }
    }

    @Override // p044.AbstractC1343
    /* renamed from: ʽ */
    public final int mo3966() {
        return R.string.2ck;
    }

    @Override // p044.AbstractC1343
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean mo4000() {
        return true;
    }

    @Override // p044.AbstractC1343
    /* renamed from: ˈ */
    public final int mo3967() {
        return this.f5159;
    }

    @Override // p044.AbstractC1343
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean mo4001() {
        EditText editText = this.f5161;
        return !(editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod));
    }

    @Override // p044.AbstractC1343
    /* renamed from: ᵔﹳ */
    public final void mo3973() {
        EditText editText = this.f5161;
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                this.f5161.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }

    @Override // p044.AbstractC1343
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo4002() {
        m4011();
    }

    @Override // p044.AbstractC1343
    /* renamed from: ﹳᐧ */
    public final void mo3975() {
        EditText editText = this.f5161;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    @Override // p044.AbstractC1343
    /* renamed from: ﾞʻ */
    public final void mo3976(EditText editText) {
        this.f5161 = editText;
        m4011();
    }

    @Override // p044.AbstractC1343
    /* renamed from: ﾞᴵ */
    public final View.OnClickListener mo3977() {
        return this.f5160;
    }
}
