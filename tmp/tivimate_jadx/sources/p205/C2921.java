package p205;

import com.google.android.gms.internal.play_billing.י;
import java.util.Arrays;
import p317.AbstractC3914;

/* renamed from: ˎᴵ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2921 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f11044;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f11045;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f11046;

    public C2921(String str, String str2, String str3) {
        this.f11045 = str2;
        this.f11046 = str;
        this.f11044 = m6448(str3);
    }

    public C2921(C2921 c2921, String str) {
        this.f11046 = c2921.f11046;
        if (!י.ـˆ(c2921.f11045)) {
            throw new IllegalArgumentException("Can only make child SmbPath of fully specified SmbPath");
        }
        this.f11045 = c2921.f11045;
        if (!י.ـˆ(c2921.f11044)) {
            this.f11044 = m6448(str);
            return;
        }
        this.f11044 = c2921.f11044 + "\\" + m6448(str);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m6448(String str) {
        return י.ـˆ(str) ? str.replace('/', '\\') : str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2921.class == obj.getClass()) {
            C2921 c2921 = (C2921) obj;
            if (AbstractC3914.m8090(this.f11046, c2921.f11046) && AbstractC3914.m8090(this.f11045, c2921.f11045) && AbstractC3914.m8090(this.f11044, c2921.f11044)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f11046, this.f11045, this.f11044});
    }

    public final String toString() {
        return m6449();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String m6449() {
        StringBuilder sb = new StringBuilder("\\\\");
        sb.append(this.f11046);
        String str = this.f11045;
        if (str != null && !str.isEmpty()) {
            if (str.charAt(0) != '\\') {
                sb.append("\\");
            }
            sb.append(str);
            String str2 = this.f11044;
            if (י.ـˆ(str2)) {
                sb.append("\\");
                sb.append(str2);
            }
        }
        return sb.toString();
    }
}
