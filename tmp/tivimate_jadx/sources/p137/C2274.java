package p137;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.TypedValue;
import android.widget.TextView;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* renamed from: ˉˆ.ˊᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2274 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final TextView f8903;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Context f8905;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C2285 f8908;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public TextPaint f8910;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final RectF f8902 = new RectF();

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static final ConcurrentHashMap f8901 = new ConcurrentHashMap();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f8912 = 0;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f8911 = false;

    /* renamed from: ʽ, reason: contains not printable characters */
    public float f8904 = -1.0f;

    /* renamed from: ˈ, reason: contains not printable characters */
    public float f8906 = -1.0f;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public float f8907 = -1.0f;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int[] f8913 = new int[0];

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f8909 = false;

    public C2274(TextView textView) {
        this.f8903 = textView;
        this.f8905 = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.f8908 = new C2313();
        } else {
            this.f8908 = new C2285();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static Method m5309(String str) {
        try {
            ConcurrentHashMap concurrentHashMap = f8901;
            Method method = (Method) concurrentHashMap.get(str);
            if (method != null || (method = TextView.class.getDeclaredMethod(str, null)) == null) {
                return method;
            }
            method.setAccessible(true);
            concurrentHashMap.put(str, method);
            return method;
        } catch (Exception e) {
            String str2 = "Failed to retrieve TextView#" + str + "() method";
            return null;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static Object m5310(Object obj, Object obj2, String str) {
        try {
            return m5309(str).invoke(obj, null);
        } catch (Exception e) {
            String str2 = "Failed to invoke TextView#" + str + "() method";
            return obj2;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int[] m5311(int[] iArr) {
        int length = iArr.length;
        if (length != 0) {
            Arrays.sort(iArr);
            ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            if (length != arrayList.size()) {
                int size = arrayList.size();
                int[] iArr2 = new int[size];
                for (int i2 = 0; i2 < size; i2++) {
                    iArr2[i2] = ((Integer) arrayList.get(i2)).intValue();
                }
                return iArr2;
            }
        }
        return iArr;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean m5312() {
        boolean z = this.f8913.length > 0;
        this.f8909 = z;
        if (z) {
            this.f8912 = 1;
            this.f8906 = r0[0];
            this.f8907 = r0[r1 - 1];
            this.f8904 = -1.0f;
        }
        return z;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m5313(RectF rectF) {
        CharSequence transformation;
        int length = this.f8913.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i = length - 1;
        int i2 = 0;
        int i3 = 1;
        while (i3 <= i) {
            int i4 = (i3 + i) / 2;
            int i5 = this.f8913[i4];
            TextView textView = this.f8903;
            CharSequence text = textView.getText();
            TransformationMethod transformationMethod = textView.getTransformationMethod();
            CharSequence charSequence = (transformationMethod == null || (transformation = transformationMethod.getTransformation(text, textView)) == null) ? text : transformation;
            int maxLines = textView.getMaxLines();
            TextPaint textPaint = this.f8910;
            if (textPaint == null) {
                this.f8910 = new TextPaint();
            } else {
                textPaint.reset();
            }
            this.f8910.set(textView.getPaint());
            this.f8910.setTextSize(i5);
            StaticLayout m5394 = AbstractC2310.m5394(charSequence, (Layout.Alignment) m5310(textView, Layout.Alignment.ALIGN_NORMAL, "getLayoutAlignment"), Math.round(rectF.right), maxLines, this.f8903, this.f8910, this.f8908);
            if ((maxLines == -1 || (m5394.getLineCount() <= maxLines && m5394.getLineEnd(m5394.getLineCount() - 1) == charSequence.length())) && m5394.getHeight() <= rectF.bottom) {
                int i6 = i4 + 1;
                i2 = i3;
                i3 = i6;
            } else {
                i2 = i4 - 1;
                i = i2;
            }
        }
        return this.f8913[i2];
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean m5314() {
        return !(this.f8903 instanceof C2233);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m5315(float f, float f2, float f3) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        }
        if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        }
        if (f3 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        }
        this.f8912 = 1;
        this.f8906 = f;
        this.f8907 = f2;
        this.f8904 = f3;
        this.f8909 = false;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m5316(int i, float f) {
        Context context = this.f8905;
        float applyDimension = TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics());
        TextView textView = this.f8903;
        if (applyDimension != textView.getPaint().getTextSize()) {
            textView.getPaint().setTextSize(applyDimension);
            boolean isInLayout = textView.isInLayout();
            if (textView.getLayout() != null) {
                this.f8911 = false;
                try {
                    Method m5309 = m5309("nullLayouts");
                    if (m5309 != null) {
                        m5309.invoke(textView, null);
                    }
                } catch (Exception e) {
                }
                if (isInLayout) {
                    textView.forceLayout();
                } else {
                    textView.requestLayout();
                }
                textView.invalidate();
            }
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m5317() {
        if (m5314() && this.f8912 == 1) {
            if (!this.f8909 || this.f8913.length == 0) {
                int floor = ((int) Math.floor((this.f8907 - this.f8906) / this.f8904)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round((i * this.f8904) + this.f8906);
                }
                this.f8913 = m5311(iArr);
            }
            this.f8911 = true;
        } else {
            this.f8911 = false;
        }
        return this.f8911;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5318() {
        if (m5319()) {
            if (this.f8911) {
                if (this.f8903.getMeasuredHeight() <= 0 || this.f8903.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f8908.mo5236(this.f8903) ? 1048576 : (this.f8903.getMeasuredWidth() - this.f8903.getTotalPaddingLeft()) - this.f8903.getTotalPaddingRight();
                int height = (this.f8903.getHeight() - this.f8903.getCompoundPaddingBottom()) - this.f8903.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f8902;
                synchronized (rectF) {
                    try {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float m5313 = m5313(rectF);
                        if (m5313 != this.f8903.getTextSize()) {
                            m5316(0, m5313);
                        }
                    } finally {
                    }
                }
            }
            this.f8911 = true;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m5319() {
        return m5314() && this.f8912 != 0;
    }
}
