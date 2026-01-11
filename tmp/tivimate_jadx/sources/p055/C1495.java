package p055;

import android.text.TextUtils;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import p010.AbstractC0844;
import p012.C0902;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p035.AbstractC1220;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p358.AbstractC4349;
import ʻʿ.ᵔﹳ;

/* renamed from: ʽⁱ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1495 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final int f5899;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final float f5900;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f5901;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final int f5902;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractC0993 f5903;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f5904;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final int f5905;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final float f5906;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final int f5907;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int f5908;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final int f5909;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f5910;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final int f5911;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C1446 f5912;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final String f5913;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final int f5914;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f5915;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f5916;

    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean f5917;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public int f5918;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f5919;

    /* renamed from: יـ, reason: contains not printable characters */
    public final long f5920;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final int f5921;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final int f5922;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f5923;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final String f5924;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final byte[] f5925;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f5926;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final int f5927;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final int f5928;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f5929;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final String f5930;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final int f5931;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final int f5932;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f5933;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final List f5934;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final int f5935;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f5936;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f5937;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final C1486 f5938;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C1476 f5939;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f5940;

    static {
        new C1490().m4295();
        AbstractC3712.m7802(0);
        AbstractC3712.m7802(1);
        AbstractC3712.m7802(2);
        AbstractC3712.m7802(3);
        AbstractC3712.m7802(4);
        AbstractC1220.m3785(5, 6, 7, 8, 9);
        AbstractC1220.m3785(10, 11, 12, 13, 14);
        AbstractC1220.m3785(15, 16, 17, 18, 19);
        AbstractC1220.m3785(20, 21, 22, 23, 24);
        AbstractC1220.m3785(25, 26, 27, 28, 29);
        AbstractC1220.m3785(30, 31, 32, 33, 34);
        AbstractC3712.m7802(35);
        AbstractC3712.m7802(36);
    }

    public C1495(C1490 c1490) {
        boolean z;
        String str;
        this.f5937 = c1490.f5884;
        String m7786 = AbstractC3712.m7786(c1490.f5859);
        this.f5910 = m7786;
        if (c1490.f5852.isEmpty() && c1490.f5883 != null) {
            this.f5903 = AbstractC0993.m3260(new C1472(m7786, c1490.f5883));
            this.f5936 = c1490.f5883;
        } else if (c1490.f5852.isEmpty() || c1490.f5883 != null) {
            if (!c1490.f5852.isEmpty() || c1490.f5883 != null) {
                for (int i = 0; i < c1490.f5852.size(); i++) {
                    if (!((C1472) c1490.f5852.get(i)).f5759.equals(c1490.f5883)) {
                    }
                }
                z = false;
                AbstractC3731.m7857(z);
                this.f5903 = c1490.f5852;
                this.f5936 = c1490.f5883;
            }
            z = true;
            AbstractC3731.m7857(z);
            this.f5903 = c1490.f5852;
            this.f5936 = c1490.f5883;
        } else {
            AbstractC0993 abstractC0993 = c1490.f5852;
            this.f5903 = abstractC0993;
            int size = abstractC0993.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    str = ((C1472) abstractC0993.get(0)).f5759;
                    break;
                }
                Object obj = abstractC0993.get(i2);
                i2++;
                C1472 c1472 = (C1472) obj;
                if (TextUtils.equals(c1472.f5760, m7786)) {
                    str = c1472.f5759;
                    break;
                }
            }
            this.f5936 = str;
        }
        this.f5919 = c1490.f5866;
        AbstractC3731.m7848("Auxiliary track type must only be set to a value other than AUXILIARY_TRACK_TYPE_UNDEFINED only when ROLE_FLAG_AUXILIARY is set", c1490.f5876 == 0 || (c1490.f5887 & 32768) != 0);
        this.f5940 = c1490.f5887;
        this.f5929 = c1490.f5876;
        int i3 = c1490.f5880;
        this.f5933 = i3;
        int i4 = c1490.f5850;
        this.f5901 = i4;
        this.f5908 = i4 != -1 ? i4 : i3;
        this.f5924 = c1490.f5857;
        this.f5939 = c1490.f5871;
        this.f5913 = c1490.f5886;
        this.f5930 = c1490.f5861;
        this.f5914 = c1490.f5877;
        this.f5902 = c1490.f5862;
        List list = c1490.f5851;
        this.f5934 = list == null ? Collections.EMPTY_LIST : list;
        C1486 c1486 = c1490.f5881;
        this.f5938 = c1486;
        this.f5920 = c1490.f5885;
        this.f5917 = c1490.f5867;
        this.f5905 = c1490.f5865;
        this.f5899 = c1490.f5854;
        this.f5921 = c1490.f5848;
        this.f5907 = c1490.f5868;
        this.f5900 = c1490.f5856;
        int i5 = c1490.f5849;
        this.f5935 = i5 == -1 ? 0 : i5;
        float f = c1490.f5882;
        this.f5906 = f == -1.0f ? 1.0f : f;
        this.f5925 = c1490.f5855;
        this.f5904 = c1490.f5872;
        this.f5912 = c1490.f5853;
        this.f5926 = c1490.f5860;
        this.f5916 = c1490.f5873;
        this.f5923 = c1490.f5864;
        this.f5915 = c1490.f5870;
        int i6 = c1490.f5863;
        this.f5928 = i6 == -1 ? 0 : i6;
        int i7 = c1490.f5875;
        this.f5922 = i7 != -1 ? i7 : 0;
        this.f5927 = c1490.f5869;
        this.f5931 = c1490.f5874;
        this.f5909 = c1490.f5878;
        this.f5932 = c1490.f5858;
        int i8 = c1490.f5879;
        if (i8 != 0 || c1486 == null) {
            this.f5911 = i8;
        } else {
            this.f5911 = 1;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static String m4297(C1495 c1495) {
        char c;
        int i;
        String str;
        String str2;
        String str3;
        C1486 c1486;
        if (c1495 == null) {
            return "null";
        }
        int i2 = c1495.f5919;
        AbstractC0993 abstractC0993 = c1495.f5903;
        String str4 = c1495.f5910;
        int i3 = c1495.f5923;
        int i4 = c1495.f5916;
        int i5 = c1495.f5926;
        float f = c1495.f5900;
        C1446 c1446 = c1495.f5912;
        float f2 = c1495.f5906;
        int i6 = c1495.f5907;
        int i7 = c1495.f5921;
        int i8 = c1495.f5899;
        int i9 = c1495.f5905;
        C1486 c14862 = c1495.f5938;
        String str5 = c1495.f5924;
        int i10 = c1495.f5908;
        String str6 = c1495.f5913;
        int i11 = c1495.f5940;
        C0902 c0902 = new C0902(String.valueOf(','));
        StringBuilder m3020 = AbstractC0844.m3020("id=");
        m3020.append(c1495.f5937);
        m3020.append(", mimeType=");
        m3020.append(c1495.f5930);
        if (str6 != null) {
            m3020.append(", container=");
            m3020.append(str6);
        }
        if (i10 != -1) {
            m3020.append(", bitrate=");
            m3020.append(i10);
        }
        if (str5 != null) {
            m3020.append(", codecs=");
            m3020.append(str5);
        }
        if (c14862 != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i12 = 0;
            c = 0;
            while (i12 < c14862.f5841) {
                UUID uuid = c14862.f5840[i12].f5701;
                if (uuid.equals(AbstractC1489.f5846)) {
                    linkedHashSet.add("cenc");
                } else if (uuid.equals(AbstractC1489.f5843)) {
                    linkedHashSet.add("clearkey");
                } else if (uuid.equals(AbstractC1489.f5845)) {
                    linkedHashSet.add("playready");
                } else if (uuid.equals(AbstractC1489.f5844)) {
                    linkedHashSet.add("widevine");
                } else if (uuid.equals(AbstractC1489.f5847)) {
                    linkedHashSet.add("universal");
                } else {
                    c1486 = c14862;
                    linkedHashSet.add("unknown (" + uuid + ")");
                    i12++;
                    c14862 = c1486;
                }
                c1486 = c14862;
                i12++;
                c14862 = c1486;
            }
            m3020.append(", drm=[");
            c0902.m3155(m3020, linkedHashSet.iterator());
            m3020.append(']');
        } else {
            c = 0;
        }
        if (i9 != -1 && i8 != -1) {
            m3020.append(", res=");
            m3020.append(i9);
            m3020.append("x");
            m3020.append(i8);
        }
        if (i7 != -1 && i6 != -1) {
            m3020.append(", decRes=");
            m3020.append(i7);
            m3020.append("x");
            m3020.append(i6);
        }
        double d = f2;
        int i13 = AbstractC4349.f16172;
        if (Math.copySign(d - 1.0d, 1.0d) > 0.001d && d != 1.0d && (!Double.isNaN(d) || !Double.isNaN(1.0d))) {
            m3020.append(", par=");
            Object[] objArr = new Object[1];
            objArr[c] = Float.valueOf(f2);
            String str7 = AbstractC3712.f14481;
            m3020.append(String.format(Locale.US, "%.3f", objArr));
        }
        if (c1446 != null) {
            int i14 = c1446.f5638;
            int i15 = c1446.f5634;
            if ((i15 != -1 && i14 != -1) || c1446.m4238()) {
                m3020.append(", color=");
                if (c1446.m4238()) {
                    String m4235 = C1446.m4235(c1446.f5637);
                    String m4236 = C1446.m4236(c1446.f5636);
                    String m4232 = C1446.m4232(c1446.f5632);
                    Locale locale = Locale.US;
                    str2 = m4235 + "/" + m4236 + "/" + m4232;
                } else {
                    str2 = "NA/NA/NA";
                }
                if (i15 == -1 || i14 == -1) {
                    str3 = "NA/NA";
                } else {
                    str3 = i15 + "/" + i14;
                }
                m3020.append(str2 + "/" + str3);
            }
        }
        if (f != -1.0f) {
            m3020.append(", fps=");
            m3020.append(f);
        }
        if (i5 != -1) {
            m3020.append(", maxSubLayers=");
            m3020.append(i5);
        }
        if (i4 != -1) {
            m3020.append(", channels=");
            m3020.append(i4);
        }
        if (i3 != -1) {
            m3020.append(", sample_rate=");
            m3020.append(i3);
        }
        if (str4 != null) {
            m3020.append(", language=");
            m3020.append(str4);
        }
        if (!abstractC0993.isEmpty()) {
            m3020.append(", labels=[");
            c0902.m3155(m3020, AbstractC1004.m3280(abstractC0993, new ᵔﹳ(27)).iterator());
            m3020.append("]");
        }
        if (i2 != 0) {
            m3020.append(", selectionFlags=[");
            String str8 = AbstractC3712.f14481;
            ArrayList arrayList = new ArrayList();
            if ((i2 & 4) != 0) {
                arrayList.add("auto");
            }
            if ((i2 & 1) != 0) {
                arrayList.add("default");
            }
            if ((i2 & 2) != 0) {
                arrayList.add("forced");
            }
            c0902.m3155(m3020, arrayList.iterator());
            m3020.append("]");
        }
        if (i11 != 0) {
            m3020.append(", roleFlags=[");
            String str9 = AbstractC3712.f14481;
            ArrayList arrayList2 = new ArrayList();
            if ((i11 & 1) != 0) {
                arrayList2.add("main");
            }
            if ((i11 & 2) != 0) {
                arrayList2.add("alt");
            }
            if ((i11 & 4) != 0) {
                arrayList2.add("supplementary");
            }
            if ((i11 & 8) != 0) {
                arrayList2.add("commentary");
            }
            if ((i11 & 16) != 0) {
                arrayList2.add("dub");
            }
            if ((i11 & 32) != 0) {
                arrayList2.add("emergency");
            }
            if ((i11 & 64) != 0) {
                arrayList2.add("caption");
            }
            i = i11;
            if ((i & 128) != 0) {
                arrayList2.add("subtitle");
            }
            if ((i & 256) != 0) {
                arrayList2.add("sign");
            }
            if ((i & 512) != 0) {
                arrayList2.add("describes-video");
            }
            if ((i & 1024) != 0) {
                arrayList2.add("describes-music");
            }
            if ((i & 2048) != 0) {
                arrayList2.add("enhanced-intelligibility");
            }
            if ((i & 4096) != 0) {
                arrayList2.add("transcribes-dialog");
            }
            if ((i & 8192) != 0) {
                arrayList2.add("easy-read");
            }
            if ((i & 16384) != 0) {
                arrayList2.add("trick-play");
            }
            if ((i & 32768) != 0) {
                arrayList2.add("auxiliary");
            }
            c0902.m3155(m3020, arrayList2.iterator());
            m3020.append("]");
        } else {
            i = i11;
        }
        if ((i & 32768) != 0) {
            m3020.append(", auxiliaryTrackType=");
            int i16 = c1495.f5929;
            String str10 = AbstractC3712.f14481;
            if (i16 == 0) {
                str = "undefined";
            } else if (i16 == 1) {
                str = "original";
            } else if (i16 == 2) {
                str = "depth-linear";
            } else if (i16 == 3) {
                str = "depth-inverse";
            } else {
                if (i16 != 4) {
                    throw new IllegalStateException("Unsupported auxiliary track type");
                }
                str = "depth metadata";
            }
            m3020.append(str);
        }
        return m3020.toString();
    }

    public final boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj == null || C1495.class != obj.getClass()) {
            return false;
        }
        C1495 c1495 = (C1495) obj;
        int i2 = this.f5918;
        return (i2 == 0 || (i = c1495.f5918) == 0 || i2 == i) && this.f5919 == c1495.f5919 && this.f5940 == c1495.f5940 && this.f5929 == c1495.f5929 && this.f5933 == c1495.f5933 && this.f5901 == c1495.f5901 && this.f5914 == c1495.f5914 && this.f5920 == c1495.f5920 && this.f5905 == c1495.f5905 && this.f5899 == c1495.f5899 && this.f5921 == c1495.f5921 && this.f5907 == c1495.f5907 && this.f5935 == c1495.f5935 && this.f5904 == c1495.f5904 && this.f5926 == c1495.f5926 && this.f5916 == c1495.f5916 && this.f5923 == c1495.f5923 && this.f5915 == c1495.f5915 && this.f5928 == c1495.f5928 && this.f5922 == c1495.f5922 && this.f5927 == c1495.f5927 && this.f5909 == c1495.f5909 && this.f5932 == c1495.f5932 && this.f5911 == c1495.f5911 && Float.compare(this.f5900, c1495.f5900) == 0 && Float.compare(this.f5906, c1495.f5906) == 0 && Objects.equals(this.f5937, c1495.f5937) && Objects.equals(this.f5936, c1495.f5936) && this.f5903.equals(c1495.f5903) && Objects.equals(this.f5924, c1495.f5924) && Objects.equals(this.f5913, c1495.f5913) && Objects.equals(this.f5930, c1495.f5930) && Objects.equals(this.f5910, c1495.f5910) && Arrays.equals(this.f5925, c1495.f5925) && Objects.equals(this.f5939, c1495.f5939) && Objects.equals(this.f5912, c1495.f5912) && Objects.equals(this.f5938, c1495.f5938) && m4299(c1495);
    }

    public final int hashCode() {
        if (this.f5918 == 0) {
            String str = this.f5937;
            int hashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f5936;
            int hashCode2 = (this.f5903.hashCode() + ((hashCode + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
            String str3 = this.f5910;
            int hashCode3 = (((((((((((hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f5919) * 31) + this.f5940) * 31) + this.f5929) * 31) + this.f5933) * 31) + this.f5901) * 31;
            String str4 = this.f5924;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            C1476 c1476 = this.f5939;
            int hashCode5 = (hashCode4 + (c1476 == null ? 0 : c1476.hashCode())) * 961;
            String str5 = this.f5913;
            int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.f5930;
            this.f5918 = ((((((((((((((((((((((Float.floatToIntBits(this.f5906) + ((((Float.floatToIntBits(this.f5900) + ((((((((((((((hashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.f5914) * 31) + ((int) this.f5920)) * 31) + this.f5905) * 31) + this.f5899) * 31) + this.f5921) * 31) + this.f5907) * 31)) * 31) + this.f5935) * 31)) * 31) + this.f5904) * 31) + this.f5926) * 31) + this.f5916) * 31) + this.f5923) * 31) + this.f5915) * 31) + this.f5928) * 31) + this.f5922) * 31) + this.f5927) * 31) + this.f5909) * 31) + this.f5932) * 31) + this.f5911;
        }
        return this.f5918;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Format(");
        sb.append(this.f5937);
        sb.append(", ");
        sb.append(this.f5936);
        sb.append(", ");
        sb.append(this.f5913);
        sb.append(", ");
        sb.append(this.f5930);
        sb.append(", ");
        sb.append(this.f5924);
        sb.append(", ");
        sb.append(this.f5908);
        sb.append(", ");
        sb.append(this.f5910);
        sb.append(", [");
        sb.append(this.f5905);
        sb.append(", ");
        sb.append(this.f5899);
        sb.append(", ");
        sb.append(this.f5900);
        sb.append(", ");
        sb.append(this.f5912);
        sb.append("], [");
        sb.append(this.f5916);
        sb.append(", ");
        return AbstractC1220.m3782(sb, this.f5923, "])");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1495 m4298(C1495 c1495) {
        String str;
        String str2;
        int i;
        int i2;
        if (this == c1495) {
            return this;
        }
        int m4250 = AbstractC1464.m4250(this.f5930);
        String str3 = c1495.f5937;
        C1476 c1476 = c1495.f5939;
        AbstractC0993 abstractC0993 = c1495.f5903;
        int i3 = c1495.f5909;
        int i4 = c1495.f5932;
        String str4 = c1495.f5936;
        if (str4 == null) {
            str4 = this.f5936;
        }
        if (abstractC0993.isEmpty()) {
            abstractC0993 = this.f5903;
        }
        if ((m4250 != 3 && m4250 != 1) || (str = c1495.f5910) == null) {
            str = this.f5910;
        }
        int i5 = this.f5933;
        if (i5 == -1) {
            i5 = c1495.f5933;
        }
        int i6 = this.f5901;
        if (i6 == -1) {
            i6 = c1495.f5901;
        }
        String str5 = this.f5924;
        if (str5 == null) {
            String m7785 = AbstractC3712.m7785(m4250, c1495.f5924);
            if (AbstractC3712.m7781(m7785).length == 1) {
                str5 = m7785;
            }
        }
        C1476 c14762 = this.f5939;
        if (c14762 != null) {
            c1476 = c14762.m4281(c1476);
        }
        float f = this.f5900;
        if (f == -1.0f && m4250 == 2) {
            f = c1495.f5900;
        }
        int i7 = this.f5919 | c1495.f5919;
        int i8 = this.f5940 | c1495.f5940;
        C1486 c1486 = c1495.f5938;
        ArrayList arrayList = new ArrayList();
        AbstractC0993 abstractC09932 = abstractC0993;
        if (c1486 != null) {
            String str6 = c1486.f5839;
            C1461[] c1461Arr = c1486.f5840;
            int length = c1461Arr.length;
            int i9 = 0;
            while (i9 < length) {
                int i10 = i9;
                C1461 c1461 = c1461Arr[i10];
                int i11 = length;
                if (c1461.f5702 != null) {
                    arrayList.add(c1461);
                }
                i9 = i10 + 1;
                length = i11;
            }
            str2 = str6;
        } else {
            str2 = null;
        }
        C1486 c14862 = this.f5938;
        if (c14862 != null) {
            if (str2 == null) {
                str2 = c14862.f5839;
            }
            int size = arrayList.size();
            C1461[] c1461Arr2 = c14862.f5840;
            String str7 = str2;
            int length2 = c1461Arr2.length;
            int i12 = 0;
            while (i12 < length2) {
                int i13 = i12;
                C1461 c14612 = c1461Arr2[i13];
                int i14 = length2;
                if (c14612.f5702 != null) {
                    UUID uuid = c14612.f5701;
                    i2 = i4;
                    int i15 = 0;
                    while (true) {
                        if (i15 >= size) {
                            i = size;
                            arrayList.add(c14612);
                            break;
                        }
                        i = size;
                        if (((C1461) arrayList.get(i15)).f5701.equals(uuid)) {
                            break;
                        }
                        i15++;
                        size = i;
                    }
                } else {
                    i = size;
                    i2 = i4;
                }
                i12 = i13 + 1;
                length2 = i14;
                i4 = i2;
                size = i;
            }
            str2 = str7;
        }
        int i16 = i4;
        C1486 c14863 = arrayList.isEmpty() ? null : new C1486(str2, arrayList);
        C1490 m4300 = m4300();
        m4300.f5884 = str3;
        m4300.f5883 = str4;
        m4300.f5852 = AbstractC0993.m3264(abstractC09932);
        m4300.f5859 = str;
        m4300.f5866 = i7;
        m4300.f5887 = i8;
        m4300.f5880 = i5;
        m4300.f5850 = i6;
        m4300.f5857 = str5;
        m4300.f5871 = c1476;
        m4300.f5881 = c14863;
        m4300.f5856 = f;
        m4300.f5878 = i3;
        m4300.f5858 = i16;
        return new C1495(m4300);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m4299(C1495 c1495) {
        List list = this.f5934;
        if (list.size() != c1495.f5934.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals((byte[]) list.get(i), (byte[]) c1495.f5934.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ʽⁱ.ᵔﹳ, java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1490 m4300() {
        ?? obj = new Object();
        obj.f5884 = this.f5937;
        obj.f5883 = this.f5936;
        obj.f5852 = this.f5903;
        obj.f5859 = this.f5910;
        obj.f5866 = this.f5919;
        obj.f5887 = this.f5940;
        obj.f5880 = this.f5933;
        obj.f5850 = this.f5901;
        obj.f5857 = this.f5924;
        obj.f5871 = this.f5939;
        obj.f5886 = this.f5913;
        obj.f5861 = this.f5930;
        obj.f5877 = this.f5914;
        obj.f5862 = this.f5902;
        obj.f5851 = this.f5934;
        obj.f5881 = this.f5938;
        obj.f5885 = this.f5920;
        obj.f5867 = this.f5917;
        obj.f5865 = this.f5905;
        obj.f5854 = this.f5899;
        obj.f5848 = this.f5921;
        obj.f5868 = this.f5907;
        obj.f5856 = this.f5900;
        obj.f5849 = this.f5935;
        obj.f5882 = this.f5906;
        obj.f5855 = this.f5925;
        obj.f5872 = this.f5904;
        obj.f5853 = this.f5912;
        obj.f5860 = this.f5926;
        obj.f5873 = this.f5916;
        obj.f5864 = this.f5923;
        obj.f5870 = this.f5915;
        obj.f5863 = this.f5928;
        obj.f5875 = this.f5922;
        obj.f5869 = this.f5927;
        obj.f5874 = this.f5931;
        obj.f5878 = this.f5909;
        obj.f5858 = this.f5932;
        obj.f5879 = this.f5911;
        return obj;
    }
}
