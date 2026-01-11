package p121;

import ﹳٴ.ﹳٴ;

/* renamed from: ˈˊ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2022 extends ﹳٴ {
    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m5020(AbstractC2021 abstractC2021, C2032 c2032, C2032 c20322) {
        synchronized (abstractC2021) {
            try {
                if (abstractC2021.f7920 != c2032) {
                    return false;
                }
                abstractC2021.f7920 = c20322;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final C2032 m5021(AbstractC2021 abstractC2021) {
        C2032 c2032;
        C2032 c20322 = C2032.f7944;
        synchronized (abstractC2021) {
            try {
                c2032 = abstractC2021.f7920;
                if (c2032 != c20322) {
                    abstractC2021.f7920 = c20322;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2032;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m5022(C2032 c2032, Thread thread) {
        c2032.f7946 = thread;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final C2018 m5023(AbstractC2021 abstractC2021) {
        C2018 c2018;
        C2018 c20182 = C2018.f7907;
        synchronized (abstractC2021) {
            try {
                c2018 = abstractC2021.f7922;
                if (c2018 != c20182) {
                    abstractC2021.f7922 = c20182;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2018;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m5024(C2032 c2032, C2032 c20322) {
        c2032.f7945 = c20322;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m5025(AbstractC2021 abstractC2021, Object obj, Object obj2) {
        synchronized (abstractC2021) {
            try {
                if (abstractC2021.f7921 != obj) {
                    return false;
                }
                abstractC2021.f7921 = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m5026(AbstractC2021 abstractC2021, C2018 c2018, C2018 c20182) {
        synchronized (abstractC2021) {
            try {
                if (abstractC2021.f7922 != c2018) {
                    return false;
                }
                abstractC2021.f7922 = c20182;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
