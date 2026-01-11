package p349;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import p143.C2388;
import p143.C2395;

/* renamed from: ᵎⁱ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4291 extends C4294 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final Method f15880;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final Method f15881;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final Method f15882;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final Constructor f15883;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final Class f15884;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final Method f15885;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final Method f15886;

    public C4291() {
        Method method;
        Constructor<?> constructor;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(null);
            method2 = m8685(cls2);
            Class<?> cls3 = Integer.TYPE;
            method3 = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, cls3, FontVariationAxis[].class, cls3, cls3);
            method4 = cls2.getMethod("freeze", null);
            method5 = cls2.getMethod("abortCreation", null);
            method = mo8664(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            "Unable to collect necessary methods for class ".concat(e.getClass().getName());
            method = null;
            constructor = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.f15884 = cls;
        this.f15883 = constructor;
        this.f15882 = method2;
        this.f15880 = method3;
        this.f15885 = method4;
        this.f15886 = method5;
        this.f15881 = method;
    }

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public static Method m8685(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    /* renamed from: ʻᵎ */
    public Typeface mo8663(Object obj) {
        try {
            Object newInstance = Array.newInstance((Class<?>) this.f15884, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f15881.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // p349.C4294
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Typeface mo8686(Context context, C2388 c2388, Resources resources, int i) {
        Object obj;
        Method method = this.f15882;
        if (method == null) {
        }
        if (method == null) {
            return super.mo8686(context, c2388, resources, i);
        }
        try {
            obj = this.f15883.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj != null) {
            C2395[] c2395Arr = c2388.f9216;
            int length = c2395Arr.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    C2395 c2395 = c2395Arr[i2];
                    Context context2 = context;
                    if (m8689(context2, obj, c2395.f9255, c2395.f9253, c2395.f9254, c2395.f9251 ? 1 : 0, FontVariationAxis.fromFontVariationSettings(c2395.f9252))) {
                        i2++;
                        context = context2;
                    } else {
                        try {
                            this.f15886.invoke(obj, null);
                            break;
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                        }
                    }
                } else if (m8687(obj)) {
                    return mo8663(obj);
                }
            }
        }
        return null;
    }

    /* renamed from: ˈˏ */
    public Method mo8664(Class cls) {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final boolean m8687(Object obj) {
        try {
            return ((Boolean) this.f15885.invoke(obj, null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009c A[SYNTHETIC] */
    @Override // p349.C4294
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Typeface mo8688(android.content.Context r18, p360.C4369[] r19, int r20) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p349.C4291.mo8688(android.content.Context, ᵔٴ.ᵔᵢ[], int):android.graphics.Typeface");
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final boolean m8689(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f15882.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final Typeface m8690(Context context, Resources resources, int i, String str, int i2) {
        Object obj;
        Method method = this.f15882;
        if (method == null) {
        }
        if (method == null) {
            return super.ᵔʾ(context, resources, i, str, i2);
        }
        try {
            obj = this.f15883.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj != null) {
            if (!m8689(context, obj, str, 0, -1, -1, null)) {
                try {
                    this.f15886.invoke(obj, null);
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                }
            } else if (m8687(obj)) {
                return mo8663(obj);
            }
        }
        return null;
    }
}
