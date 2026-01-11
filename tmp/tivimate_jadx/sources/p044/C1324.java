package p044;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import ar.tvplayer.tv.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.parse.ٴʼ;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p004.C0815;
import p129.AbstractC2185;
import p129.InterfaceC2189;
import p137.AbstractC2305;
import p137.C2312;
import p307.AbstractC3740;
import ˉᵎ.ⁱˊ;
import ˑˊ.ﹳٴ;
import ᴵˋ.ˊʻ;

/* renamed from: ʽˊ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1324 extends LinearLayout {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public EditText f5076;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final CheckableImageButton f5077;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final TextInputLayout f5078;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f5079;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public View.OnLongClickListener f5080;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public ColorStateList f5081;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final C1332 f5082;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C0815 f5083;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public View.OnLongClickListener f5084;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f5085;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final C2312 f5086;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public CharSequence f5087;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final AccessibilityManager f5088;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final LinkedHashSet f5089;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final CheckableImageButton f5090;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final FrameLayout f5091;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public PorterDuff.Mode f5092;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public ColorStateList f5093;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f5094;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public PorterDuff.Mode f5095;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public ImageView.ScaleType f5096;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public AccessibilityManager.TouchExplorationStateChangeListener f5097;

    /* JADX WARN: Type inference failed for: r11v1, types: [ʻˆ.ﾞᴵ, java.lang.Object] */
    public C1324(TextInputLayout textInputLayout, ٴʼ r19) {
        super(textInputLayout.getContext());
        this.f5094 = 0;
        this.f5089 = new LinkedHashSet();
        this.f5082 = new C1332(this);
        C1341 c1341 = new C1341(this);
        this.f5088 = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f5078 = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f5091 = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater from = LayoutInflater.from(getContext());
        CheckableImageButton m3963 = m3963(this, from, R.id.1u6);
        this.f5077 = m3963;
        CheckableImageButton m39632 = m3963(frameLayout, from, R.id.22f);
        this.f5090 = m39632;
        ?? obj = new Object();
        obj.f3476 = new SparseArray();
        obj.f3478 = this;
        TypedArray typedArray = (TypedArray) r19.ᴵˊ;
        obj.f3477 = typedArray.getResourceId(28, 0);
        obj.f3479 = typedArray.getResourceId(53, 0);
        this.f5083 = obj;
        C2312 c2312 = new C2312(getContext(), null);
        this.f5086 = c2312;
        TypedArray typedArray2 = (TypedArray) r19.ᴵˊ;
        if (typedArray2.hasValue(38)) {
            this.f5081 = ⁱˊ.יـ(getContext(), r19, 38);
        }
        if (typedArray2.hasValue(39)) {
            this.f5092 = AbstractC2185.m5189(typedArray2.getInt(39, -1), null);
        }
        if (typedArray2.hasValue(37)) {
            m3953(r19.ˑٴ(37));
        }
        m3963.setContentDescription(getResources().getText(R.string.on));
        m3963.setImportantForAccessibility(2);
        m3963.setClickable(false);
        m3963.setPressable(false);
        m3963.setCheckable(false);
        m3963.setFocusable(false);
        if (!typedArray2.hasValue(54)) {
            if (typedArray2.hasValue(32)) {
                this.f5093 = ⁱˊ.יـ(getContext(), r19, 32);
            }
            if (typedArray2.hasValue(33)) {
                this.f5095 = AbstractC2185.m5189(typedArray2.getInt(33, -1), null);
            }
        }
        if (typedArray2.hasValue(30)) {
            m3961(typedArray2.getInt(30, 0));
            if (typedArray2.hasValue(27)) {
                m3959(typedArray2.getText(27));
            }
            m39632.setCheckable(typedArray2.getBoolean(26, true));
        } else if (typedArray2.hasValue(54)) {
            if (typedArray2.hasValue(55)) {
                this.f5093 = ⁱˊ.יـ(getContext(), r19, 55);
            }
            if (typedArray2.hasValue(56)) {
                this.f5095 = AbstractC2185.m5189(typedArray2.getInt(56, -1), null);
            }
            m3961(typedArray2.getBoolean(54, false) ? 1 : 0);
            m3959(typedArray2.getText(52));
        }
        int dimensionPixelSize = typedArray2.getDimensionPixelSize(29, getResources().getDimensionPixelSize(R.dimen.39s));
        if (dimensionPixelSize < 0) {
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (dimensionPixelSize != this.f5079) {
            this.f5079 = dimensionPixelSize;
            m39632.setMinimumWidth(dimensionPixelSize);
            m39632.setMinimumHeight(dimensionPixelSize);
            m3963.setMinimumWidth(dimensionPixelSize);
            m3963.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray2.hasValue(31)) {
            ImageView.ScaleType scaleType = ﹳٴ.ⁱˊ(typedArray2.getInt(31, -1));
            this.f5096 = scaleType;
            m39632.setScaleType(scaleType);
            m3963.setScaleType(scaleType);
        }
        c2312.setVisibility(8);
        c2312.setId(R.id.43h);
        c2312.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        c2312.setAccessibilityLiveRegion(1);
        c2312.setTextAppearance(typedArray2.getResourceId(73, 0));
        if (typedArray2.hasValue(74)) {
            c2312.setTextColor(r19.ˈʿ(74));
        }
        CharSequence text = typedArray2.getText(72);
        this.f5087 = TextUtils.isEmpty(text) ? null : text;
        c2312.setText(text);
        m3956();
        frameLayout.addView(m39632);
        addView(c2312);
        addView(frameLayout);
        addView(m3963);
        final int i = 0;
        m3963.setOnFocusableChangedListener(new InterfaceC2189(this) { // from class: ʽˊ.ﾞʻ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ C1324 f5196;

            {
                this.f5196 = this;
            }

            @Override // p129.InterfaceC2189
            /* renamed from: ʼˎ, reason: contains not printable characters */
            public final void mo4012() {
                switch (i) {
                    case 0:
                        C1324 c1324 = this.f5196;
                        CheckableImageButton checkableImageButton = c1324.f5077;
                        ﹳٴ.ﾞʻ(checkableImageButton, c1324.f5084, checkableImageButton.getContentDescription());
                        return;
                    default:
                        C1324 c13242 = this.f5196;
                        CheckableImageButton checkableImageButton2 = c13242.f5090;
                        ﹳٴ.ﾞʻ(checkableImageButton2, c13242.f5080, checkableImageButton2.getContentDescription());
                        return;
                }
            }
        });
        final int i2 = 1;
        m39632.setOnFocusableChangedListener(new InterfaceC2189(this) { // from class: ʽˊ.ﾞʻ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ C1324 f5196;

            {
                this.f5196 = this;
            }

            @Override // p129.InterfaceC2189
            /* renamed from: ʼˎ, reason: contains not printable characters */
            public final void mo4012() {
                switch (i2) {
                    case 0:
                        C1324 c1324 = this.f5196;
                        CheckableImageButton checkableImageButton = c1324.f5077;
                        ﹳٴ.ﾞʻ(checkableImageButton, c1324.f5084, checkableImageButton.getContentDescription());
                        return;
                    default:
                        C1324 c13242 = this.f5196;
                        CheckableImageButton checkableImageButton2 = c13242.f5090;
                        ﹳٴ.ﾞʻ(checkableImageButton2, c13242.f5080, checkableImageButton2.getContentDescription());
                        return;
                }
            }
        });
        textInputLayout.f2840.add(c1341);
        if (textInputLayout.f2896 != null) {
            c1341.m4010(textInputLayout);
        }
        addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC1333(0, this));
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m3951(boolean z) {
        if (m3954() != z) {
            this.f5090.setVisibility(z ? 0 : 8);
            m3964();
            m3960();
            this.f5078.m2436();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m3952() {
        int marginStart;
        if (m3954() || m3957()) {
            CheckableImageButton checkableImageButton = this.f5090;
            marginStart = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth();
        } else {
            marginStart = 0;
        }
        return this.f5086.getPaddingEnd() + getPaddingEnd() + marginStart;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m3953(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f5077;
        checkableImageButton.setImageDrawable(drawable);
        m3955();
        ﹳٴ.ﹳٴ(this.f5078, checkableImageButton, this.f5081, this.f5092);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m3954() {
        return this.f5091.getVisibility() == 0 && this.f5090.getVisibility() == 0;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m3955() {
        CheckableImageButton checkableImageButton = this.f5077;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.f5078;
        checkableImageButton.setVisibility((drawable != null && textInputLayout.f2899.f5152 && textInputLayout.m2433()) ? 0 : 8);
        m3964();
        m3960();
        if (this.f5094 != 0) {
            return;
        }
        textInputLayout.m2436();
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m3956() {
        C2312 c2312 = this.f5086;
        int visibility = c2312.getVisibility();
        int i = (this.f5087 == null || this.f5085) ? 8 : 0;
        if (visibility != i) {
            m3962().mo3968(i == 0);
        }
        m3964();
        c2312.setVisibility(i);
        this.f5078.m2436();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m3957() {
        return this.f5077.getVisibility() == 0;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m3958(AbstractC1343 abstractC1343) {
        if (this.f5076 == null) {
            return;
        }
        if (abstractC1343.mo3970() != null) {
            this.f5076.setOnFocusChangeListener(abstractC1343.mo3970());
        }
        if (abstractC1343.mo3972() != null) {
            this.f5090.setOnFocusChangeListener(abstractC1343.mo3972());
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m3959(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f5090;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
            ﹳٴ.ﾞʻ(checkableImageButton, this.f5080, charSequence);
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m3960() {
        TextInputLayout textInputLayout = this.f5078;
        if (textInputLayout.f2896 == null) {
            return;
        }
        this.f5086.setPaddingRelative(getContext().getResources().getDimensionPixelSize(R.dimen.74e), textInputLayout.f2896.getPaddingTop(), (m3954() || m3957()) ? 0 : textInputLayout.f2896.getPaddingEnd(), textInputLayout.f2896.getPaddingBottom());
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m3961(int i) {
        if (this.f5094 == i) {
            return;
        }
        AbstractC1343 m3962 = m3962();
        AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = this.f5097;
        AccessibilityManager accessibilityManager = this.f5088;
        if (touchExplorationStateChangeListener != null && accessibilityManager != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
        }
        this.f5097 = null;
        m3962.mo3975();
        this.f5094 = i;
        Iterator it = this.f5089.iterator();
        if (it.hasNext()) {
            throw AbstractC2305.m5372(it);
        }
        m3951(i != 0);
        AbstractC1343 m39622 = m3962();
        int i2 = this.f5083.f3477;
        if (i2 == 0) {
            i2 = m39622.mo3967();
        }
        Drawable drawable = i2 != 0 ? ˊʻ.ﹳᐧ(getContext(), i2) : null;
        CheckableImageButton checkableImageButton = this.f5090;
        checkableImageButton.setImageDrawable(drawable);
        TextInputLayout textInputLayout = this.f5078;
        if (drawable != null) {
            ﹳٴ.ﹳٴ(textInputLayout, checkableImageButton, this.f5093, this.f5095);
            ﹳٴ.ᵎﹶ(textInputLayout, checkableImageButton, this.f5093);
        }
        checkableImageButton.setCheckable(m39622.mo4000());
        if (!m39622.mo4003(textInputLayout.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + textInputLayout.getBoxBackgroundMode() + " is not supported by the end icon mode " + i);
        }
        m39622.mo3973();
        AccessibilityManager.TouchExplorationStateChangeListener mo4008 = m39622.mo4008();
        this.f5097 = mo4008;
        if (mo4008 != null && accessibilityManager != null && isAttachedToWindow()) {
            accessibilityManager.addTouchExplorationStateChangeListener(this.f5097);
        }
        View.OnClickListener mo3977 = m39622.mo3977();
        View.OnLongClickListener onLongClickListener = this.f5080;
        checkableImageButton.setOnClickListener(mo3977);
        ﹳٴ.ʼˎ(checkableImageButton, onLongClickListener);
        int mo3966 = m39622.mo3966();
        m3959(mo3966 != 0 ? getResources().getText(mo3966) : null);
        EditText editText = this.f5076;
        if (editText != null) {
            m39622.mo3976(editText);
            m3958(m39622);
        }
        ﹳٴ.ﹳٴ(textInputLayout, checkableImageButton, this.f5093, this.f5095);
        m3965(true);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC1343 m3962() {
        AbstractC1343 c1331;
        int i = this.f5094;
        C0815 c0815 = this.f5083;
        SparseArray sparseArray = (SparseArray) c0815.f3476;
        AbstractC1343 abstractC1343 = (AbstractC1343) sparseArray.get(i);
        if (abstractC1343 != null) {
            return abstractC1343;
        }
        C1324 c1324 = (C1324) c0815.f3478;
        if (i == -1) {
            c1331 = new C1331(c1324, 0);
        } else if (i == 0) {
            c1331 = new C1331(c1324, 1);
        } else if (i == 1) {
            c1331 = new C1337(c1324, c0815.f3479);
        } else if (i == 2) {
            c1331 = new C1325(c1324);
        } else {
            if (i != 3) {
                throw new IllegalArgumentException(AbstractC3740.m7932(i, "Invalid end icon mode: "));
            }
            c1331 = new C1338(c1324);
        }
        sparseArray.append(i, c1331);
        return c1331;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final CheckableImageButton m3963(ViewGroup viewGroup, LayoutInflater layoutInflater, int i) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R.layout.3pe, viewGroup, false);
        checkableImageButton.setId(i);
        if (ⁱˊ.ᴵᵔ(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        return checkableImageButton;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m3964() {
        this.f5091.setVisibility((this.f5090.getVisibility() != 0 || m3957()) ? 8 : 0);
        setVisibility((m3954() || m3957() || !((this.f5087 == null || this.f5085) ? 8 : false)) ? 0 : 8);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m3965(boolean z) {
        boolean z2;
        boolean isActivated;
        boolean z3;
        AbstractC1343 m3962 = m3962();
        boolean mo4000 = m3962.mo4000();
        CheckableImageButton checkableImageButton = this.f5090;
        boolean z4 = true;
        if (!mo4000 || (z3 = checkableImageButton.f2791) == m3962.mo4001()) {
            z2 = false;
        } else {
            checkableImageButton.setChecked(!z3);
            z2 = true;
        }
        if (!(m3962 instanceof C1338) || (isActivated = checkableImageButton.isActivated()) == ((C1338) m3962).f5174) {
            z4 = z2;
        } else {
            checkableImageButton.setActivated(!isActivated);
        }
        if (z || z4) {
            ﹳٴ.ᵎﹶ(this.f5078, checkableImageButton, this.f5093);
        }
    }
}
