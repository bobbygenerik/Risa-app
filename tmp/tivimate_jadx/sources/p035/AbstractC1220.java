package p035;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import p010.AbstractC0844;
import p017.AbstractC0993;
import p017.C0968;
import p051.C1393;
import p051.C1396;
import p051.InterfaceC1398;
import p078.AbstractC1669;
import p130.AbstractC2192;
import p140.AbstractC2376;
import p223.C3056;
import p305.AbstractC3712;
import ʻʿ.ˈ;

/* renamed from: ʼﾞ.ˊˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1220 {
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static StringBuilder m3770(long j, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(j);
        sb.append(str2);
        return sb;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static String m3771(String str, String str2) {
        return str + str2;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static /* synthetic */ int m3772(int i) {
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                if (i == 3) {
                    return 3;
                }
                throw null;
            }
        }
        return i2;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static String m3773(int i, String str, String str2) {
        return str + i + str2;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m3774(int i) {
        for (int i2 : AbstractC0844.m3019(3)) {
            if (m3797(i2) == i) {
                return i2;
            }
        }
        throw new IOException("Unknown compression method");
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static String m3775(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static /* synthetic */ String m3776(int i) {
        switch (i) {
            case 1:
                return "BEGIN_ARRAY";
            case 2:
                return "END_ARRAY";
            case 3:
                return "BEGIN_OBJECT";
            case 4:
                return "END_OBJECT";
            case 5:
                return "NAME";
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return "STRING";
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return "NUMBER";
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return "BOOLEAN";
            case 9:
                return "NULL";
            case 10:
                return "END_DOCUMENT";
            default:
                return "null";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static /* synthetic */ void m3777(AbstractC1669 abstractC1669) {
        if (abstractC1669 instanceof AutoCloseable) {
            abstractC1669.close();
        } else {
            if (!(abstractC1669 instanceof ExecutorService)) {
                throw new IllegalArgumentException();
            }
            AbstractC2376.m5452((ExecutorService) abstractC1669);
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static /* synthetic */ int m3778(int i) {
        if (i == 1) {
            return 8;
        }
        if (i == 2) {
            return 12;
        }
        if (i == 3) {
            return 16;
        }
        throw null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final boolean m3779(int i) {
        return !AbstractC2192.m5191();
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static int m3780(int i, int i2, String str) {
        return (str.hashCode() + i) * i2;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static String m3781(char c, String str, String str2) {
        return str + str2 + c;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static String m3782(StringBuilder sb, int i, String str) {
        sb.append(i);
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final boolean m3783(int i) {
        Boolean bool;
        if (AbstractC2192.m5191()) {
            try {
                bool = (Boolean) Class.forName("org.conscrypt.Conscrypt").getMethod("isBoringSslFIPSBuild", null).invoke(null, null);
            } catch (Exception unused) {
                AbstractC2192.f8645.info("Conscrypt is not available or does not support checking for FIPS build.");
                bool = Boolean.FALSE;
            }
            if (!bool.booleanValue()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static String m3784(StringBuilder sb, int i, char c) {
        sb.append(i);
        sb.append(c);
        return sb.toString();
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static void m3785(int i, int i2, int i3, int i4, int i5) {
        AbstractC3712.m7802(i);
        AbstractC3712.m7802(i2);
        AbstractC3712.m7802(i3);
        AbstractC3712.m7802(i4);
        AbstractC3712.m7802(i5);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static /* synthetic */ int m3786(int i) {
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 2;
        }
        throw null;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static /* synthetic */ String m3787(int i) {
        switch (i) {
            case 1:
                return "INITIALIZE";
            case 2:
                return "RESOURCE_CACHE";
            case 3:
                return "DATA_CACHE";
            case 4:
                return "SOURCE";
            case 5:
                return "ENCODE";
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return "FINISHED";
            default:
                return "null";
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static /* synthetic */ int m3788(int i) {
        if (i == 1) {
            return 16;
        }
        if (i == 2) {
            return 24;
        }
        if (i == 3) {
            return 32;
        }
        throw null;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static View m3789(ViewGroup viewGroup, int i, ViewGroup viewGroup2, boolean z) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup2, z);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static /* synthetic */ int m3790(int i) {
        if (i == 1) {
            return 16;
        }
        if (i == 2) {
            return 24;
        }
        if (i == 3) {
            return 32;
        }
        throw null;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static String m3791(String str, String str2) {
        return str + str2;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static /* synthetic */ String m3792(int i) {
        switch (i) {
            case 1:
                return "NONE";
            case 2:
                return "LEFT";
            case 3:
                return "TOP";
            case 4:
                return "RIGHT";
            case 5:
                return "BOTTOM";
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return "BASELINE";
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return "CENTER";
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return "CENTER_X";
            case 9:
                return "CENTER_Y";
            default:
                throw null;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static /* synthetic */ boolean m3793(int i) {
        return i != 1 ? m3783(i) : m3779(i);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1396 m3794(InterfaceC1398 interfaceC1398, byte[] bArr, int i) {
        C0968 m3261 = AbstractC0993.m3261();
        interfaceC1398.mo4118(bArr, 0, i, C1393.f5457, new ˈ(16, m3261));
        return new C1396(m3261.m3249());
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static String m3795(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static int m3796(int i, int i2, int i3, int i4) {
        return i + i2 + i3 + i4;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static /* synthetic */ int m3797(int i) {
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 8;
        }
        if (i == 3) {
            return 99;
        }
        throw null;
    }
}
