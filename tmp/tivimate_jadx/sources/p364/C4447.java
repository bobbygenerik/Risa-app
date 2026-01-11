package p364;

import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import androidx.media3.exoplayer.drm.DrmSession$DrmSessionException;
import com.google.android.gms.internal.measurement.C0283;
import com.google.android.gms.internal.measurement.C0294;
import com.google.android.gms.internal.measurement.C0300;
import com.google.android.gms.internal.measurement.C0312;
import com.google.android.gms.internal.measurement.C0334;
import com.google.android.gms.internal.measurement.C0338;
import com.google.android.gms.internal.measurement.C0395;
import com.google.android.gms.internal.measurement.C0417;
import com.google.android.gms.internal.measurement.C0459;
import com.google.android.gms.internal.measurement.C0461;
import com.google.android.gms.internal.measurement.C0491;
import java.security.Provider;
import java.util.List;
import javax.crypto.Mac;
import p003.C0783;
import p034.C1194;
import p034.InterfaceC1191;
import p034.InterfaceC1192;
import p055.C1495;
import p317.InterfaceC3912;
import p366.InterfaceC4484;
import p379.AbstractC4541;
import p379.C4542;
import p379.C4543;
import p379.C4545;
import p395.C4715;
import p395.C4728;
import p395.InterfaceC4726;
import p395.InterfaceC4734;
import p395.InterfaceC4735;
import p424.C5018;
import p429.InterfaceC5083;
import p447.AbstractC5321;
import p447.InterfaceC5233;
import p456.InterfaceC5377;
import p456.InterfaceC5378;
import p456.InterfaceC5379;

/* renamed from: ᵔⁱ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4447 implements InterfaceC4442, InterfaceC4484, InterfaceC5377, InterfaceC4734, InterfaceC1191, InterfaceC5083, InterfaceC5233 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f16653;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16646 = new C4447(9);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16633 = new C4447(10);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16636 = new C4447(11);

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16647 = new C4447(12);

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16639 = new C4447(13);

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16645 = new C4447(14);

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16638 = new C4447(15);

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16649 = new C4447(16);

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16644 = new C4447(17);

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16648 = new C4447(18);

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16650 = new C4447(19);

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16634 = new C4447(20);

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16651 = new C4447(21);

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16635 = new C4447(22);

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16642 = new C4447(23);

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16641 = new C4447(24);

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16640 = new C4447(25);

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16632 = new C4447(26);

    /* renamed from: ـˏ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16643 = new C4447(27);

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16652 = new C4447(28);

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public static final /* synthetic */ C4447 f16637 = new C4447(29);

    public /* synthetic */ C4447(int i) {
        this.f16653 = i;
    }

    public /* synthetic */ C4447(boolean z) {
        this.f16653 = 6;
    }

    @Override // p395.InterfaceC4734
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void mo8990(Looper looper, C0783 c0783) {
    }

    @Override // p364.InterfaceC4442
    /* renamed from: ʽ */
    public void mo7443() {
    }

    @Override // p395.InterfaceC4734
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public /* synthetic */ InterfaceC4726 mo8991(C4715 c4715, C1495 c1495) {
        return InterfaceC4726.f17870;
    }

    @Override // p456.InterfaceC5377
    /* renamed from: ˈ, reason: contains not printable characters */
    public InterfaceC5379 mo8992(String str) {
        return new C4542(str);
    }

    @Override // p034.InterfaceC1191
    /* renamed from: ˉʿ */
    public InterfaceC1192 mo3701(C1194 c1194) {
        return new C5018(c1194.f4636, c1194.f4635, c1194.f4632, c1194.f4633, c1194.f4634);
    }

    @Override // p366.InterfaceC4484
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public void mo8993(MediaExtractor mediaExtractor, Object obj) {
        mediaExtractor.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
    }

    @Override // p395.InterfaceC4734
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public InterfaceC4735 mo8994(C4715 c4715, C1495 c1495) {
        if (c1495.f5938 == null) {
            return null;
        }
        return new C4728(new DrmSession$DrmSessionException(6001, new Exception()));
    }

    @Override // p456.InterfaceC5377
    /* renamed from: יـ, reason: contains not printable characters */
    public C4545 mo8995() {
        InterfaceC3912 interfaceC3912 = (InterfaceC3912) AbstractC4541.f17024.get("RC4");
        if (interfaceC3912 != null) {
            return (C4545) interfaceC3912.mo8085();
        }
        throw new IllegalArgumentException("Unknown Cipher RC4");
    }

    @Override // p456.InterfaceC5377
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public InterfaceC5378 mo8996() {
        return new C4543();
    }

    @Override // p395.InterfaceC4734
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int mo8997(C1495 c1495) {
        return c1495.f5938 != null ? 1 : 0;
    }

    @Override // p395.InterfaceC4734
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public /* synthetic */ void mo8998() {
    }

    @Override // p447.InterfaceC5233
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Object mo8999() {
        switch (this.f16653) {
            case 9:
                return new Boolean(((Boolean) C0338.f1992.m1773()).booleanValue());
            case 10:
                List list = AbstractC5321.f20168;
                Boolean bool = (Boolean) C0491.f2251.m1773();
                bool.getClass();
                return bool;
            case 11:
                List list2 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1797.m1773()).longValue());
            case 12:
                List list3 = AbstractC5321.f20168;
                C0459.f2216.get();
                return (String) C0283.f1832.m1773();
            case 13:
                List list4 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l = (Long) C0283.f1810.m1773();
                l.getClass();
                return l;
            case 14:
                List list5 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1834.m1773()).longValue());
            case 15:
                List list6 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l2 = (Long) C0283.f1856.m1773();
                l2.getClass();
                return l2;
            case 16:
                List list7 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l3 = (Long) C0283.f1852.m1773();
                l3.getClass();
                return l3;
            case 17:
                List list8 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l4 = (Long) C0283.f1825.m1773();
                l4.getClass();
                return l4;
            case 18:
                List list9 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l5 = (Long) C0283.f1840.m1773();
                l5.getClass();
                return l5;
            case 19:
                List list10 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l6 = (Long) C0283.f1824.m1773();
                l6.getClass();
                return l6;
            case 20:
                List list11 = AbstractC5321.f20168;
                C0300.f1923.get();
                Long l7 = (Long) C0294.f1911.m1773();
                l7.getClass();
                return l7;
            case 21:
                List list12 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1862.m1773()).longValue());
            case 22:
                List list13 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1811.m1773()).longValue());
            case 23:
                List list14 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l8 = (Long) C0283.f1814.m1773();
                l8.getClass();
                return l8;
            case 24:
                List list15 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1847.m1773()).longValue());
            case 25:
                List list16 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1798.m1773()).longValue());
            case 26:
                List list17 = AbstractC5321.f20168;
                Boolean bool2 = (Boolean) C0395.f2061.m1773();
                bool2.getClass();
                return bool2;
            case 27:
                List list18 = AbstractC5321.f20168;
                Boolean bool3 = (Boolean) C0461.f2218.m1773();
                bool3.getClass();
                return bool3;
            case 28:
                List list19 = AbstractC5321.f20168;
                Boolean bool4 = (Boolean) C0417.f2158.m1773();
                bool4.getClass();
                return bool4;
            default:
                List list20 = AbstractC5321.f20168;
                C0334.f1985.get();
                Boolean bool5 = (Boolean) C0312.f1937.m1773();
                bool5.getClass();
                return bool5;
        }
    }

    @Override // p395.InterfaceC4734
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public /* synthetic */ void mo9000() {
    }

    @Override // p366.InterfaceC4484
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public void mo9001(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        mediaMetadataRetriever.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
    }

    @Override // p429.InterfaceC5083
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Object mo9002(String str, Provider provider) {
        return provider == null ? Mac.getInstance(str) : Mac.getInstance(str, provider);
    }
}
