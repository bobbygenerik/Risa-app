package p137;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import p012.C0882;
import ᴵˋ.ˊʻ;

/* renamed from: ˉˆ.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2290 extends Spinner {

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final int[] f8960 = {R.attr.spinnerMode};

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2306 f8961;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0882 f8962;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public SpinnerAdapter f8963;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final Rect f8964;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final InterfaceC2262 f8965;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f8966;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Context f8967;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean f8968;

    /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
    
        if (r7 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2290(android.content.Context r13, android.util.AttributeSet r14) {
        /*
            r12 = this;
            r0 = 2130970013(0x7f04059d, float:1.7548724E38)
            r12.<init>(r13, r14, r0)
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            r12.f8964 = r1
            android.content.Context r1 = r12.getContext()
            p137.AbstractC2281.m5326(r1, r12)
            r1 = 0
            int[] r2 = p350.AbstractC4295.f15903
            com.parse.ٴʼ r3 = com.parse.ٴʼ.ʿᵢ(r0, r1, r13, r14, r2)
            java.lang.Object r4 = r3.ᴵˊ
            android.content.res.TypedArray r4 = (android.content.res.TypedArray) r4
            ʻᴵ.ʼʼ r5 = new ʻᴵ.ʼʼ
            r5.<init>(r12)
            r12.f8962 = r5
            r5 = 4
            int r5 = r4.getResourceId(r5, r1)
            if (r5 == 0) goto L35
            ˉʿ.ʽ r6 = new ˉʿ.ʽ
            r6.<init>(r13, r5)
            r12.f8967 = r6
            goto L37
        L35:
            r12.f8967 = r13
        L37:
            r5 = -1
            r6 = 0
            int[] r7 = p137.C2290.f8960     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            android.content.res.TypedArray r7 = r13.obtainStyledAttributes(r14, r7, r0, r1)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            boolean r8 = r7.hasValue(r1)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4e
            if (r8 == 0) goto L50
            int r5 = r7.getInt(r1, r1)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4e
            goto L50
        L4a:
            r13 = move-exception
            r6 = r7
            goto Ld3
        L4e:
            r8 = move-exception
            goto L59
        L50:
            r7.recycle()
            goto L61
        L54:
            r13 = move-exception
            goto Ld3
        L57:
            r8 = move-exception
            r7 = r6
        L59:
            java.lang.String r9 = "AppCompatSpinner"
            java.lang.String r10 = "Could not read android:spinnerMode"
            if (r7 == 0) goto L61
            goto L50
        L61:
            r7 = 2
            r8 = 1
            if (r5 == 0) goto L9b
            if (r5 == r8) goto L68
            goto La8
        L68:
            ˉˆ.ˆﾞ r5 = new ˉˆ.ˆﾞ
            android.content.Context r9 = r12.f8967
            r5.<init>(r12, r9, r14)
            android.content.Context r9 = r12.f8967
            com.parse.ٴʼ r2 = com.parse.ٴʼ.ʿᵢ(r0, r1, r9, r14, r2)
            java.lang.Object r9 = r2.ᴵˊ
            android.content.res.TypedArray r9 = (android.content.res.TypedArray) r9
            r10 = 3
            r11 = -2
            int r9 = r9.getLayoutDimension(r10, r11)
            r12.f8966 = r9
            android.graphics.drawable.Drawable r9 = r2.ˑٴ(r8)
            r5.m5269(r9)
            java.lang.String r7 = r4.getString(r7)
            r5.f8876 = r7
            r2.ᐧᴵ()
            r12.f8965 = r5
            ˉˆ.ٴᵢ r2 = new ˉˆ.ٴᵢ
            r2.<init>(r12, r12, r5)
            r12.f8961 = r2
            goto La8
        L9b:
            ˉˆ.ٴʼ r2 = new ˉˆ.ٴʼ
            r2.<init>(r12)
            r12.f8965 = r2
            java.lang.String r5 = r4.getString(r7)
            r2.f8990 = r5
        La8:
            java.lang.CharSequence[] r1 = r4.getTextArray(r1)
            if (r1 == 0) goto Lbf
            android.widget.ArrayAdapter r2 = new android.widget.ArrayAdapter
            r4 = 17367048(0x1090008, float:2.5162948E-38)
            r2.<init>(r13, r4, r1)
            r13 = 2131624247(0x7f0e0137, float:1.8875668E38)
            r2.setDropDownViewResource(r13)
            r12.setAdapter(r2)
        Lbf:
            r3.ᐧᴵ()
            r12.f8968 = r8
            android.widget.SpinnerAdapter r13 = r12.f8963
            if (r13 == 0) goto Lcd
            r12.setAdapter(r13)
            r12.f8963 = r6
        Lcd:
            ʻᴵ.ʼʼ r13 = r12.f8962
            r13.m3123(r14, r0)
            return
        Ld3:
            if (r6 == 0) goto Ld8
            r6.recycle()
        Ld8:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: p137.C2290.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0882 c0882 = this.f8962;
        if (c0882 != null) {
            c0882.m3135();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        InterfaceC2262 interfaceC2262 = this.f8965;
        return interfaceC2262 != null ? interfaceC2262.mo5296() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        InterfaceC2262 interfaceC2262 = this.f8965;
        return interfaceC2262 != null ? interfaceC2262.mo5295() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f8965 != null ? this.f8966 : super.getDropDownWidth();
    }

    public final InterfaceC2262 getInternalPopup() {
        return this.f8965;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        InterfaceC2262 interfaceC2262 = this.f8965;
        return interfaceC2262 != null ? interfaceC2262.mo5293() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f8967;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        InterfaceC2262 interfaceC2262 = this.f8965;
        return interfaceC2262 != null ? interfaceC2262.mo5288() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0882 c0882 = this.f8962;
        if (c0882 != null) {
            return c0882.m3121();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0882 c0882 = this.f8962;
        if (c0882 != null) {
            return c0882.m3129();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        InterfaceC2262 interfaceC2262 = this.f8965;
        if (interfaceC2262 == null || !interfaceC2262.mo5297()) {
            return;
        }
        interfaceC2262.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f8965 == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m5340(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        C2325 c2325 = (C2325) parcelable;
        super.onRestoreInstanceState(c2325.getSuperState());
        if (!c2325.f9061 || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC2270(0, this));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.View$BaseSavedState, android.os.Parcelable, ˉˆ.ᵔٴ] */
    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? baseSavedState = new View.BaseSavedState(super.onSaveInstanceState());
        InterfaceC2262 interfaceC2262 = this.f8965;
        baseSavedState.f9061 = interfaceC2262 != null && interfaceC2262.mo5297();
        return baseSavedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        C2306 c2306 = this.f8961;
        if (c2306 == null || !c2306.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        InterfaceC2262 interfaceC2262 = this.f8965;
        if (interfaceC2262 == null) {
            return super.performClick();
        }
        if (interfaceC2262.mo5297()) {
            return true;
        }
        interfaceC2262.mo5287(getTextDirection(), getTextAlignment());
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.widget.ListAdapter, java.lang.Object, ˉˆ.ᵎˊ] */
    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f8968) {
            this.f8963 = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        InterfaceC2262 interfaceC2262 = this.f8965;
        if (interfaceC2262 != 0) {
            Context context = this.f8967;
            if (context == null) {
                context = getContext();
            }
            Resources.Theme theme = context.getTheme();
            ?? obj = new Object();
            obj.f9056 = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                obj.f9055 = (ListAdapter) spinnerAdapter;
            }
            if (theme != null && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                AbstractC2321.m5418((ThemedSpinnerAdapter) spinnerAdapter, theme);
            }
            interfaceC2262.mo5270(obj);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0882 c0882 = this.f8962;
        if (c0882 != null) {
            c0882.m3124();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0882 c0882 = this.f8962;
        if (c0882 != null) {
            c0882.m3117(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        InterfaceC2262 interfaceC2262 = this.f8965;
        if (interfaceC2262 == null) {
            super.setDropDownHorizontalOffset(i);
        } else {
            interfaceC2262.mo5290(i);
            interfaceC2262.mo5298(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        InterfaceC2262 interfaceC2262 = this.f8965;
        if (interfaceC2262 != null) {
            interfaceC2262.mo5294(i);
        } else {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f8965 != null) {
            this.f8966 = i;
        } else {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        InterfaceC2262 interfaceC2262 = this.f8965;
        if (interfaceC2262 != null) {
            interfaceC2262.mo5292(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(ˊʻ.ﹳᐧ(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        InterfaceC2262 interfaceC2262 = this.f8965;
        if (interfaceC2262 != null) {
            interfaceC2262.mo5291(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0882 c0882 = this.f8962;
        if (c0882 != null) {
            c0882.m3128(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0882 c0882 = this.f8962;
        if (c0882 != null) {
            c0882.m3120(mode);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m5340(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i2 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return i2;
        }
        Rect rect = this.f8964;
        drawable.getPadding(rect);
        return rect.left + rect.right + i2;
    }
}
