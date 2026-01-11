package p361;

import p035.AbstractC1220;
import p164.C2571;
import p394.AbstractC4712;
import p435.AbstractC5152;
import p435.AbstractC5154;

/* renamed from: ᵔᐧ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4398 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final String[] f16356;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final String[] f16357;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final String[] f16358;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2571 f16359;

    static {
        C2571 c2571 = new C2571("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n".getBytes(AbstractC5154.f19435));
        c2571.f9766 = "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n";
        f16359 = c2571;
        f16358 = new String[]{"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
        f16356 = new String[64];
        String[] strArr = new String[256];
        for (int i = 0; i < 256; i++) {
            strArr[i] = AbstractC4712.m9444("%8s", Integer.toBinaryString(i)).replace(' ', '0');
        }
        f16357 = strArr;
        String[] strArr2 = f16356;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i2 = iArr[0];
        strArr2[i2 | 8] = AbstractC1220.m3775(new StringBuilder(), strArr2[i2], "|PADDED");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i3 = 0; i3 < 3; i3++) {
            int i4 = iArr2[i3];
            int i5 = iArr[0];
            String[] strArr3 = f16356;
            int i6 = i5 | i4;
            strArr3[i6] = strArr3[i5] + '|' + strArr3[i4];
            StringBuilder sb = new StringBuilder();
            sb.append(strArr3[i5]);
            sb.append('|');
            strArr3[i6 | 8] = AbstractC1220.m3775(sb, strArr3[i4], "|PADDED");
        }
        int length = f16356.length;
        for (int i7 = 0; i7 < length; i7++) {
            String[] strArr4 = f16356;
            if (strArr4[i7] == null) {
                strArr4[i7] = f16357[i7];
            }
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static String m8897(int i, int i2, long j, boolean z) {
        return AbstractC4712.m9444("%s 0x%08x %5d %-13s %d", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), m8899(8), Long.valueOf(j));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String m8898(boolean z, int i, int i2, int i3, int i4) {
        String str;
        String m8899 = m8899(i3);
        if (i4 == 0) {
            str = "";
        } else {
            String[] strArr = f16357;
            if (i3 != 2 && i3 != 3) {
                if (i3 == 4 || i3 == 6) {
                    str = i4 == 1 ? "ACK" : strArr[i4];
                } else if (i3 != 7 && i3 != 8) {
                    String[] strArr2 = f16356;
                    String str2 = i4 < strArr2.length ? strArr2[i4] : strArr[i4];
                    str = (i3 != 5 || (i4 & 4) == 0) ? (i3 != 0 || (i4 & 32) == 0) ? str2 : AbstractC5152.m10146(str2, "PRIORITY", "COMPRESSED", false) : AbstractC5152.m10146(str2, "HEADERS", "PUSH_PROMISE", false);
                }
            }
            str = strArr[i4];
        }
        return AbstractC4712.m9444("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), m8899, str);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m8899(int i) {
        String[] strArr = f16358;
        return i < strArr.length ? strArr[i] : AbstractC4712.m9444("0x%02x", Integer.valueOf(i));
    }
}
