package p137;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import com.parse.ٴʼ;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p020.AbstractC1028;
import p020.AbstractC1029;
import p307.AbstractC3740;
import p350.AbstractC4295;

/* renamed from: ˉˆ.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2315 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C2274 f9040;

    /* renamed from: ʽ, reason: contains not printable characters */
    public C2330 f9041;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C2330 f9043;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public boolean f9044;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C2330 f9045;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C2330 f9047;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public C2330 f9048;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C2330 f9049;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final TextView f9050;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public Typeface f9051;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C2330 f9052;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f9042 = 0;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f9046 = -1;

    public C2315(TextView textView) {
        this.f9050 = textView;
        this.f9040 = new C2274(textView);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, ˉˆ.ᵢˋ] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public static C2330 m5402(Context context, C2284 c2284, int i) {
        ColorStateList m5245;
        synchronized (c2284) {
            m5245 = c2284.f8942.m5245(context, i);
        }
        if (m5245 == null) {
            return null;
        }
        ?? obj = new Object();
        obj.f9071 = true;
        obj.f9069 = m5245;
        return obj;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m5403(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (i >= 30) {
            AbstractC1029.m3354(editorInfo, text);
            return;
        }
        text.getClass();
        if (i >= 30) {
            AbstractC1029.m3354(editorInfo, text);
            return;
        }
        int i2 = editorInfo.initialSelStart;
        int i3 = editorInfo.initialSelEnd;
        int i4 = i2 > i3 ? i3 : i2;
        if (i2 <= i3) {
            i2 = i3;
        }
        int length = text.length();
        if (i4 < 0 || i2 > length) {
            AbstractC1028.m3351(editorInfo, null, 0, 0);
            return;
        }
        int i5 = editorInfo.inputType & 4095;
        if (i5 == 129 || i5 == 225 || i5 == 18) {
            AbstractC1028.m3351(editorInfo, null, 0, 0);
            return;
        }
        if (length <= 2048) {
            AbstractC1028.m3351(editorInfo, text, i4, i2);
            return;
        }
        int i6 = i2 - i4;
        int i7 = i6 > 1024 ? 0 : i6;
        int i8 = 2048 - i7;
        int min = Math.min(text.length() - i2, i8 - Math.min(i4, (int) (i8 * 0.8d)));
        int min2 = Math.min(i4, i8 - min);
        int i9 = i4 - min2;
        if (Character.isLowSurrogate(text.charAt(i9))) {
            i9++;
            min2--;
        }
        if (Character.isHighSurrogate(text.charAt((i2 + min) - 1))) {
            min--;
        }
        int i10 = min2 + i7;
        AbstractC1028.m3351(editorInfo, i7 != i6 ? TextUtils.concat(text.subSequence(i9, i9 + min2), text.subSequence(i2, min + i2)) : text.subSequence(i9, i10 + min + i9), min2, i10);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m5404(int i, int i2, int i3, int i4) {
        C2274 c2274 = this.f9040;
        if (c2274.m5314()) {
            DisplayMetrics displayMetrics = c2274.f8905.getResources().getDisplayMetrics();
            c2274.m5315(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (c2274.m5317()) {
                c2274.m5318();
            }
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m5405(int[] iArr, int i) {
        C2274 c2274 = this.f9040;
        if (c2274.m5314()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = c2274.f8905.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr2[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                c2274.f8913 = C2274.m5311(iArr2);
                if (!c2274.m5312()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                c2274.f8909 = false;
            }
            if (c2274.m5317()) {
                c2274.m5318();
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ColorStateList m5406() {
        C2330 c2330 = this.f9048;
        if (c2330 != null) {
            return (ColorStateList) c2330.f9069;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, ˉˆ.ᵢˋ] */
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m5407(PorterDuff.Mode mode) {
        if (this.f9048 == null) {
            this.f9048 = new Object();
        }
        C2330 c2330 = this.f9048;
        c2330.f9070 = mode;
        c2330.f9072 = mode != null;
        this.f9049 = c2330;
        this.f9041 = c2330;
        this.f9043 = c2330;
        this.f9045 = c2330;
        this.f9052 = c2330;
        this.f9047 = c2330;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final PorterDuff.Mode m5408() {
        C2330 c2330 = this.f9048;
        if (c2330 != null) {
            return (PorterDuff.Mode) c2330.f9070;
        }
        return null;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m5409(int i) {
        C2274 c2274 = this.f9040;
        if (c2274.m5314()) {
            if (i == 0) {
                c2274.f8912 = 0;
                c2274.f8906 = -1.0f;
                c2274.f8907 = -1.0f;
                c2274.f8904 = -1.0f;
                c2274.f8913 = new int[0];
                c2274.f8911 = false;
                return;
            }
            if (i != 1) {
                throw new IllegalArgumentException(AbstractC3740.m7932(i, "Unknown auto-size text type: "));
            }
            DisplayMetrics displayMetrics = c2274.f8905.getResources().getDisplayMetrics();
            c2274.m5315(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (c2274.m5317()) {
                c2274.m5318();
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m5410(Context context, int i) {
        String string;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, AbstractC4295.f15913);
        ٴʼ r0 = new ٴʼ(context, obtainStyledAttributes);
        boolean hasValue = obtainStyledAttributes.hasValue(14);
        TextView textView = this.f9050;
        if (hasValue) {
            textView.setAllCaps(obtainStyledAttributes.getBoolean(14, false));
        }
        int i2 = Build.VERSION.SDK_INT;
        if (obtainStyledAttributes.hasValue(0) && obtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        m5411(context, r0);
        if (i2 >= 26 && obtainStyledAttributes.hasValue(13) && (string = obtainStyledAttributes.getString(13)) != null) {
            AbstractC2336.m5431(textView, string);
        }
        r0.ᐧᴵ();
        Typeface typeface = this.f9051;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f9042);
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m5411(Context context, ٴʼ r13) {
        String string;
        int i = this.f9042;
        TypedArray typedArray = (TypedArray) r13.ᴵˊ;
        this.f9042 = typedArray.getInt(2, i);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            int i3 = typedArray.getInt(11, -1);
            this.f9046 = i3;
            if (i3 != -1) {
                this.f9042 &= 2;
            }
        }
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.f9044 = false;
                int i4 = typedArray.getInt(1, 1);
                if (i4 == 1) {
                    this.f9051 = Typeface.SANS_SERIF;
                    return;
                } else if (i4 == 2) {
                    this.f9051 = Typeface.SERIF;
                    return;
                } else {
                    if (i4 != 3) {
                        return;
                    }
                    this.f9051 = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f9051 = null;
        int i5 = typedArray.hasValue(12) ? 12 : 10;
        int i6 = this.f9046;
        int i7 = this.f9042;
        if (!context.isRestricted()) {
            try {
                Typeface typeface = r13.ʼˈ(i5, this.f9042, new C2273(this, i6, i7, new WeakReference(this.f9050)));
                if (typeface != null) {
                    if (i2 < 28 || this.f9046 == -1) {
                        this.f9051 = typeface;
                    } else {
                        this.f9051 = AbstractC2266.m5301(Typeface.create(typeface, 0), this.f9046, (this.f9042 & 2) != 0);
                    }
                }
                this.f9044 = this.f9051 == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f9051 != null || (string = typedArray.getString(i5)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f9046 == -1) {
            this.f9051 = Typeface.create(string, this.f9042);
        } else {
            this.f9051 = AbstractC2266.m5301(Typeface.create(string, 0), this.f9046, (this.f9042 & 2) != 0);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5412() {
        C2330 c2330 = this.f9049;
        TextView textView = this.f9050;
        if (c2330 != null || this.f9041 != null || this.f9043 != null || this.f9045 != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            m5413(compoundDrawables[0], this.f9049);
            m5413(compoundDrawables[1], this.f9041);
            m5413(compoundDrawables[2], this.f9043);
            m5413(compoundDrawables[3], this.f9045);
        }
        if (this.f9052 == null && this.f9047 == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        m5413(compoundDrawablesRelative[0], this.f9052);
        m5413(compoundDrawablesRelative[2], this.f9047);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5413(Drawable drawable, C2330 c2330) {
        if (drawable == null || c2330 == null) {
            return;
        }
        C2284.m5331(drawable, c2330, this.f9050.getDrawableState());
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, ˉˆ.ᵢˋ] */
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m5414(ColorStateList colorStateList) {
        if (this.f9048 == null) {
            this.f9048 = new Object();
        }
        C2330 c2330 = this.f9048;
        c2330.f9069 = colorStateList;
        c2330.f9071 = colorStateList != null;
        this.f9049 = c2330;
        this.f9041 = c2330;
        this.f9043 = c2330;
        this.f9045 = c2330;
        this.f9052 = c2330;
        this.f9047 = c2330;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:192:? A[RETURN, SYNTHETIC] */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5415(android.util.AttributeSet r27, int r28) {
        /*
            Method dump skipped, instructions count: 1018
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p137.C2315.m5415(android.util.AttributeSet, int):void");
    }
}
