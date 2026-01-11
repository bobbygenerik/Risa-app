package p322;

/* renamed from: ᴵˋ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3965 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static volatile C3965 f15285;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Object f15286 = new Object();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f15287;

    public C3965(int i) {
        this.f15287 = i;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C3965 m8127() {
        C3965 c3965;
        synchronized (f15286) {
            try {
                if (f15285 == null) {
                    f15285 = new C3965(3);
                }
                c3965 = f15285;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c3965;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static String m8128(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        if (length >= 20) {
            sb.append(str.substring(0, 20));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8129(String str, String str2) {
        if (this.f15287 <= 6) {
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m8130(String str, String str2, Throwable th) {
        if (this.f15287 <= 6) {
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m8131(String str, String str2) {
        if (this.f15287 <= 5) {
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8132(String str, String str2, Throwable th) {
        if (this.f15287 <= 3) {
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8133(String str, String str2) {
        if (this.f15287 <= 3) {
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m8134(String str, String str2) {
        if (this.f15287 <= 4) {
        }
    }
}
