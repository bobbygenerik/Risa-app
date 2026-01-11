package p360;

import android.util.Base64;
import java.util.List;

/* renamed from: ᵔٴ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4366 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f16205;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final List f16206;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f16207;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String f16208;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f16209;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f16210;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f16211;

    public C4366(String str, String str2, String str3, List list, String str4, String str5) {
        str.getClass();
        this.f16210 = str;
        str2.getClass();
        this.f16209 = str2;
        this.f16205 = str3;
        list.getClass();
        this.f16206 = list;
        this.f16207 = str4;
        this.f16211 = str5;
        this.f16208 = str + "-" + str2 + "-" + str3 + "-" + str4 + "-" + str5;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f16210 + ", mProviderPackage: " + this.f16209 + ", mQuery: " + this.f16205 + ", mSystemFont: " + this.f16207 + ", mVariationSettings: " + this.f16211 + ", mCertificates:");
        int i = 0;
        while (true) {
            List list = this.f16206;
            if (i >= list.size()) {
                sb.append("}mCertificatesArray: 0");
                return sb.toString();
            }
            sb.append(" [");
            List list2 = (List) list.get(i);
            for (int i2 = 0; i2 < list2.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString((byte[]) list2.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
            i++;
        }
    }
}
