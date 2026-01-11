package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import com.google.android.gms.internal.measurement.ᵎ;
import p137.C2238;
import p137.C2312;
import p137.InterfaceC2346;
import p350.AbstractC4295;
import p353.AbstractC4326;
import p353.C4329;
import p353.InterfaceC4304;
import p353.InterfaceC4306;
import p353.MenuC4312;

/* loaded from: classes.dex */
public class ActionMenuItemView extends C2312 implements InterfaceC4304, View.OnClickListener, InterfaceC2346 {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public AbstractC4326 f40;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public boolean f41;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public C4329 f42;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final int f43;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public int f44;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final int f45;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public Drawable f46;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public InterfaceC4306 f47;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public CharSequence f48;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public C2238 f49;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f50;

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Resources resources = context.getResources();
        this.f50 = m25();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC4295.f15902, 0, 0);
        this.f45 = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        this.f43 = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f44 = -1;
        setSaveEnabled(false);
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // p353.InterfaceC4304
    public C4329 getItemData() {
        return this.f42;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC4306 interfaceC4306 = this.f47;
        if (interfaceC4306 != null) {
            interfaceC4306.mo29(this.f42);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f50 = m25();
        m26();
    }

    @Override // p137.C2312, android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        boolean isEmpty = TextUtils.isEmpty(getText());
        if (!isEmpty && (i3 = this.f44) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int i4 = this.f45;
        int min = mode == Integer.MIN_VALUE ? Math.min(size, i4) : i4;
        if (mode != 1073741824 && i4 > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (!isEmpty || this.f46 == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f46.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        C2238 c2238;
        if (this.f42.hasSubMenu() && (c2238 = this.f49) != null && c2238.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f41 != z) {
            this.f41 = z;
            C4329 c4329 = this.f42;
            if (c4329 != null) {
                MenuC4312 menuC4312 = c4329.f16087;
                menuC4312.f15964 = true;
                menuC4312.m8722(true);
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f46 = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.f43;
            if (intrinsicWidth > i) {
                intrinsicHeight = (int) (intrinsicHeight * (i / intrinsicWidth));
                intrinsicWidth = i;
            }
            if (intrinsicHeight > i) {
                intrinsicWidth = (int) (intrinsicWidth * (i / intrinsicHeight));
            } else {
                i = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i);
        }
        setCompoundDrawables(drawable, null, null, null);
        m26();
    }

    public void setItemInvoker(InterfaceC4306 interfaceC4306) {
        this.f47 = interfaceC4306;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        this.f44 = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(AbstractC4326 abstractC4326) {
        this.f40 = abstractC4326;
    }

    public void setTitle(CharSequence charSequence) {
        this.f48 = charSequence;
        m26();
    }

    @Override // p137.InterfaceC2346
    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean mo24() {
        return !TextUtils.isEmpty(getText()) && this.f42.getIcon() == null;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m25() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (i < 480) {
            return (i >= 640 && i2 >= 480) || configuration.orientation == 2;
        }
        return true;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m26() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f48);
        if (this.f46 != null && ((this.f42.f16068 & 4) != 4 || (!this.f50 && !this.f41))) {
            z = false;
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.f48 : null);
        CharSequence charSequence = this.f42.f16089;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z3 ? null : this.f42.f16081);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f42.f16093;
        if (TextUtils.isEmpty(charSequence2)) {
            ᵎ.יـ(this, z3 ? null : this.f42.f16081);
        } else {
            ᵎ.יـ(this, charSequence2);
        }
    }

    @Override // p137.InterfaceC2346
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean mo27() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // p353.InterfaceC4304
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo28(C4329 c4329) {
        this.f42 = c4329;
        setIcon(c4329.getIcon());
        setTitle(c4329.getTitleCondensed());
        setId(c4329.f16092);
        setVisibility(c4329.isVisible() ? 0 : 8);
        setEnabled(c4329.isEnabled());
        if (c4329.hasSubMenu() && this.f49 == null) {
            this.f49 = new C2238(this);
        }
    }
}
