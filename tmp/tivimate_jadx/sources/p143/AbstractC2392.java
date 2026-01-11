package p143;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.TypedValue;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import p076.RunnableC1663;
import p349.AbstractC4293;

/* renamed from: ˉٴ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2392 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static boolean f9230;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static Method f9233;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final float[][] f9232 = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final float[][] f9231 = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final float[] f9227 = {95.047f, 100.0f, 108.883f};

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final float[][] f9228 = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Object f9229 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static ʽﹳ m5486(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        ʽﹳ r3;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i2 = typedValue.type;
            if (i2 >= 28 && i2 <= 31) {
                return new ʽﹳ((Shader) null, (ColorStateList) null, typedValue.data);
            }
            try {
                r3 = ʽﹳ.ᵎﹶ(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            } catch (Exception e) {
                r3 = null;
            }
            if (r3 != null) {
                return r3;
            }
        }
        return new ʽﹳ((Shader) null, (ColorStateList) null, 0);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static String m5487(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (m5490(xmlPullParser, str)) {
            return typedArray.getString(i);
        }
        return null;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m5488(Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 29) {
            AbstractC2386.m5483(theme);
            return;
        }
        synchronized (f9229) {
            if (!f9230) {
                try {
                    Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", null);
                    f9233 = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException e) {
                }
                f9230 = true;
            }
            Method method = f9233;
            if (method != null) {
                try {
                    method.invoke(theme, null);
                } catch (IllegalAccessException | InvocationTargetException e2) {
                    f9233 = null;
                }
            }
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static float m5489() {
        return ((float) Math.pow((50.0f + 16.0d) / 116.0d, 3.0d)) * 100.0f;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static boolean m5490(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v12, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p143.InterfaceC2387 m5491(android.content.res.XmlResourceParser r24, android.content.res.Resources r25) {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p143.AbstractC2392.m5491(android.content.res.XmlResourceParser, android.content.res.Resources):ˉٴ.ˈ");
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static float m5492(int i) {
        float f = i / 255.0f;
        return (f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static void m5493(XmlPullParser xmlPullParser) {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static TypedArray m5494(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m5495(Context context, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId != 0 ? i : i2;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static List m5496(Resources resources, int i) {
        if (i == 0) {
            return Collections.EMPTY_LIST;
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            if (obtainTypedArray.getType(0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        String[] stringArray = resources.getStringArray(resourceId);
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArray) {
                            arrayList2.add(Base64.decode(str, 0));
                        }
                        arrayList.add(arrayList2);
                    }
                }
            } else {
                String[] stringArray2 = resources.getStringArray(i);
                ArrayList arrayList3 = new ArrayList();
                for (String str2 : stringArray2) {
                    arrayList3.add(Base64.decode(str2, 0));
                }
                arrayList.add(arrayList3);
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m5497(float f) {
        if (f < 1.0f) {
            return -16777216;
        }
        if (f > 99.0f) {
            return -1;
        }
        float f2 = (f + 16.0f) / 116.0f;
        float f3 = f > 8.0f ? f2 * f2 * f2 : f / 903.2963f;
        float f4 = f2 * f2 * f2;
        boolean z = f4 > 0.008856452f;
        float f5 = z ? f4 : ((f2 * 116.0f) - 16.0f) / 903.2963f;
        if (!z) {
            f4 = ((f2 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = f9227;
        return AbstractC4293.m8699(f5 * fArr[0], f3 * fArr[1], f4 * fArr[2]);
    }

    /* renamed from: ʼˎ */
    public abstract void mo5307(int i);

    /* renamed from: ˆʾ */
    public abstract void mo5308(Typeface typeface);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m5498(int i) {
        new Handler(Looper.getMainLooper()).post(new RunnableC1663(i, 1, this));
    }
}
