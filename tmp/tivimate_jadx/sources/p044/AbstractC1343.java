package p044;

import android.content.Context;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import p158.C2535;

/* renamed from: ʽˊ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1343 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Context f5180;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final CheckableImageButton f5181;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1324 f5182;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final TextInputLayout f5183;

    public AbstractC1343(C1324 c1324) {
        this.f5183 = c1324.f5078;
        this.f5182 = c1324;
        this.f5180 = c1324.getContext();
        this.f5181 = c1324.f5090;
    }

    /* renamed from: ʼˎ */
    public boolean mo4003(int i) {
        return true;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m4011() {
        this.f5182.m3965(false);
    }

    /* renamed from: ʽ */
    public int mo3966() {
        return 0;
    }

    /* renamed from: ˆʾ */
    public boolean mo4000() {
        return this instanceof C1338;
    }

    /* renamed from: ˈ */
    public int mo3967() {
        return 0;
    }

    /* renamed from: ˉʿ */
    public void mo4004(C2535 c2535) {
    }

    /* renamed from: ˉˆ */
    public void mo3968(boolean z) {
    }

    /* renamed from: ˑﹳ */
    public View.OnFocusChangeListener mo3970() {
        return null;
    }

    /* renamed from: ٴﹶ */
    public boolean mo4001() {
        return false;
    }

    /* renamed from: ᵎﹶ */
    public View.OnFocusChangeListener mo3972() {
        return null;
    }

    /* renamed from: ᵔʾ */
    public void mo4007(AccessibilityEvent accessibilityEvent) {
    }

    /* renamed from: ᵔᵢ */
    public AccessibilityManager.TouchExplorationStateChangeListener mo4008() {
        return null;
    }

    /* renamed from: ᵔﹳ */
    public void mo3973() {
    }

    /* renamed from: ⁱˊ */
    public void mo4002() {
    }

    /* renamed from: ﹳٴ */
    public void mo3974() {
    }

    /* renamed from: ﹳᐧ */
    public void mo3975() {
    }

    /* renamed from: ﾞʻ */
    public void mo3976(EditText editText) {
    }

    /* renamed from: ﾞᴵ */
    public View.OnClickListener mo3977() {
        return null;
    }
}
