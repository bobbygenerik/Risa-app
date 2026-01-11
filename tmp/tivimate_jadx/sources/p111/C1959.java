package p111;

import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.StringTokenizer;
import p125.C2131;
import p125.C2132;
import p125.C2133;
import p207.AbstractC2934;
import p223.C3056;
import p239.C3208;
import p239.C3209;
import p366.C4476;
import p450.C5361;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˆⁱ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1959 extends ᵎﹶ {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f7802;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1959(C4476 c4476, int i) {
        super(c4476);
        this.f7802 = i;
    }

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public static void m4945(C1957 c1957) {
        String str = c1957.f7800;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        byteArrayOutputStream.write((Integer.parseInt(stringTokenizer.nextToken()) * 40) + Integer.parseInt(stringTokenizer.nextToken()));
        while (stringTokenizer.hasMoreTokens()) {
            BigInteger bigInteger = new BigInteger(stringTokenizer.nextToken());
            if (bigInteger.intValue() <= 0 || bigInteger.intValue() >= 127) {
                for (int bitLength = ((bigInteger.bitLength() / 7) + (bigInteger.bitLength() % 7 > 0 ? 1 : 0)) - 1; bitLength >= 0; bitLength--) {
                    byte byteValue = (byte) (bigInteger.shiftRight(bitLength * 7).byteValue() & Byte.MAX_VALUE);
                    if (bitLength > 0) {
                        byteValue = (byte) (byteValue | 128);
                    }
                    byteArrayOutputStream.write(byteValue);
                }
            } else {
                byteArrayOutputStream.write(bigInteger.intValue());
            }
        }
        c1957.f7801 = byteArrayOutputStream.toByteArray();
    }

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public final void m4946(AbstractC2934 abstractC2934, C5361 c5361) {
        switch (this.f7802) {
            case 0:
                c5361.write(((C1954) abstractC2934).f7797 ? 1 : 0);
                return;
            case 1:
                C1955 c1955 = (C1955) abstractC2934;
                if (c1955.f7801 == null) {
                    c1955.f7801 = c1955.f7798.toByteArray();
                }
                c5361.write(c1955.f7801);
                return;
            case 2:
                c5361.write(((C1956) abstractC2934).f7801);
                return;
            case 3:
                return;
            case 4:
                C1957 c1957 = (C1957) abstractC2934;
                if (c1957.f7801 == null) {
                    m4945(c1957);
                }
                c5361.write(c1957.f7801);
                return;
            case 5:
                C2133 c2133 = (C2133) abstractC2934;
                byte[] bArr = c2133.f8322;
                if (bArr != null) {
                    c5361.write(bArr);
                    return;
                }
                Iterator it = c2133.iterator();
                while (it.hasNext()) {
                    c5361.m10757((AbstractC2934) it.next());
                }
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                C2132 c2132 = (C2132) abstractC2934;
                byte[] bArr2 = c2132.f8320;
                if (bArr2 != null) {
                    c5361.write(bArr2);
                    return;
                }
                Iterator it2 = c2132.iterator();
                while (it2.hasNext()) {
                    c5361.m10757((AbstractC2934) it2.next());
                }
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                C2131 c2131 = (C2131) abstractC2934;
                if (c2131.f8316 == null) {
                    m4947(c2131);
                }
                c5361.write(c2131.f8316);
                return;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                C3209 c3209 = (C3209) abstractC2934;
                c5361.write(c3209.f12259);
                c5361.write(c3209.f12258);
                return;
            default:
                c5361.write(((C3208) abstractC2934).f12258);
                return;
        }
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public void m4947(C2131 c2131) {
        AbstractC2934 abstractC2934 = c2131.f8318;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C4476 c4476 = (C4476) ((ᵎﹶ) this).ʾˋ;
        C5361 c5361 = new C5361(c4476, byteArrayOutputStream);
        try {
            if (c2131.f8319) {
                c5361.m10757(abstractC2934);
            } else {
                abstractC2934.f11101.mo6459(c4476).ʻʿ(abstractC2934, c5361);
            }
            c2131.f8316 = byteArrayOutputStream.toByteArray();
            c5361.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    c5361.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: ﹶ, reason: contains not printable characters */
    public final int m4948(AbstractC2934 abstractC2934) {
        switch (this.f7802) {
            case 0:
                return 1;
            case 1:
                C1955 c1955 = (C1955) abstractC2934;
                if (c1955.f7801 == null) {
                    c1955.f7801 = c1955.f7798.toByteArray();
                }
                return c1955.f7801.length;
            case 2:
                return ((C1956) abstractC2934).f7801.length;
            case 3:
                return 0;
            case 4:
                C1957 c1957 = (C1957) abstractC2934;
                if (c1957.f7801 == null) {
                    m4945(c1957);
                }
                return c1957.f7801.length;
            case 5:
                C2133 c2133 = (C2133) abstractC2934;
                if (c2133.f8322 == null) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    C5361 c5361 = new C5361((C4476) ((ᵎﹶ) this).ʾˋ, byteArrayOutputStream);
                    Iterator it = c2133.iterator();
                    while (it.hasNext()) {
                        c5361.m10757((AbstractC2934) it.next());
                    }
                    c2133.f8322 = byteArrayOutputStream.toByteArray();
                }
                return c2133.f8322.length;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                C2132 c2132 = (C2132) abstractC2934;
                if (c2132.f8320 == null) {
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    C5361 c53612 = new C5361((C4476) ((ᵎﹶ) this).ʾˋ, byteArrayOutputStream2);
                    Iterator it2 = c2132.iterator();
                    while (it2.hasNext()) {
                        c53612.m10757((AbstractC2934) it2.next());
                    }
                    c2132.f8320 = byteArrayOutputStream2.toByteArray();
                }
                return c2132.f8320.length;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                C2131 c2131 = (C2131) abstractC2934;
                if (c2131.f8316 == null) {
                    m4947(c2131);
                }
                return c2131.f8316.length;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return ((C3209) abstractC2934).f12258.length + 1;
            default:
                return ((C3208) abstractC2934).f12258.length;
        }
    }
}
