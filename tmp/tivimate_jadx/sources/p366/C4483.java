package p366;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import com.google.android.gms.internal.measurement.C0283;
import com.google.android.gms.internal.measurement.C0293;
import com.google.android.gms.internal.measurement.C0294;
import com.google.android.gms.internal.measurement.C0300;
import com.google.android.gms.internal.measurement.C0312;
import com.google.android.gms.internal.measurement.C0334;
import com.google.android.gms.internal.measurement.C0395;
import com.google.android.gms.internal.measurement.C0408;
import com.google.android.gms.internal.measurement.C0459;
import java.security.Provider;
import java.security.Signature;
import java.util.List;
import javax.crypto.KeyAgreement;
import p164.C2571;
import p223.C3056;
import p371.C4513;
import p394.AbstractC4710;
import p419.InterfaceC4934;
import p429.InterfaceC5083;
import p435.AbstractC5154;
import p447.AbstractC5321;
import p447.InterfaceC5233;
import p447.InterfaceC5357;

/* renamed from: ᵔﹶ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4483 implements InterfaceC4484, InterfaceC4934, InterfaceC5083, InterfaceC5357, InterfaceC5233 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f16806;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16798 = new C4483(8);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16785 = new C4483(9);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16788 = new C4483(10);

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16800 = new C4483(11);

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16791 = new C4483(12);

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16797 = new C4483(13);

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16790 = new C4483(14);

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16802 = new C4483(15);

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16796 = new C4483(16);

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16801 = new C4483(17);

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16803 = new C4483(18);

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16786 = new C4483(19);

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16804 = new C4483(20);

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16787 = new C4483(21);

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16794 = new C4483(22);

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16793 = new C4483(23);

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16792 = new C4483(24);

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16784 = new C4483(25);

    /* renamed from: ـˏ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16795 = new C4483(26);

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16805 = new C4483(27);

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16789 = new C4483(28);

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public static final /* synthetic */ C4483 f16799 = new C4483(29);

    public /* synthetic */ C4483(int i) {
        this.f16806 = i;
    }

    public C4483(Context context) {
        this.f16806 = 3;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String m9043(C2571 c2571, C2571[] c2571Arr, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        C2571 c25712 = C4513.f16874;
        int mo5749 = c2571.mo5749();
        int i5 = 0;
        while (i5 < mo5749) {
            int i6 = (i5 + mo5749) / 2;
            while (i6 > -1 && c2571.mo5757(i6) != 10) {
                i6--;
            }
            int i7 = i6 + 1;
            int i8 = 1;
            while (true) {
                i2 = i7 + i8;
                if (c2571.mo5757(i2) == 10) {
                    break;
                }
                i8++;
            }
            int i9 = i2 - i7;
            int i10 = i;
            boolean z2 = false;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (z2) {
                    i3 = 46;
                    z = false;
                } else {
                    byte mo5757 = c2571Arr[i10].mo5757(i11);
                    byte[] bArr = AbstractC4710.f17800;
                    int i13 = mo5757 & 255;
                    z = z2;
                    i3 = i13;
                }
                byte mo57572 = c2571.mo5757(i7 + i12);
                byte[] bArr2 = AbstractC4710.f17800;
                i4 = i3 - (mo57572 & 255);
                if (i4 != 0) {
                    break;
                }
                i12++;
                i11++;
                if (i12 == i9) {
                    break;
                }
                if (c2571Arr[i10].mo5749() != i11) {
                    z2 = z;
                } else {
                    if (i10 == c2571Arr.length - 1) {
                        break;
                    }
                    i10++;
                    i11 = -1;
                    z2 = true;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i14 = i9 - i12;
                    int mo57492 = c2571Arr[i10].mo5749() - i11;
                    int length = c2571Arr.length;
                    for (int i15 = i10 + 1; i15 < length; i15++) {
                        mo57492 += c2571Arr[i15].mo5749();
                    }
                    if (mo57492 >= i14) {
                        if (mo57492 <= i14) {
                            return c2571.mo5752(i7, i9 + i7).mo5761(AbstractC5154.f19435);
                        }
                    }
                }
                i5 = i2 + 1;
            }
            mo5749 = i6;
        }
        return null;
    }

    @Override // p447.InterfaceC5357
    /* renamed from: ʽ, reason: contains not printable characters */
    public /* synthetic */ String mo9044(String str, String str2) {
        return null;
    }

    @Override // p366.InterfaceC4484
    /* renamed from: ˉˆ */
    public void mo8993(MediaExtractor mediaExtractor, Object obj) {
        AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
        mediaExtractor.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
    }

    @Override // p419.InterfaceC4934
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public long mo9045() {
        return System.currentTimeMillis();
    }

    @Override // p447.InterfaceC5233
    /* renamed from: ⁱˊ */
    public Object mo8999() {
        switch (this.f16806) {
            case 9:
                return new Boolean(((Boolean) C0408.f2146.m1773()).booleanValue());
            case 10:
                List list = AbstractC5321.f20168;
                C0459.f2216.get();
                return (String) C0283.f1835.m1773();
            case 11:
                List list2 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1868.m1773()).longValue());
            case 12:
                List list3 = AbstractC5321.f20168;
                C0459.f2216.get();
                return (String) C0283.f1815.m1773();
            case 13:
                List list4 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l = (Long) C0283.f1842.m1773();
                l.getClass();
                return l;
            case 14:
                List list5 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l2 = (Long) C0283.f1801.m1773();
                l2.getClass();
                return l2;
            case 15:
                List list6 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l3 = (Long) C0283.f1799.m1773();
                l3.getClass();
                return l3;
            case 16:
                List list7 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l4 = (Long) C0283.f1863.m1773();
                l4.getClass();
                return l4;
            case 17:
                List list8 = AbstractC5321.f20168;
                C0459.f2216.get();
                return (String) C0283.f1861.m1773();
            case 18:
                List list9 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1822.m1773()).longValue());
            case 19:
                List list10 = AbstractC5321.f20168;
                C0300.f1923.get();
                return (String) C0294.f1913.m1773();
            case 20:
                List list11 = AbstractC5321.f20168;
                C0300.f1923.get();
                Double d = (Double) C0294.f1908.m1773();
                d.getClass();
                return d;
            case 21:
                List list12 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l5 = (Long) C0283.f1831.m1773();
                l5.getClass();
                return l5;
            case 22:
                List list13 = AbstractC5321.f20168;
                C0459.f2216.get();
                return (String) C0283.f1846.m1773();
            case 23:
                List list14 = AbstractC5321.f20168;
                C0459.f2216.get();
                return (String) C0283.f1829.m1773();
            case 24:
                List list15 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1851.m1773()).longValue());
            case 25:
                List list16 = AbstractC5321.f20168;
                C0459.f2216.get();
                Boolean bool = (Boolean) C0283.f1806.m1773();
                bool.getClass();
                return bool;
            case 26:
                List list17 = AbstractC5321.f20168;
                Boolean bool2 = (Boolean) C0395.f2059.m1773();
                bool2.getClass();
                return bool2;
            case 27:
                List list18 = AbstractC5321.f20168;
                Boolean bool3 = (Boolean) C0293.f1907.m1773();
                bool3.getClass();
                return bool3;
            case 28:
                List list19 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1833.m1773()).longValue());
            default:
                List list20 = AbstractC5321.f20168;
                C0334.f1985.get();
                Boolean bool4 = (Boolean) C0312.f1936.m1773();
                bool4.getClass();
                return bool4;
        }
    }

    @Override // p366.InterfaceC4484
    /* renamed from: ﾞʻ */
    public void mo9001(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
        mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
    }

    @Override // p429.InterfaceC5083
    /* renamed from: ﾞᴵ */
    public Object mo9002(String str, Provider provider) {
        switch (this.f16806) {
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return provider == null ? KeyAgreement.getInstance(str) : KeyAgreement.getInstance(str, provider);
            default:
                return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
        }
    }
}
