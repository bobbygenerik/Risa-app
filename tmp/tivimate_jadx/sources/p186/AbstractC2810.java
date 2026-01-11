package p186;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import j$.util.Objects;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import p028.AbstractC1116;
import p349.C4292;
import ˉᵎ.ⁱˊ;

/* renamed from: ˋᵔ.ـﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2810 extends C2822 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static boolean f10571;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static Method f10572;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static Field f10573;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static Class f10574;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static Field f10575;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final WindowInsets f10576;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C4292[] f10577;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C4292 f10578;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C4292 f10579;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f10580;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C2816 f10581;

    public AbstractC2810(C2816 c2816, WindowInsets windowInsets) {
        super(c2816);
        this.f10578 = null;
        this.f10576 = windowInsets;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    private C4292 m6236() {
        C2816 c2816 = this.f10581;
        return c2816 != null ? c2816.f10589.mo6194() : C4292.f15887;
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    private static void m6237() {
        try {
            f10572 = View.class.getDeclaredMethod("getViewRootImpl", null);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            f10574 = cls;
            f10575 = cls.getDeclaredField("mVisibleInsets");
            f10573 = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            f10575.setAccessible(true);
            f10573.setAccessible(true);
        } catch (ReflectiveOperationException e) {
            String str = "Failed to get visible insets. (Reflection error). " + e.getMessage();
        }
        f10571 = true;
    }

    @SuppressLint({"WrongConstant"})
    /* renamed from: ˏי, reason: contains not printable characters */
    private C4292 m6238(int i, boolean z) {
        C4292 c4292 = C4292.f15887;
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            if ((i & i2) != 0) {
                c4292 = C4292.m8694(c4292, m6243(i2, z));
            }
        }
        return c4292;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    private C4292 m6239(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }
        if (!f10571) {
            m6237();
        }
        Method method = f10572;
        if (method != null && f10574 != null && f10575 != null) {
            try {
                Object invoke = method.invoke(view, null);
                if (invoke == null) {
                    new NullPointerException();
                    return null;
                }
                Rect rect = (Rect) f10575.get(f10573.get(invoke));
                if (rect != null) {
                    return C4292.m8691(rect.left, rect.top, rect.right, rect.bottom);
                }
            } catch (ReflectiveOperationException e) {
                String str = "Failed to get visible insets. (Reflection error). " + e.getMessage();
            }
        }
        return null;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static boolean m6240(int i, int i2) {
        return (i & 6) == (i2 & 6);
    }

    @Override // p186.C2822
    public boolean equals(Object obj) {
        if (!super.equals(obj)) {
            return false;
        }
        AbstractC2810 abstractC2810 = (AbstractC2810) obj;
        return Objects.equals(this.f10579, abstractC2810.f10579) && m6240(this.f10580, abstractC2810.f10580);
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public void m6241(C4292 c4292) {
        this.f10579 = c4292;
    }

    @Override // p186.C2822
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public void mo6242(C4292[] c4292Arr) {
        this.f10577 = c4292Arr;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public C4292 m6243(int i, boolean z) {
        C4292 mo6194;
        int i2;
        C4292 c4292 = C4292.f15887;
        if (i != 1) {
            if (i != 2) {
                if (i == 8) {
                    C4292[] c4292Arr = this.f10577;
                    mo6194 = c4292Arr != null ? c4292Arr[ⁱˊ.ʽʽ(8)] : null;
                    if (mo6194 != null) {
                        return mo6194;
                    }
                    C4292 mo6247 = mo6247();
                    C4292 m6236 = m6236();
                    int i3 = mo6247.f15889;
                    if (i3 > m6236.f15889) {
                        return C4292.m8691(0, 0, 0, i3);
                    }
                    C4292 c42922 = this.f10579;
                    if (c42922 != null && !c42922.equals(c4292) && (i2 = this.f10579.f15889) > m6236.f15889) {
                        return C4292.m8691(0, 0, 0, i2);
                    }
                } else {
                    if (i == 16) {
                        return mo6264();
                    }
                    if (i == 32) {
                        return mo6266();
                    }
                    if (i == 64) {
                        return mo6268();
                    }
                    if (i == 128) {
                        C2816 c2816 = this.f10581;
                        C2784 mo6265 = c2816 != null ? c2816.f10589.mo6265() : mo6265();
                        if (mo6265 != null) {
                            int i4 = Build.VERSION.SDK_INT;
                            return C4292.m8691(i4 >= 28 ? AbstractC1116.m3539(mo6265.f10542) : 0, i4 >= 28 ? AbstractC1116.m3531(mo6265.f10542) : 0, i4 >= 28 ? AbstractC1116.m3528(mo6265.f10542) : 0, i4 >= 28 ? AbstractC1116.m3537(mo6265.f10542) : 0);
                        }
                    }
                }
            } else {
                if (z) {
                    C4292 m62362 = m6236();
                    C4292 mo61942 = mo6194();
                    return C4292.m8691(Math.max(m62362.f15891, mo61942.f15891), 0, Math.max(m62362.f15888, mo61942.f15888), Math.max(m62362.f15889, mo61942.f15889));
                }
                if ((this.f10580 & 2) == 0) {
                    C4292 mo62472 = mo6247();
                    C2816 c28162 = this.f10581;
                    mo6194 = c28162 != null ? c28162.f10589.mo6194() : null;
                    int i5 = mo62472.f15889;
                    if (mo6194 != null) {
                        i5 = Math.min(i5, mo6194.f15889);
                    }
                    return C4292.m8691(mo62472.f15891, 0, mo62472.f15888, i5);
                }
            }
        } else {
            if (z) {
                return C4292.m8691(0, Math.max(m6236().f15890, mo6247().f15890), 0, 0);
            }
            if ((this.f10580 & 4) == 0) {
                return C4292.m8691(0, mo6247().f15890, 0, 0);
            }
        }
        return c4292;
    }

    @Override // p186.C2822
    /* renamed from: ˈ */
    public void mo6165(View view) {
        C4292 m6239 = m6239(view);
        if (m6239 == null) {
            m6239 = C4292.f15887;
        }
        m6241(m6239);
    }

    @Override // p186.C2822
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C2816 mo6244(int i, int i2, int i3, int i4) {
        C2816 m6253 = C2816.m6253(null, this.f10576);
        int i5 = Build.VERSION.SDK_INT;
        AbstractC2797 c2769 = i5 >= 34 ? new C2769(m6253) : i5 >= 31 ? new C2818(m6253) : i5 >= 30 ? new C2800(m6253) : i5 >= 29 ? new C2815(m6253) : new C2824(m6253);
        c2769.mo6221(C2816.m6252(mo6247(), i, i2, i3, i4));
        c2769.mo6220(C2816.m6252(mo6194(), i, i2, i3, i4));
        return c2769.mo6223();
    }

    @Override // p186.C2822
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public boolean mo6245() {
        return this.f10576.isRound();
    }

    @Override // p186.C2822
    /* renamed from: יـ, reason: contains not printable characters */
    public void mo6246(int i) {
        this.f10580 = i;
    }

    @Override // p186.C2822
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C4292 mo6247() {
        if (this.f10578 == null) {
            WindowInsets windowInsets = this.f10576;
            this.f10578 = C4292.m8691(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.f10578;
    }

    @Override // p186.C2822
    /* renamed from: ᵎﹶ */
    public C4292 mo6166(int i) {
        return m6238(i, true);
    }

    @Override // p186.C2822
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public void mo6248(C2816 c2816) {
        this.f10581 = c2816;
    }

    @Override // p186.C2822
    /* renamed from: ﾞᴵ */
    public C4292 mo6167(int i) {
        return m6238(i, false);
    }
}
