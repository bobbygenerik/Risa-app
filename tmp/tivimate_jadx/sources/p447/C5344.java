package p447;

import android.text.TextUtils;
import android.util.Log;
import p296.AbstractC3659;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ﹳـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5344 extends AbstractC5276 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public char f20339;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final C5221 f20340;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public long f20341;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C5221 f20342;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C5221 f20343;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C5221 f20344;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C5221 f20345;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public String f20346;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C5221 f20347;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C5221 f20348;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C5221 f20349;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final C5221 f20350;

    public C5344(C5322 c5322) {
        super(c5322);
        this.f20339 = (char) 0;
        this.f20341 = -1L;
        this.f20343 = new C5221(this, 6, false, false);
        this.f20345 = new C5221(this, 6, true, false);
        this.f20342 = new C5221(this, 6, false, true);
        this.f20348 = new C5221(this, 5, false, false);
        this.f20344 = new C5221(this, 5, true, false);
        this.f20347 = new C5221(this, 5, false, true);
        this.f20349 = new C5221(this, 4, false, false);
        this.f20340 = new C5221(this, 3, false, false);
        this.f20350 = new C5221(this, 2, false, false);
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public static C5300 m10722(String str) {
        if (str == null) {
            return null;
        }
        return new C5300(str);
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public static String m10723(Object obj, boolean z) {
        int lastIndexOf;
        String className;
        int lastIndexOf2;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            if (!z) {
                return obj.toString();
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return obj.toString();
            }
            char charAt = obj.toString().charAt(0);
            String valueOf = String.valueOf(Math.abs(l.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            int length = String.valueOf(round).length();
            String str = charAt == '-' ? "-" : "";
            StringBuilder sb = new StringBuilder(str.length() + str.length() + length + 3 + String.valueOf(round2).length());
            sb.append(str);
            sb.append(round);
            sb.append("...");
            sb.append(str);
            sb.append(round2);
            return sb.toString();
        }
        if (obj instanceof Boolean) {
            return obj.toString();
        }
        if (!(obj instanceof Throwable)) {
            return obj instanceof C5300 ? ((C5300) obj).f19981 : z ? "-" : obj.toString();
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
        String canonicalName = C5322.class.getCanonicalName();
        String substring = (TextUtils.isEmpty(canonicalName) || (lastIndexOf = canonicalName.lastIndexOf(46)) == -1) ? "" : canonicalName.substring(0, lastIndexOf);
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length2 = stackTrace.length;
        int i = 0;
        while (true) {
            if (i >= length2) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i];
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null) {
                if (((TextUtils.isEmpty(className) || (lastIndexOf2 = className.lastIndexOf(46)) == -1) ? "" : className.substring(0, lastIndexOf2)).equals(substring)) {
                    sb2.append(": ");
                    sb2.append(stackTraceElement);
                    break;
                }
            }
            i++;
        }
        return sb2.toString();
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public static String m10724(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String m10723 = m10723(obj, z);
        String m107232 = m10723(obj2, z);
        String m107233 = m10723(obj3, z);
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (str == null) {
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(m10723)) {
            sb.append(str2);
            sb.append(m10723);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(m107232)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(m107232);
        }
        if (!TextUtils.isEmpty(m107233)) {
            sb.append(str3);
            sb.append(m107233);
        }
        return sb.toString();
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final C5221 m10725() {
        return this.f20343;
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final C5221 m10726() {
        return this.f20350;
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public final String m10727() {
        String str;
        synchronized (this) {
            try {
                if (this.f20346 == null) {
                    ((C5322) ((ᵎﹶ) ((C5322) ((ᵎﹶ) this).ʾˋ).f20189).ʾˋ).getClass();
                    this.f20346 = "FA";
                }
                AbstractC3659.m7687(this.f20346);
                str = this.f20346;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final void m10728(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && Log.isLoggable(m10727(), i)) {
            m10724(false, str, obj, obj2, obj3);
            m10727();
        }
        if (z2 || i < 5) {
            return;
        }
        AbstractC3659.m7687(str);
        C5215 c5215 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20200;
        if (c5215 == null) {
            m10727();
        } else {
            if (!c5215.f19908) {
                m10727();
                return;
            }
            if (i >= 9) {
                i = 8;
            }
            c5215.m10200(new RunnableC5263(this, i, str, obj, obj2, obj3));
        }
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final C5221 m10729() {
        return this.f20348;
    }

    @Override // p447.AbstractC5276
    /* renamed from: ﹶˎ */
    public final boolean mo10205() {
        return false;
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final C5221 m10730() {
        return this.f20340;
    }
}
