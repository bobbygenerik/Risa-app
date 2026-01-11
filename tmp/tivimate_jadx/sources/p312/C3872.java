package p312;

import android.content.res.Resources;
import android.text.TextUtils;
import ar.tvplayer.tv.R;
import p031.C1144;
import p055.AbstractC1464;
import p055.C1495;
import p080.InterfaceC1710;
import p366.C4465;
import p444.InterfaceC5202;

/* renamed from: ᐧⁱ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3872 implements InterfaceC3852, InterfaceC5202 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Resources f15093;

    public C3872(Resources resources, int i) {
        switch (i) {
            case 1:
                this.f15093 = resources;
                return;
            default:
                resources.getClass();
                this.f15093 = resources;
                return;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public String m8070(C1495 c1495) {
        String m8073;
        String str = c1495.f5930;
        int i = c1495.f5908;
        int i2 = c1495.f5916;
        int i3 = c1495.f5899;
        int i4 = c1495.f5905;
        String str2 = c1495.f5924;
        int m4250 = AbstractC1464.m4250(str);
        if (m4250 == -1) {
            if (AbstractC1464.m4253(str2) == null) {
                if (AbstractC1464.m4262(str2) == null) {
                    if (i4 == -1 && i3 == -1) {
                        if (i2 == -1 && c1495.f5923 == -1) {
                            m4250 = -1;
                        }
                    }
                }
                m4250 = 1;
            }
            m4250 = 2;
        }
        Resources resources = this.f15093;
        if (m4250 == 2) {
            m8073 = m8071(m8072(c1495), (i4 == -1 || i3 == -1) ? "" : resources.getString(R.string.1ts, Integer.valueOf(i4), Integer.valueOf(i3)), i != -1 ? resources.getString(R.string.741, Float.valueOf(i / 1000000.0f)) : "");
        } else if (m4250 == 1) {
            m8073 = m8071(m8073(c1495), (i2 == -1 || i2 < 1) ? "" : i2 != 1 ? i2 != 2 ? (i2 == 6 || i2 == 7) ? resources.getString(R.string.4im) : i2 != 8 ? resources.getString(R.string.4od) : resources.getString(R.string.1ru) : resources.getString(R.string.k9) : resources.getString(R.string.75s), i != -1 ? resources.getString(R.string.741, Float.valueOf(i / 1000000.0f)) : "");
        } else {
            m8073 = m8073(c1495);
        }
        if (!m8073.isEmpty()) {
            return m8073;
        }
        String str3 = c1495.f5910;
        return (str3 == null || str3.trim().isEmpty()) ? resources.getString(R.string.66e) : resources.getString(R.string.6vf, str3);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public String m8071(String... strArr) {
        String str = "";
        for (String str2 : strArr) {
            if (!str2.isEmpty()) {
                str = TextUtils.isEmpty(str) ? str2 : this.f15093.getString(R.string.27g, str, str2);
            }
        }
        return str;
    }

    @Override // p444.InterfaceC5202
    /* renamed from: ˑﹳ */
    public InterfaceC1710 mo3466(InterfaceC1710 interfaceC1710, C1144 c1144) {
        if (interfaceC1710 == null) {
            return null;
        }
        return new C4465(this.f15093, interfaceC1710);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String m8072(C1495 c1495) {
        int i = c1495.f5940;
        int i2 = c1495.f5940;
        int i3 = i & 2;
        Resources resources = this.f15093;
        String string = i3 != 0 ? resources.getString(R.string.3lm) : "";
        if ((i2 & 4) != 0) {
            string = m8071(string, resources.getString(R.string.1jj));
        }
        if ((i2 & 8) != 0) {
            string = m8071(string, resources.getString(R.string.6mp));
        }
        return (i2 & 1088) != 0 ? m8071(string, resources.getString(R.string.4vk)) : string;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m8073(p055.C1495 r8) {
        /*
            r7 = this;
            java.lang.String r0 = r8.f5910
            java.lang.String r1 = r8.f5936
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            java.lang.String r3 = ""
            if (r2 != 0) goto L27
            java.lang.String r2 = "und"
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L15
            goto L27
        L15:
            java.util.Locale r0 = java.util.Locale.forLanguageTag(r0)
            java.util.Locale r2 = p305.AbstractC3712.m7756()
            java.lang.String r0 = r0.getDisplayName(r2)
            boolean r4 = android.text.TextUtils.isEmpty(r0)
            if (r4 == 0) goto L29
        L27:
            r0 = r3
            goto L4a
        L29:
            r4 = 1
            r5 = 0
            int r4 = r0.offsetByCodePoints(r5, r4)     // Catch: java.lang.IndexOutOfBoundsException -> L4a
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.IndexOutOfBoundsException -> L4a
            r6.<init>()     // Catch: java.lang.IndexOutOfBoundsException -> L4a
            java.lang.String r5 = r0.substring(r5, r4)     // Catch: java.lang.IndexOutOfBoundsException -> L4a
            java.lang.String r2 = r5.toUpperCase(r2)     // Catch: java.lang.IndexOutOfBoundsException -> L4a
            r6.append(r2)     // Catch: java.lang.IndexOutOfBoundsException -> L4a
            java.lang.String r2 = r0.substring(r4)     // Catch: java.lang.IndexOutOfBoundsException -> L4a
            r6.append(r2)     // Catch: java.lang.IndexOutOfBoundsException -> L4a
            java.lang.String r0 = r6.toString()     // Catch: java.lang.IndexOutOfBoundsException -> L4a
        L4a:
            java.lang.String r8 = r7.m8072(r8)
            java.lang.String[] r8 = new java.lang.String[]{r0, r8}
            java.lang.String r8 = r7.m8071(r8)
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            if (r0 == 0) goto L64
            boolean r8 = android.text.TextUtils.isEmpty(r1)
            if (r8 == 0) goto L63
            r1 = r3
        L63:
            r8 = r1
        L64:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: p312.C3872.m8073(ʽⁱ.ﹳᐧ):java.lang.String");
    }
}
