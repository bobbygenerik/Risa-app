package p001;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import p012.C0881;
import p055.C1476;
import p102.C1909;
import p112.C1962;
import p305.C3732;
import ˈˋ.ʾˊ;

/* renamed from: ʻʼ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0765 extends ʾˊ {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f3152;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static C0766 m2788(C3732 c3732) {
        String m7888 = c3732.m7888();
        m7888.getClass();
        String m78882 = c3732.m7888();
        m78882.getClass();
        return new C0766(m7888, m78882, c3732.m7889(), c3732.m7889(), Arrays.copyOfRange(c3732.f14534, c3732.f14533, c3732.f14532));
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C1476 m2789(C1962 c1962, ByteBuffer byteBuffer) {
        switch (this.f3152) {
            case 0:
                return new C1476(m2788(new C3732(byteBuffer.limit(), byteBuffer.array())));
            default:
                if (byteBuffer.get() != 116) {
                    return null;
                }
                C0881 c0881 = new C0881(byteBuffer.limit(), byteBuffer.array());
                int i = 12;
                c0881.m3095(12);
                int m3106 = (c0881.m3106() + c0881.m3097(12)) - 4;
                c0881.m3095(44);
                c0881.m3090(c0881.m3097(12));
                c0881.m3095(16);
                ArrayList arrayList = new ArrayList();
                while (c0881.m3106() < m3106) {
                    c0881.m3095(48);
                    int m3097 = c0881.m3097(8);
                    c0881.m3095(4);
                    int m31062 = c0881.m3106() + c0881.m3097(i);
                    String str = null;
                    String str2 = null;
                    while (c0881.m3106() < m31062) {
                        int m30972 = c0881.m3097(8);
                        int m30973 = c0881.m3097(8);
                        int m31063 = c0881.m3106() + m30973;
                        if (m30972 == 2) {
                            int m30974 = c0881.m3097(16);
                            c0881.m3095(8);
                            if (m30974 == 3) {
                                while (c0881.m3106() < m31063) {
                                    int m30975 = c0881.m3097(8);
                                    Charset charset = StandardCharsets.US_ASCII;
                                    byte[] bArr = new byte[m30975];
                                    c0881.m3092(m30975, bArr);
                                    String str3 = new String(bArr, charset);
                                    int m30976 = c0881.m3097(8);
                                    for (int i2 = 0; i2 < m30976; i2++) {
                                        c0881.m3090(c0881.m3097(8));
                                    }
                                    str = str3;
                                }
                            }
                        } else if (m30972 == 21) {
                            Charset charset2 = StandardCharsets.US_ASCII;
                            byte[] bArr2 = new byte[m30973];
                            c0881.m3092(m30973, bArr2);
                            str2 = new String(bArr2, charset2);
                        }
                        c0881.m3094(m31063 * 8);
                    }
                    c0881.m3094(m31062 * 8);
                    if (str != null && str2 != null) {
                        arrayList.add(new C1909(m3097, str.concat(str2)));
                    }
                    i = 12;
                }
                if (arrayList.isEmpty()) {
                    return null;
                }
                return new C1476(arrayList);
        }
    }
}
