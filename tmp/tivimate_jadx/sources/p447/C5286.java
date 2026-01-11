package p447;

import android.os.Bundle;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import p010.AbstractC0844;
import p137.AbstractC2305;
import p296.AbstractC3659;

/* renamed from: ﹶﾞ.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5286 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5317 f19943;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final AtomicReference f19942 = new AtomicReference();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final AtomicReference f19940 = new AtomicReference();

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final AtomicReference f19941 = new AtomicReference();

    public C5286(C5317 c5317) {
        this.f19943 = c5317;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final String m10468(String str, String[] strArr, String[] strArr2, AtomicReference atomicReference) {
        String str2;
        AbstractC3659.m7687(atomicReference);
        AbstractC3659.m7686(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (Objects.equals(str, strArr[i])) {
                synchronized (atomicReference) {
                    try {
                        String[] strArr3 = (String[]) atomicReference.get();
                        if (strArr3 == null) {
                            strArr3 = new String[strArr2.length];
                            atomicReference.set(strArr3);
                        }
                        str2 = strArr3[i];
                        if (str2 == null) {
                            str2 = strArr2[i] + "(" + strArr[i] + ")";
                            strArr3[i] = str2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String m10469(String str) {
        if (str == null) {
            return null;
        }
        return !this.f19943.m10554() ? str : str.startsWith("_exp_") ? AbstractC2305.m5378("experiment_id(", str, ")") : m10468(str, AbstractC5218.f19628, AbstractC5218.f19626, f19941);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String m10470(C5279 c5279) {
        C5317 c5317 = this.f19943;
        if (!c5317.m10554()) {
            return c5279.toString();
        }
        StringBuilder sb = new StringBuilder("origin=");
        sb.append(c5279.f19911);
        sb.append(",name=");
        sb.append(m10473(c5279.f19912));
        sb.append(",params=");
        C5294 c5294 = c5279.f19914;
        sb.append(c5294 == null ? null : !c5317.m10554() ? c5294.f19968.toString() : m10471(c5294.m10488()));
        return sb.toString();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String m10471(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!this.f19943.m10554()) {
            return bundle.toString();
        }
        StringBuilder m3020 = AbstractC0844.m3020("Bundle[{");
        for (String str : bundle.keySet()) {
            if (m3020.length() != 8) {
                m3020.append(", ");
            }
            m3020.append(m10472(str));
            m3020.append("=");
            Object obj = bundle.get(str);
            m3020.append(obj instanceof Bundle ? m10474(new Object[]{obj}) : obj instanceof Object[] ? m10474((Object[]) obj) : obj instanceof ArrayList ? m10474(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        m3020.append("}]");
        return m3020.toString();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String m10472(String str) {
        if (str == null) {
            return null;
        }
        return !this.f19943.m10554() ? str : m10468(str, AbstractC5218.f19636, AbstractC5218.f19630, f19940);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String m10473(String str) {
        if (str == null) {
            return null;
        }
        return !this.f19943.m10554() ? str : m10468(str, AbstractC5218.f19627, AbstractC5218.f19635, f19942);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String m10474(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder m3020 = AbstractC0844.m3020("[");
        for (Object obj : objArr) {
            String m10471 = obj instanceof Bundle ? m10471((Bundle) obj) : String.valueOf(obj);
            if (m10471 != null) {
                if (m3020.length() != 1) {
                    m3020.append(", ");
                }
                m3020.append(m10471);
            }
        }
        m3020.append("]");
        return m3020.toString();
    }
}
