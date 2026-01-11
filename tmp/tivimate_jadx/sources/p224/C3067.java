package p224;

import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import p017.AbstractC0951;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p017.C0956;
import p017.C0982;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p137.AbstractC2305;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: ˏⁱ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3067 implements InterfaceC3066 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f11651;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0993 f11652;

    public C3067(int i, C0956 c0956) {
        this.f11651 = i;
        this.f11652 = c0956;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C3067 m6613(int i, C3732 c3732) {
        InterfaceC3066 c3063;
        String str;
        int i2 = 4;
        AbstractC1004.m3282(4, "initialCapacity");
        Object[] objArr = new Object[4];
        int i3 = c3732.f14532;
        int i4 = -2;
        int i5 = 0;
        while (c3732.m7904() > 8) {
            int m7884 = c3732.m7884();
            int m78842 = c3732.f14533 + c3732.m7884();
            c3732.m7891(m78842);
            if (m7884 == 1414744396) {
                c3063 = m6613(c3732.m7884(), c3732);
            } else {
                C3061 c3061 = null;
                switch (m7884) {
                    case 1718776947:
                        if (i4 != 2) {
                            if (i4 != 1) {
                                AbstractC3731.m7850("StreamFormatChunk", "Ignoring strf box for unsupported track type: " + AbstractC3712.m7787(i4));
                                break;
                            } else {
                                int m7905 = c3732.m7905();
                                String str2 = m7905 != 1 ? m7905 != 85 ? m7905 != 255 ? m7905 != 8192 ? m7905 != 8193 ? null : "audio/vnd.dts" : "audio/ac3" : "audio/mp4a-latm" : "audio/mpeg" : "audio/raw";
                                if (str2 != null) {
                                    int m79052 = c3732.m7905();
                                    int m78843 = c3732.m7884();
                                    c3732.m7900(6);
                                    int m79053 = c3732.m7905();
                                    String str3 = AbstractC3712.f14481;
                                    int m7771 = AbstractC3712.m7771(m79053, ByteOrder.LITTLE_ENDIAN);
                                    int m79054 = c3732.m7904() > 0 ? c3732.m7905() : 0;
                                    C1490 c1490 = new C1490();
                                    c1490.f5861 = AbstractC1464.m4251(str2);
                                    c1490.f5873 = m79052;
                                    c1490.f5864 = m78843;
                                    if (str2.equals("audio/raw") && m7771 != 0) {
                                        c1490.f5870 = m7771;
                                    }
                                    if (str2.equals("audio/mp4a-latm") && m79054 > 0) {
                                        byte[] bArr = new byte[m79054];
                                        c3732.m7875(bArr, 0, m79054);
                                        c1490.f5851 = AbstractC0993.m3260(bArr);
                                    }
                                    c3063 = new C3063(new C1495(c1490));
                                    break;
                                } else {
                                    AbstractC2305.m5373(m7905, "Ignoring track with unsupported format tag ", "StreamFormatChunk");
                                    break;
                                }
                            }
                        } else {
                            c3732.m7900(i2);
                            int m78844 = c3732.m7884();
                            int m78845 = c3732.m7884();
                            c3732.m7900(i2);
                            int m78846 = c3732.m7884();
                            switch (m78846) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str = "video/mp4v-es";
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str = "video/avc";
                                    break;
                                case 842289229:
                                    str = "video/mp42";
                                    break;
                                case 859066445:
                                    str = "video/mp43";
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str = "video/mjpeg";
                                    break;
                                default:
                                    str = null;
                                    break;
                            }
                            if (str != null) {
                                C1490 c14902 = new C1490();
                                c14902.f5865 = m78844;
                                c14902.f5854 = m78845;
                                c14902.f5861 = AbstractC1464.m4251(str);
                                c3063 = new C3063(new C1495(c14902));
                                break;
                            } else {
                                AbstractC2305.m5373(m78846, "Ignoring track with unsupported compression ", "StreamFormatChunk");
                                break;
                            }
                        }
                    case 1751742049:
                        int m78847 = c3732.m7884();
                        c3732.m7900(8);
                        int m78848 = c3732.m7884();
                        int m78849 = c3732.m7884();
                        c3732.m7900(i2);
                        c3732.m7884();
                        c3732.m7900(12);
                        c3063 = new C3060(m78847, m78848, m78849);
                        break;
                    case 1752331379:
                        int m788410 = c3732.m7884();
                        c3732.m7900(12);
                        c3732.m7884();
                        int m788411 = c3732.m7884();
                        int m788412 = c3732.m7884();
                        c3732.m7900(i2);
                        int m788413 = c3732.m7884();
                        int m788414 = c3732.m7884();
                        c3732.m7900(i2);
                        c3061 = new C3061(m788410, m788411, m788412, m788413, m788414, c3732.m7884());
                        break;
                    case 1852994675:
                        c3063 = new C3064(c3732.m7890(c3732.m7904(), StandardCharsets.UTF_8));
                        break;
                }
                c3063 = c3061;
            }
            if (c3063 != null) {
                if (c3063.mo6609() == 1752331379) {
                    i4 = ((C3061) c3063).m6610();
                }
                int i6 = i5 + 1;
                int m3234 = AbstractC0951.m3234(objArr.length, i6);
                if (m3234 > objArr.length) {
                    objArr = Arrays.copyOf(objArr, m3234);
                }
                objArr[i5] = c3063;
                i5 = i6;
            }
            c3732.m7896(m78842);
            c3732.m7891(i3);
            i2 = 4;
        }
        return new C3067(i, AbstractC0993.m3259(i5, objArr));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC3066 m6614(Class cls) {
        C0982 listIterator = this.f11652.listIterator(0);
        while (listIterator.hasNext()) {
            InterfaceC3066 interfaceC3066 = (InterfaceC3066) listIterator.next();
            if (interfaceC3066.getClass() == cls) {
                return interfaceC3066;
            }
        }
        return null;
    }

    @Override // p224.InterfaceC3066
    /* renamed from: ﹳٴ */
    public final int mo6609() {
        return this.f11651;
    }
}
