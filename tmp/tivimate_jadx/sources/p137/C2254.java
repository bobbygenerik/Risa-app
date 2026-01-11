package p137;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
import p011.C0876;
import p350.AbstractC4295;
import p353.InterfaceC4305;
import ᴵˋ.ˊʻ;

/* renamed from: ˉˆ.ʿـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2254 implements InterfaceC4305 {

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public static final Method f8828;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public static final Method f8829;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public static final Method f8830;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C2249 f8832;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Context f8833;

    /* renamed from: ʿ, reason: contains not printable characters */
    public boolean f8834;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final C2331 f8835;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public View f8837;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final Handler f8839;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public Rect f8840;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f8842;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public AdapterView.OnItemSelectedListener f8844;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public AdapterView.OnItemClickListener f8845;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f8847;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f8848;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public ListAdapter f8849;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public boolean f8852;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f8853;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public C2234 f8855;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f8838 = -2;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f8851 = -2;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f8841 = 1002;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f8854 = 0;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final int f8836 = Integer.MAX_VALUE;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final RunnableC2309 f8843 = new RunnableC2309(this, 1);

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final ViewOnTouchListenerC2318 f8831 = new ViewOnTouchListenerC2318(this);

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final C2298 f8846 = new C2298(this);

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final RunnableC2309 f8856 = new RunnableC2309(this, 0);

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final Rect f8850 = new Rect();

    static {
        int i = Build.VERSION.SDK_INT;
        Class cls = Boolean.TYPE;
        if (i <= 28) {
            try {
                f8830 = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", cls);
            } catch (NoSuchMethodException unused) {
            }
            try {
                f8828 = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f8829 = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, cls);
            } catch (NoSuchMethodException unused3) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [ˉˆ.ᵢˏ, android.widget.PopupWindow] */
    public C2254(Context context, AttributeSet attributeSet, int i, int i2) {
        int resourceId;
        this.f8833 = context;
        this.f8839 = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC4295.f15909, i, i2);
        this.f8842 = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f8848 = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f8853 = true;
        }
        obtainStyledAttributes.recycle();
        ?? popupWindow = new PopupWindow(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, AbstractC4295.f15912, i, i2);
        if (obtainStyledAttributes2.hasValue(2)) {
            popupWindow.setOverlapAnchor(obtainStyledAttributes2.getBoolean(2, false));
        }
        popupWindow.setBackgroundDrawable((!obtainStyledAttributes2.hasValue(0) || (resourceId = obtainStyledAttributes2.getResourceId(0, 0)) == 0) ? obtainStyledAttributes2.getDrawable(0) : ˊʻ.ﹳᐧ(context, resourceId));
        obtainStyledAttributes2.recycle();
        this.f8835 = popupWindow;
        popupWindow.setInputMethodMode(1);
    }

    @Override // p353.InterfaceC4305
    public final void dismiss() {
        C2331 c2331 = this.f8835;
        c2331.dismiss();
        c2331.setContentView(null);
        this.f8832 = null;
        this.f8839.removeCallbacks(this.f8843);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m5269(Drawable drawable) {
        this.f8835.setBackgroundDrawable(drawable);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public void mo5270(ListAdapter listAdapter) {
        C2234 c2234 = this.f8855;
        if (c2234 == null) {
            this.f8855 = new C2234(this);
        } else {
            ListAdapter listAdapter2 = this.f8849;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(c2234);
            }
        }
        this.f8849 = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f8855);
        }
        C2249 c2249 = this.f8832;
        if (c2249 != null) {
            c2249.setAdapter(this.f8849);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Drawable m5271() {
        return this.f8835.getBackground();
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m5272(int i) {
        this.f8848 = i;
        this.f8853 = true;
    }

    @Override // p353.InterfaceC4305
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo5273() {
        int i;
        int m5268;
        int paddingBottom;
        C2249 c2249;
        C2249 c22492 = this.f8832;
        Context context = this.f8833;
        int i2 = 1;
        C2331 c2331 = this.f8835;
        if (c22492 == null) {
            C2249 mo5275 = mo5275(context, !this.f8834);
            this.f8832 = mo5275;
            mo5275.setAdapter(this.f8849);
            this.f8832.setOnItemClickListener(this.f8845);
            this.f8832.setFocusable(true);
            this.f8832.setFocusableInTouchMode(true);
            this.f8832.setOnItemSelectedListener(new C0876(i2, this));
            this.f8832.setOnScrollListener(this.f8846);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f8844;
            if (onItemSelectedListener != null) {
                this.f8832.setOnItemSelectedListener(onItemSelectedListener);
            }
            c2331.setContentView(this.f8832);
        }
        Drawable background = c2331.getBackground();
        Rect rect = this.f8850;
        if (background != null) {
            background.getPadding(rect);
            int i3 = rect.top;
            i = rect.bottom + i3;
            if (!this.f8853) {
                this.f8848 = -i3;
            }
        } else {
            rect.setEmpty();
            i = 0;
        }
        boolean z = c2331.getInputMethodMode() == 2;
        View view = this.f8837;
        int i4 = this.f8848;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = f8829;
            if (method != null) {
                try {
                    m5268 = ((Integer) method.invoke(c2331, view, Integer.valueOf(i4), Boolean.valueOf(z))).intValue();
                } catch (Exception unused) {
                }
            }
            m5268 = c2331.getMaxAvailableHeight(view, i4);
        } else {
            m5268 = AbstractC2252.m5268(c2331, view, i4, z);
        }
        int i5 = this.f8838;
        if (i5 == -1) {
            paddingBottom = m5268 + i;
        } else {
            int i6 = this.f8851;
            int m5262 = this.f8832.m5262(i6 != -2 ? i6 != -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE), m5268);
            paddingBottom = m5262 + (m5262 > 0 ? this.f8832.getPaddingBottom() + this.f8832.getPaddingTop() + i : 0);
        }
        boolean z2 = c2331.getInputMethodMode() == 2;
        c2331.setWindowLayoutType(this.f8841);
        if (c2331.isShowing()) {
            if (this.f8837.isAttachedToWindow()) {
                int i7 = this.f8851;
                if (i7 == -1) {
                    i7 = -1;
                } else if (i7 == -2) {
                    i7 = this.f8837.getWidth();
                }
                if (i5 == -1) {
                    i5 = z2 ? paddingBottom : -1;
                    if (z2) {
                        c2331.setWidth(this.f8851 == -1 ? -1 : 0);
                        c2331.setHeight(0);
                    } else {
                        c2331.setWidth(this.f8851 == -1 ? -1 : 0);
                        c2331.setHeight(-1);
                    }
                } else if (i5 == -2) {
                    i5 = paddingBottom;
                }
                c2331.setOutsideTouchable(true);
                int i8 = i7;
                View view2 = this.f8837;
                int i9 = this.f8842;
                int i10 = this.f8848;
                int i11 = i8 < 0 ? -1 : i8;
                if (i5 < 0) {
                    i5 = -1;
                }
                c2331.update(view2, i9, i10, i11, i5);
                return;
            }
            return;
        }
        int i12 = this.f8851;
        if (i12 == -1) {
            i12 = -1;
        } else if (i12 == -2) {
            i12 = this.f8837.getWidth();
        }
        if (i5 == -1) {
            i5 = -1;
        } else if (i5 == -2) {
            i5 = paddingBottom;
        }
        c2331.setWidth(i12);
        c2331.setHeight(i5);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = f8830;
            if (method2 != null) {
                try {
                    method2.invoke(c2331, Boolean.TRUE);
                } catch (Exception unused2) {
                }
            }
        } else {
            AbstractC2332.m5426(c2331, true);
        }
        c2331.setOutsideTouchable(true);
        c2331.setTouchInterceptor(this.f8831);
        if (this.f8852) {
            c2331.setOverlapAnchor(this.f8847);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method3 = f8828;
            if (method3 != null) {
                try {
                    method3.invoke(c2331, this.f8840);
                } catch (Exception e) {
                }
            }
        } else {
            AbstractC2332.m5427(c2331, this.f8840);
        }
        c2331.showAsDropDown(this.f8837, this.f8842, this.f8848, this.f8854);
        this.f8832.setSelection(-1);
        if ((!this.f8834 || this.f8832.isInTouchMode()) && (c2249 = this.f8832) != null) {
            c2249.setListSelectionHidden(true);
            c2249.requestLayout();
        }
        if (this.f8834) {
            return;
        }
        this.f8839.post(this.f8856);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final int m5274() {
        if (this.f8853) {
            return this.f8848;
        }
        return 0;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public C2249 mo5275(Context context, boolean z) {
        return new C2249(context, z);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m5276() {
        return this.f8842;
    }

    @Override // p353.InterfaceC4305
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo5277() {
        return this.f8835.isShowing();
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m5278(int i) {
        Drawable background = this.f8835.getBackground();
        if (background == null) {
            this.f8851 = i;
            return;
        }
        Rect rect = this.f8850;
        background.getPadding(rect);
        this.f8851 = rect.left + rect.right + i;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m5279(int i) {
        this.f8842 = i;
    }

    @Override // p353.InterfaceC4305
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C2249 mo5280() {
        return this.f8832;
    }
}
