package p307;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.view.View;
import android.view.ViewGroup;
import ar.tvplayer.core.domain.F;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import p065.C1600;
import p140.AbstractC2376;
import p159.C2547;
import p223.C3056;
import p354.C4333;
import p362.InterfaceC4400;
import p395.InterfaceC4735;
import p417.InterfaceC4932;
import ᵔᵔ.ﹳٴ;

/* renamed from: ᐧـ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC3740 {
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static /* synthetic */ String m7924(int i) {
        switch (i) {
            case 1:
                return "NOT_REQUIRED";
            case 2:
                return "CONNECTED";
            case 3:
                return "UNMETERED";
            case 4:
                return "NOT_ROAMING";
            case 5:
                return "METERED";
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return "TEMPORARILY_UNMETERED";
            default:
                return "null";
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static int m7925(int i, int i2, int i3, int i4) {
        return C4333.m8776(i + i2 + i3, i4);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static String m7926(String str, long j) {
        return str + j;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m7927(int i, int i2, int i3, int i4) {
        return i | i2 | i3 | 128 | i4;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static void m7928(InterfaceC4735 interfaceC4735, InterfaceC4735 interfaceC47352) {
        if (interfaceC4735 == interfaceC47352) {
            return;
        }
        if (interfaceC47352 != null) {
            interfaceC47352.mo9460(null);
        }
        if (interfaceC4735 != null) {
            interfaceC4735.mo9462(null);
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static int m7929(int i, int i2, int i3, int i4, int i5) {
        int i6 = i + i2 + i3;
        return ((i6 >>> (32 - i4)) | (i6 << i4)) + i5;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static /* synthetic */ int m7930(int i) {
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 4;
                    if (i != 4) {
                        if (i == 5) {
                            return 5;
                        }
                        throw null;
                    }
                }
            }
        }
        return i2;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static ClassCastException m7931(int i, ArrayList arrayList) {
        arrayList.get(i).getClass();
        return new ClassCastException();
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static String m7932(int i, String str) {
        return str + i;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static int m7933(int i, F f) {
        return f.hIj8k(new Integer(i).intValue());
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static /* synthetic */ int m7934(int i) {
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 4;
                    if (i != 4) {
                        if (i == 5) {
                            return 5;
                        }
                        throw null;
                    }
                }
            }
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: יـ, reason: contains not printable characters */
    public static /* synthetic */ void m7935(Closeable closeable) {
        if (closeable instanceof AutoCloseable) {
            closeable.close();
            return;
        }
        if (closeable instanceof ExecutorService) {
            AbstractC2376.m5452((ExecutorService) closeable);
            return;
        }
        if (closeable instanceof TypedArray) {
            ((TypedArray) closeable).recycle();
            return;
        }
        if (closeable instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) closeable).release();
            return;
        }
        if (closeable instanceof MediaDrm) {
            ((MediaDrm) closeable).release();
        } else if (closeable instanceof DrmManagerClient) {
            ((DrmManagerClient) closeable).release();
        } else {
            if (!(closeable instanceof ContentProviderClient)) {
                throw new IllegalArgumentException();
            }
            ((ContentProviderClient) closeable).release();
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static /* synthetic */ String m7936(int i) {
        switch (i) {
            case 1:
                return "FILE";
            case 2:
                return "SMB";
            case 3:
                return "HTTP";
            case 4:
                return "UDP";
            case 5:
                return "RTMP";
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return "RTSP";
            default:
                return "null";
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static int m7937(int i, F f) {
        return f.hIj8k(new Integer(i).intValue());
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static /* synthetic */ long m7938(int i) {
        switch (i) {
            case 1:
                return 67324752L;
            case 2:
                return 134695760L;
            case 3:
                return 33639248L;
            case 4:
                return 101010256L;
            case 5:
                return 808471376L;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return 84233040L;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return 134630224L;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return 134695760L;
            case 9:
                return 117853008L;
            case 10:
                return 101075792L;
            case 11:
                return 1L;
            case 12:
                return 39169L;
            default:
                throw null;
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static Object m7939(int i, ArrayList arrayList) {
        return arrayList.get(arrayList.size() - i);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static boolean m7940(int i, boolean z) {
        int i2 = i & 7;
        if (i2 != 4) {
            return z && i2 == 3;
        }
        return true;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static String m7941(StringBuilder sb, long j, char c) {
        sb.append(j);
        sb.append(c);
        return sb.toString();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m7942(InterfaceC4400 interfaceC4400, InterfaceC4932 interfaceC4932) {
        if (interfaceC4932 instanceof C2547) {
            interfaceC4400.m8900(((C2547) interfaceC4932).f9654);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m7943(ﹳٴ r1, boolean z) {
        return r1.ᵔᵢ(z) == 0 && r1.ˑﹳ(z) == 0 && r1.ʽ() == 0;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static StringBuilder m7944(String str, int i, String str2, int i2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        sb.append(i2);
        sb.append(str3);
        return sb;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static ViewGroup.LayoutParams m7945(C1600 c1600, int i, View view, C1600 c16002, View view2) {
        c1600.setMarginStart(i);
        view.setLayoutParams(c16002);
        return view2.getLayoutParams();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static /* synthetic */ boolean m7946(int i) {
        if (i == 1 || i == 2 || i == 3) {
            return false;
        }
        if (i == 4 || i == 5) {
            return true;
        }
        throw null;
    }
}
