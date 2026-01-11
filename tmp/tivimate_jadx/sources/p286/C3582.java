package p286;

import java.util.Locale;
import p152.AbstractC2444;
import p435.AbstractC5143;
import p435.AbstractC5148;

/* renamed from: ٴˑ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3582 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f13987;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f13988;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f13989;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f13990;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f13991;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f13992;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f13993;

    public C3582(int i, int i2, String str, String str2, String str3, boolean z) {
        this.f13992 = str;
        this.f13991 = str2;
        this.f13987 = z;
        this.f13988 = i;
        this.f13989 = str3;
        this.f13993 = i2;
        String upperCase = str2.toUpperCase(Locale.ROOT);
        this.f13990 = AbstractC5143.m10116(upperCase, "INT", false) ? 3 : (AbstractC5143.m10116(upperCase, "CHAR", false) || AbstractC5143.m10116(upperCase, "CLOB", false) || AbstractC5143.m10116(upperCase, "TEXT", false)) ? 2 : AbstractC5143.m10116(upperCase, "BLOB", false) ? 5 : (AbstractC5143.m10116(upperCase, "REAL", false) || AbstractC5143.m10116(upperCase, "FLOA", false) || AbstractC5143.m10116(upperCase, "DOUB", false)) ? 4 : 1;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof C3582) {
                boolean z = this.f13988 > 0;
                C3582 c3582 = (C3582) obj;
                int i = c3582.f13993;
                if (z == (c3582.f13988 > 0) && AbstractC2444.m5562(this.f13992, c3582.f13992) && this.f13987 == c3582.f13987) {
                    String str = c3582.f13989;
                    int i2 = this.f13993;
                    String str2 = this.f13989;
                    if ((i2 != 1 || i != 2 || str2 == null || AbstractC3586.m7532(str2, str)) && ((i2 != 2 || i != 1 || str == null || AbstractC3586.m7532(str, str2)) && ((i2 == 0 || i2 != i || (str2 == null ? str == null : AbstractC3586.m7532(str2, str))) && this.f13990 == c3582.f13990))) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (((((this.f13992.hashCode() * 31) + this.f13990) * 31) + (this.f13987 ? 1231 : 1237)) * 31) + this.f13988;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n            |Column {\n            |   name = '");
        sb.append(this.f13992);
        sb.append("',\n            |   type = '");
        sb.append(this.f13991);
        sb.append("',\n            |   affinity = '");
        sb.append(this.f13990);
        sb.append("',\n            |   notNull = '");
        sb.append(this.f13987);
        sb.append("',\n            |   primaryKeyPosition = '");
        sb.append(this.f13988);
        sb.append("',\n            |   defaultValue = '");
        String str = this.f13989;
        if (str == null) {
            str = "undefined";
        }
        sb.append(str);
        sb.append("'\n            |}\n        ");
        return AbstractC5148.m10141(AbstractC5148.m10143(sb.toString()));
    }
}
