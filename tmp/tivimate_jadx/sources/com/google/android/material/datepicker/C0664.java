package com.google.android.material.datepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import p021.AbstractC1031;
import p158.AbstractC2528;
import p186.AbstractC2776;
import p186.AbstractC2823;
import p186.C2801;
import p186.C2805;
import p188.C2844;
import p229.AbstractComponentCallbacksC3123;
import p229.DialogInterfaceOnCancelListenerC3073;
import p259.AbstractC3399;
import p327.ViewOnTouchListenerC4061;
import p349.AbstractC4293;
import ˈˋ.ʾˊ;
import ᴵˋ.ˊʻ;

/* renamed from: com.google.android.material.datepicker.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0664<S> extends DialogInterfaceOnCancelListenerC3073 {

    /* renamed from: ʽʾ, reason: contains not printable characters */
    public TextView f2703;

    /* renamed from: ʿʽ, reason: contains not printable characters */
    public CharSequence f2704;

    /* renamed from: ˆˑ, reason: contains not printable characters */
    public CheckableImageButton f2705;

    /* renamed from: ˆﹳ, reason: contains not printable characters */
    public CharSequence f2706;

    /* renamed from: ˈـ, reason: contains not printable characters */
    public int f2707;

    /* renamed from: ˊˊ, reason: contains not printable characters */
    public CharSequence f2708;

    /* renamed from: ˊﹳ, reason: contains not printable characters */
    public CharSequence f2709;

    /* renamed from: ˊﾞ, reason: contains not printable characters */
    public int f2710;

    /* renamed from: ˋـ, reason: contains not printable characters */
    public boolean f2711;

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public AbstractC0653 f2712;

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public C0678 f2713;

    /* renamed from: ˎـ, reason: contains not printable characters */
    public C2844 f2714;

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    public int f2715;

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public C0675 f2716;

    /* renamed from: יˉ, reason: contains not printable characters */
    public final LinkedHashSet f2717;

    /* renamed from: ـʻ, reason: contains not printable characters */
    public CharSequence f2718;

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public CharSequence f2719;

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public int f2720;

    /* renamed from: ᵢʻ, reason: contains not printable characters */
    public boolean f2721;

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public CharSequence f2722;

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public int f2723;

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public int f2724;

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final LinkedHashSet f2725;

    /* renamed from: ﾞˏ, reason: contains not printable characters */
    public int f2726;

    public C0664() {
        new LinkedHashSet();
        new LinkedHashSet();
        this.f2717 = new LinkedHashSet();
        this.f2725 = new LinkedHashSet();
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public static int m2397(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.46c);
        Calendar m2390 = AbstractC0654.m2390();
        m2390.set(5, 1);
        Calendar m2391 = AbstractC0654.m2391(m2390);
        m2391.get(2);
        m2391.get(1);
        int maximum = m2391.getMaximum(7);
        m2391.getActualMaximum(5);
        m2391.getTimeInMillis();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.1ps) * maximum;
        return ((maximum - 1) * resources.getDimensionPixelOffset(R.dimen.7br)) + dimensionPixelSize + (dimensionPixelOffset * 2);
    }

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public static boolean m2398(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(ʾˊ.ʾˋ(R.attr.2h6, context, C0678.class.getCanonicalName()).data, new int[]{i});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    @Override // p229.DialogInterfaceOnCancelListenerC3073, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f2717.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
    }

    @Override // p229.DialogInterfaceOnCancelListenerC3073, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f2725.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) this.f11908;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // p229.DialogInterfaceOnCancelListenerC3073, p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽᵔ */
    public final void mo421(Bundle bundle) {
        super.mo421(bundle);
        if (bundle == null) {
            bundle = this.f11906;
        }
        this.f2707 = bundle.getInt("OVERRIDE_THEME_RES_ID");
        if (bundle.getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f2716 = (C0675) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f2723 = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f2722 = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f2724 = bundle.getInt("INPUT_MODE_KEY");
        this.f2720 = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f2719 = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.f2726 = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f2708 = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.f2710 = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f2718 = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.f2715 = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f2709 = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence charSequence = this.f2722;
        if (charSequence == null) {
            charSequence = m6779().getResources().getText(this.f2723);
        }
        this.f2704 = charSequence;
        if (charSequence != null) {
            CharSequence[] split = TextUtils.split(String.valueOf(charSequence), "\n");
            if (split.length > 1) {
                charSequence = split[0];
            }
        } else {
            charSequence = null;
        }
        this.f2706 = charSequence;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.google.android.material.datepicker.ﹳٴ] */
    @Override // p229.DialogInterfaceOnCancelListenerC3073, p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾﾞ */
    public final void mo424(Bundle bundle) {
        super.mo424(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f2707);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        C0675 c0675 = this.f2716;
        ?? obj = new Object();
        int i = C0676.f2760;
        int i2 = C0676.f2760;
        long j = c0675.f2754.f2748;
        long j2 = c0675.f2758.f2748;
        obj.f2761 = Long.valueOf(c0675.f2755.f2748);
        int i3 = c0675.f2759;
        C0662 c0662 = c0675.f2753;
        C0678 c0678 = this.f2713;
        C0673 c0673 = c0678 == null ? null : c0678.f2774;
        if (c0673 != null) {
            obj.f2761 = Long.valueOf(c0673.f2748);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", c0662);
        C0673 m2406 = C0673.m2406(j);
        C0673 m24062 = C0673.m2406(j2);
        C0662 c06622 = (C0662) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l = obj.f2761;
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new C0675(m2406, m24062, c06622, l == null ? null : C0673.m2406(l.longValue()), i3));
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f2723);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f2722);
        bundle.putInt("INPUT_MODE_KEY", this.f2724);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.f2720);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.f2719);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f2726);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f2708);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.f2710);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.f2718);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f2715);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f2709);
    }

    @Override // p229.DialogInterfaceOnCancelListenerC3073
    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final Dialog mo2399(Bundle bundle) {
        Context m6779 = m6779();
        m6779();
        int i = this.f2707;
        if (i == 0) {
            m2401();
            throw null;
        }
        Dialog dialog = new Dialog(m6779, i);
        Context context = dialog.getContext();
        this.f2711 = m2398(context, android.R.attr.windowFullscreen);
        this.f2714 = new C2844(context, null, R.attr.2h6, R.style.f267821qc);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, AbstractC3399.f13293, R.attr.2h6, R.style.f267821qc);
        int color = obtainStyledAttributes.getColor(1, 0);
        obtainStyledAttributes.recycle();
        this.f2714.m6332(context);
        this.f2714.m6321(ColorStateList.valueOf(color));
        this.f2714.m6327(dialog.getWindow().getDecorView().getElevation());
        return dialog;
    }

    @Override // p229.DialogInterfaceOnCancelListenerC3073, p229.AbstractComponentCallbacksC3123
    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public final void mo2400() {
        this.f2712.f2688.clear();
        super.mo2400();
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ᐧﹶ */
    public final View mo435(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(this.f2711 ? R.layout.mtrl_picker_fullscreen : R.layout.158, viewGroup);
        Context context = inflate.getContext();
        if (this.f2711) {
            inflate.findViewById(R.id.2nk).setLayoutParams(new LinearLayout.LayoutParams(m2397(context), -2));
        } else {
            inflate.findViewById(R.id.4g).setLayoutParams(new LinearLayout.LayoutParams(m2397(context), -1));
        }
        ((TextView) inflate.findViewById(R.id.3c0)).setAccessibilityLiveRegion(1);
        this.f2705 = (CheckableImageButton) inflate.findViewById(R.id.nk);
        this.f2703 = (TextView) inflate.findViewById(R.id.6nm);
        this.f2705.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.f2705;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, ˊʻ.ﹳᐧ(context, R.drawable.i3));
        stateListDrawable.addState(new int[0], ˊʻ.ﹳᐧ(context, R.drawable.1nq));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.f2705.setChecked(this.f2724 != 0);
        AbstractC2823.m6273(this.f2705, null);
        CheckableImageButton checkableImageButton2 = this.f2705;
        this.f2705.setContentDescription(this.f2724 == 1 ? checkableImageButton2.getContext().getString(R.string.4ki) : checkableImageButton2.getContext().getString(R.string.2ob));
        this.f2705.setOnClickListener(new ViewOnClickListenerC0663(0, this));
        m2401();
        throw null;
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public final void m2401() {
        if (this.f11906.getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [ᵎˉ.ⁱˊ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.material.datepicker.ʻٴ] */
    /* JADX WARN: Type inference failed for: r7v7, types: [ˋᵔ.ˉˆ, java.lang.Object, com.google.android.material.datepicker.ᵔʾ] */
    @Override // p229.DialogInterfaceOnCancelListenerC3073, p229.AbstractComponentCallbacksC3123
    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final void mo2402() {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123;
        super.mo2402();
        Dialog dialog = this.f11678;
        if (dialog == null) {
            throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
        }
        Window window = dialog.getWindow();
        if (this.f2711) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f2714);
            if (!this.f2721) {
                View findViewById = m6810().findViewById(R.id.2s9);
                ColorStateList m3361 = AbstractC1031.m3361(findViewById.getBackground());
                Integer valueOf = m3361 != null ? Integer.valueOf(m3361.getDefaultColor()) : null;
                boolean z = false;
                boolean z2 = valueOf == null || valueOf.intValue() == 0;
                int i = ʽٴ.ˈ.ˆʾ(window.getContext(), android.R.attr.colorBackground, -16777216);
                if (z2) {
                    valueOf = Integer.valueOf(i);
                }
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 35) {
                    AbstractC2528.m5648(window, false);
                } else if (i2 >= 30) {
                    AbstractC2528.m5647(window, false);
                } else {
                    View decorView = window.getDecorView();
                    decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 1792);
                }
                window.getContext();
                int m8697 = i2 < 27 ? AbstractC4293.m8697(ʽٴ.ˈ.ˆʾ(window.getContext(), android.R.attr.navigationBarColor, -16777216), 128) : 0;
                window.setStatusBarColor(0);
                window.setNavigationBarColor(m8697);
                boolean z3 = ʽٴ.ˈ.ﹳᐧ(0) || ʽٴ.ˈ.ﹳᐧ(valueOf.intValue());
                ﹳˋ.ʼˎ r11 = new ﹳˋ.ʼˎ(window.getDecorView());
                int i3 = Build.VERSION.SDK_INT;
                (i3 >= 35 ? new C2801(window, r11) : i3 >= 30 ? new C2801(window, r11) : i3 >= 26 ? new C2805(window, r11) : new C2805(window, r11)).ٴʼ(z3);
                boolean z4 = ʽٴ.ˈ.ﹳᐧ(i);
                if (ʽٴ.ˈ.ﹳᐧ(m8697) || (m8697 == 0 && z4)) {
                    z = true;
                }
                ﹳˋ.ʼˎ r6 = new ﹳˋ.ʼˎ(window.getDecorView());
                int i4 = Build.VERSION.SDK_INT;
                (i4 >= 35 ? new C2801(window, r6) : i4 >= 30 ? new C2801(window, r6) : i4 >= 26 ? new C2805(window, r6) : new C2805(window, r6)).ᵎⁱ(z);
                int paddingTop = findViewById.getPaddingTop();
                int paddingLeft = findViewById.getPaddingLeft();
                int paddingRight = findViewById.getPaddingRight();
                int i5 = findViewById.getLayoutParams().height;
                ?? obj = new Object();
                obj.f2739 = i5;
                obj.f2742 = findViewById;
                obj.f2741 = paddingLeft;
                obj.f2738 = paddingTop;
                obj.f2740 = paddingRight;
                WeakHashMap weakHashMap = AbstractC2823.f10603;
                AbstractC2776.m6173(findViewById, obj);
                this.f2721 = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = m6801().getDimensionPixelOffset(R.dimen.1pq);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f2714, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            View decorView2 = window.getDecorView();
            Dialog dialog2 = this.f11678;
            if (dialog2 == null) {
                throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
            }
            decorView2.setOnTouchListener(new ViewOnTouchListenerC4061(dialog2, rect));
        }
        m6779();
        int i6 = this.f2707;
        if (i6 == 0) {
            m2401();
            throw null;
        }
        AbstractComponentCallbacksC3123 m6697 = m6788().m6697(this.f2724 == 1 ? "TEXT_INPUT_FRAGMENT_TAG" : "CALENDAR_FRAGMENT_TAG");
        ?? r1 = m6697 instanceof AbstractC0653 ? (AbstractC0653) m6697 : 0;
        if (r1 == 0) {
            if (this.f2724 == 1) {
                m2401();
                C0675 c0675 = this.f2716;
                AbstractComponentCallbacksC3123 c0656 = new C0656();
                Bundle bundle = new Bundle();
                bundle.putInt("THEME_RES_ID_KEY", i6);
                bundle.putParcelable("DATE_SELECTOR_KEY", null);
                bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", c0675);
                c0656.m6807(bundle);
                abstractComponentCallbacksC3123 = c0656;
            } else {
                m2401();
                C0675 c06752 = this.f2716;
                C0678 c0678 = new C0678();
                Bundle bundle2 = new Bundle();
                bundle2.putInt("THEME_RES_ID_KEY", i6);
                bundle2.putParcelable("GRID_SELECTOR_KEY", null);
                bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", c06752);
                bundle2.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
                bundle2.putParcelable("CURRENT_MONTH_KEY", c06752.f2755);
                c0678.m6807(bundle2);
                this.f2713 = c0678;
                abstractComponentCallbacksC3123 = c0678;
            }
            r1 = abstractComponentCallbacksC3123;
        }
        this.f2712 = r1;
        r1.mo2388(new Object());
        this.f2703.setText((this.f2724 == 1 && m6801().getConfiguration().orientation == 2) ? this.f2706 : this.f2704);
        m2401();
        throw null;
    }
}
