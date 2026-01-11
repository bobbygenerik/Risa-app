package p254;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p002.C0767;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p305.AbstractC3715;
import p305.C3732;

/* renamed from: יי.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3351 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final List f13109;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f13110;

    public C3351() {
        this.f13110 = 1;
        this.f13109 = Collections.singletonList(null);
    }

    public C3351(int i, List list) {
        this.f13110 = i;
        this.f13109 = list;
    }

    public C3351(ArrayList arrayList) {
        this.f13110 = 0;
        this.f13109 = arrayList;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean m7166(int i) {
        return (i & this.f13110) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public List m7167(C0767 c0767) {
        String str;
        int i;
        List list;
        boolean m7166 = m7166(32);
        List list2 = this.f13109;
        if (!m7166) {
            try {
                C3732 c3732 = new C3732((byte[]) c0767.f3163);
                ?? r13 = list2;
                while (c3732.m7904() > 0) {
                    int m7874 = c3732.m7874();
                    int m78742 = c3732.f14533 + c3732.m7874();
                    if (m7874 == 134) {
                        r13 = new ArrayList();
                        int m78743 = c3732.m7874() & 31;
                        for (int i2 = 0; i2 < m78743; i2++) {
                            String m7890 = c3732.m7890(3, StandardCharsets.UTF_8);
                            int m78744 = c3732.m7874();
                            boolean z = (m78744 & 128) != 0;
                            if (z) {
                                str = "application/cea-708";
                                i = m78744 & 63;
                            } else {
                                str = "application/cea-608";
                                i = 1;
                            }
                            byte m78745 = (byte) c3732.m7874();
                            c3732.m7900(1);
                            if (z) {
                                boolean z2 = (m78745 & 64) != 0;
                                byte[] bArr = AbstractC3715.f14490;
                                list = Collections.singletonList(z2 ? new byte[]{1} : new byte[]{0});
                            } else {
                                list = null;
                            }
                            C1490 c1490 = new C1490();
                            c1490.f5861 = AbstractC1464.m4251(str);
                            c1490.f5859 = m7890;
                            c1490.f5869 = i;
                            c1490.f5851 = list;
                            r13.add(new C1495(c1490));
                        }
                    }
                    c3732.m7896(m78742);
                    r13 = r13;
                }
                return r13;
            } catch (Exception unused) {
                return list2;
            }
        }
        return list2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0033. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:26:0x0036. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0061  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p254.InterfaceC3333 m7168(int r6, p002.C0767 r7) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p254.C3351.m7168(int, ʻʽ.ʼˎ):יי.ˉٴ");
    }
}
