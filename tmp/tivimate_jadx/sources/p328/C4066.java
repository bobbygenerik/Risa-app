package p328;

import android.util.Property;
import java.lang.reflect.Method;
import java.util.HashMap;

/* renamed from: ᴵᵔ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4066 implements Cloneable {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static final Class[] f15470;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static final HashMap f15471;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static final Class[] f15472;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static final Class[] f15473;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static final HashMap f15474;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Method f15475;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public String f15476;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Method f15477;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public InterfaceC4062 f15478;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C4070 f15479;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public float f15480;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Object[] f15481;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Property f15482;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Class f15483;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C4070 f15484;

    static {
        Class cls = Float.TYPE;
        Class cls2 = Double.TYPE;
        Class cls3 = Integer.TYPE;
        f15472 = new Class[]{cls, Float.class, cls2, cls3, Double.class, Integer.class};
        f15473 = new Class[]{cls3, Integer.class, cls, cls2, Float.class, Double.class};
        f15470 = new Class[]{cls2, Double.class, cls, cls3, Float.class, Integer.class};
        f15474 = new HashMap();
        f15471 = new HashMap();
    }

    public C4066(Property property, float... fArr) {
        this.f15475 = null;
        this.f15477 = null;
        this.f15479 = null;
        this.f15481 = new Object[1];
        this.f15482 = property;
        if (property != null) {
            this.f15476 = property.getName();
        }
        m8274(fArr);
    }

    public C4066(String str, float... fArr) {
        this.f15475 = null;
        this.f15477 = null;
        this.f15479 = null;
        this.f15481 = new Object[1];
        this.f15476 = str;
        m8274(fArr);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String m8272(String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            return str;
        }
        return str + Character.toUpperCase(str2.charAt(0)) + str2.substring(1);
    }

    public final String toString() {
        return this.f15476 + ": " + this.f15479.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˈ, reason: contains not printable characters */
    public final Method m8273(Class cls, String str, Class cls2) {
        String m8272 = m8272(str, this.f15476);
        Method method = null;
        if (cls2 == null) {
            try {
                method = cls.getMethod(m8272, null);
            } catch (NoSuchMethodException unused) {
            }
        } else {
            for (Class cls3 : cls2.equals(Float.class) ? f15472 : cls2.equals(Integer.class) ? f15473 : cls2.equals(Double.class) ? f15470 : new Class[]{cls2}) {
                Class[] clsArr = {cls3};
                try {
                    try {
                        Method method2 = cls.getMethod(m8272, clsArr);
                        this.f15483 = cls3;
                        return method2;
                    } catch (NoSuchMethodException unused2) {
                    }
                } catch (NoSuchMethodException unused3) {
                    method = cls.getDeclaredMethod(m8272, clsArr);
                    method.setAccessible(true);
                    this.f15483 = cls3;
                    return method;
                }
            }
        }
        if (method == null) {
            String str2 = "Method " + m8272(str, this.f15476) + "() with type " + cls2 + " not found on target class " + cls;
        }
        return method;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m8274(float... fArr) {
        this.f15483 = Float.TYPE;
        int length = fArr.length;
        C4079[] c4079Arr = new C4079[Math.max(length, 2)];
        boolean z = false;
        if (length == 1) {
            c4079Arr[0] = new C4079(0.0f);
            float f = fArr[0];
            c4079Arr[1] = new C4079(1.0f, f);
            if (Float.isNaN(f)) {
                z = true;
            }
        } else {
            c4079Arr[0] = new C4079(0.0f, fArr[0]);
            for (int i = 1; i < length; i++) {
                float f2 = fArr[i];
                c4079Arr[i] = new C4079(i / (length - 1), f2);
                if (Float.isNaN(f2)) {
                    z = true;
                }
            }
        }
        if (z) {
        }
        C4070 c4070 = new C4070(c4079Arr);
        this.f15479 = c4070;
        this.f15484 = c4070;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C4066 clone() {
        C4066 c4066;
        try {
            c4066 = (C4066) super.clone();
            c4066.f15476 = this.f15476;
            c4066.f15482 = this.f15482;
            c4066.f15479 = this.f15479.clone();
            c4066.f15478 = this.f15478;
        } catch (CloneNotSupportedException unused) {
            c4066 = null;
        }
        c4066.f15484 = c4066.f15479;
        return c4066;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Method m8276(Class cls, HashMap hashMap, String str, Class cls2) {
        Method method;
        boolean z;
        synchronized (hashMap) {
            try {
                HashMap hashMap2 = (HashMap) hashMap.get(cls);
                method = null;
                if (hashMap2 != null) {
                    z = hashMap2.containsKey(this.f15476);
                    if (z) {
                        method = (Method) hashMap2.get(this.f15476);
                    }
                } else {
                    z = false;
                }
                if (!z) {
                    method = m8273(cls, str, cls2);
                    if (hashMap2 == null) {
                        hashMap2 = new HashMap();
                        hashMap.put(cls, hashMap2);
                    }
                    hashMap2.put(this.f15476, method);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return method;
    }
}
