package p044;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.leanback.widget.C0081;
import androidx.leanback.widget.C0144;
import androidx.lifecycle.RunnableC0197;
import ar.tvplayer.tv.R;
import com.google.android.material.datepicker.ViewOnClickListenerC0663;
import com.google.android.material.textfield.TextInputLayout;
import p121.AbstractC2026;
import p158.C2535;
import p236.AbstractC3200;
import ʼⁱ.ٴﹳ;
import ﹳˋ.ʽʽ;

/* renamed from: ʽˊ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1338 extends AbstractC1343 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ViewOnClickListenerC0663 f5162;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public AccessibilityManager f5163;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final ٴﹳ f5164;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public boolean f5165;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public long f5166;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f5167;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final AccessibilityManagerTouchExplorationStateChangeListenerC1330 f5168;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final TimeInterpolator f5169;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean f5170;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public AutoCompleteTextView f5171;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public ValueAnimator f5172;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public ValueAnimator f5173;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean f5174;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f5175;

    /* JADX WARN: Type inference failed for: r0v2, types: [ʽˊ.ˆʾ] */
    public C1338(C1324 c1324) {
        super(c1324);
        this.f5162 = new ViewOnClickListenerC0663(4, this);
        this.f5164 = new ٴﹳ(3, this);
        this.f5168 = new AccessibilityManager.TouchExplorationStateChangeListener() { // from class: ʽˊ.ˆʾ
            @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
            public final void onTouchExplorationStateChanged(boolean z) {
                C1338 c1338 = C1338.this;
                AutoCompleteTextView autoCompleteTextView = c1338.f5171;
                if (autoCompleteTextView == null || AbstractC2026.m5049(autoCompleteTextView)) {
                    return;
                }
                c1338.f5181.setImportantForAccessibility(z ? 2 : 1);
            }
        };
        this.f5166 = Long.MAX_VALUE;
        this.f5175 = ʽʽ.ʻٴ(c1324.getContext(), R.attr.770, 67);
        this.f5167 = ʽʽ.ʻٴ(c1324.getContext(), R.attr.770, 50);
        this.f5169 = ʽʽ.ـˆ(c1324.getContext(), R.attr.1da, AbstractC3200.f12246);
    }

    @Override // p044.AbstractC1343
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean mo4003(int i) {
        return i != 0;
    }

    @Override // p044.AbstractC1343
    /* renamed from: ʽ */
    public final int mo3966() {
        return R.string.77e;
    }

    @Override // p044.AbstractC1343
    /* renamed from: ˈ */
    public final int mo3967() {
        return R.drawable.6ts;
    }

    @Override // p044.AbstractC1343
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void mo4004(C2535 c2535) {
        if (!AbstractC2026.m5049(this.f5171)) {
            c2535.m5665(Spinner.class.getName());
        }
        if (c2535.m5673()) {
            c2535.m5672(null);
        }
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final void m4005() {
        if (this.f5171 == null) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis() - this.f5166;
        if (uptimeMillis < 0 || uptimeMillis > 300) {
            this.f5165 = false;
        }
        if (this.f5165) {
            this.f5165 = false;
            return;
        }
        m4006(!this.f5170);
        if (!this.f5170) {
            this.f5171.dismissDropDown();
        } else {
            this.f5171.requestFocus();
            this.f5171.showDropDown();
        }
    }

    @Override // p044.AbstractC1343
    /* renamed from: ˑﹳ */
    public final View.OnFocusChangeListener mo3970() {
        return this.f5164;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m4006(boolean z) {
        if (this.f5170 != z) {
            this.f5170 = z;
            this.f5173.cancel();
            this.f5172.start();
        }
    }

    @Override // p044.AbstractC1343
    /* renamed from: ٴﹶ */
    public final boolean mo4001() {
        return this.f5170;
    }

    @Override // p044.AbstractC1343
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void mo4007(AccessibilityEvent accessibilityEvent) {
        if (!this.f5163.isEnabled() || AbstractC2026.m5049(this.f5171)) {
            return;
        }
        boolean z = (accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.f5170 && !this.f5171.isPopupShowing();
        if (accessibilityEvent.getEventType() == 1 || z) {
            m4005();
            this.f5165 = true;
            this.f5166 = SystemClock.uptimeMillis();
        }
    }

    @Override // p044.AbstractC1343
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final AccessibilityManager.TouchExplorationStateChangeListener mo4008() {
        return this.f5168;
    }

    @Override // p044.AbstractC1343
    /* renamed from: ᵔﹳ */
    public final void mo3973() {
        int i = 2;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.f5169;
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.setDuration(this.f5175);
        ofFloat.addUpdateListener(new C0081(i, this));
        this.f5173 = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(this.f5167);
        ofFloat2.addUpdateListener(new C0081(i, this));
        this.f5172 = ofFloat2;
        ofFloat2.addListener(new C0144(2, this));
        this.f5163 = (AccessibilityManager) this.f5180.getSystemService("accessibility");
    }

    @Override // p044.AbstractC1343
    /* renamed from: ﹳٴ */
    public final void mo3974() {
        if (this.f5163.isTouchExplorationEnabled() && AbstractC2026.m5049(this.f5171) && !this.f5181.hasFocus()) {
            this.f5171.dismissDropDown();
        }
        this.f5171.post(new RunnableC0197(13, this));
    }

    @Override // p044.AbstractC1343
    /* renamed from: ﹳᐧ */
    public final void mo3975() {
        AutoCompleteTextView autoCompleteTextView = this.f5171;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.f5171.setOnDismissListener(null);
        }
    }

    @Override // p044.AbstractC1343
    /* renamed from: ﾞʻ */
    public final void mo3976(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
        }
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
        this.f5171 = autoCompleteTextView;
        autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: ʽˊ.ᵔᵢ
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    C1338 c1338 = C1338.this;
                    long j = uptimeMillis - c1338.f5166;
                    if (j < 0 || j > 300) {
                        c1338.f5165 = false;
                    }
                    c1338.m4005();
                    c1338.f5165 = true;
                    c1338.f5166 = SystemClock.uptimeMillis();
                }
                return false;
            }
        });
        this.f5171.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: ʽˊ.ʼˎ
            @Override // android.widget.AutoCompleteTextView.OnDismissListener
            public final void onDismiss() {
                C1338 c1338 = C1338.this;
                c1338.f5165 = true;
                c1338.f5166 = SystemClock.uptimeMillis();
                c1338.m4006(false);
            }
        });
        this.f5171.setThreshold(0);
        TextInputLayout textInputLayout = this.f5183;
        textInputLayout.setErrorIconDrawable((Drawable) null);
        if (editText.getInputType() == 0 && this.f5163.isTouchExplorationEnabled()) {
            this.f5181.setImportantForAccessibility(2);
        }
        textInputLayout.setEndIconVisible(true);
    }

    @Override // p044.AbstractC1343
    /* renamed from: ﾞᴵ */
    public final View.OnClickListener mo3977() {
        return this.f5162;
    }
}
