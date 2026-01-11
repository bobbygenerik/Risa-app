package p366;

import android.content.Context;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import com.google.android.gms.internal.measurement.C0283;
import com.google.android.gms.internal.measurement.C0293;
import com.google.android.gms.internal.measurement.C0312;
import com.google.android.gms.internal.measurement.C0334;
import com.google.android.gms.internal.measurement.C0356;
import com.google.android.gms.internal.measurement.C0415;
import com.google.android.gms.internal.measurement.C0428;
import com.google.android.gms.internal.measurement.C0459;
import java.nio.ByteBuffer;
import java.security.KeyFactory;
import java.security.Provider;
import java.util.List;
import java.util.NoSuchElementException;
import p223.C3056;
import p372.InterfaceC4518;
import p429.InterfaceC5083;
import p447.AbstractC5321;
import p447.InterfaceC5233;

/* renamed from: ᵔﹶ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4472 implements InterfaceC4484, InterfaceC4518, InterfaceC5083, InterfaceC5233 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static C4472 f16738;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f16746;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16724 = new C4472(8);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16727 = new C4472(9);

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16740 = new C4472(10);

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16731 = new C4472(11);

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16737 = new C4472(12);

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16730 = new C4472(13);

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16742 = new C4472(14);

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16736 = new C4472(15);

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16741 = new C4472(16);

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16743 = new C4472(17);

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16725 = new C4472(18);

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16744 = new C4472(19);

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16726 = new C4472(20);

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16734 = new C4472(21);

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16733 = new C4472(22);

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16732 = new C4472(23);

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16723 = new C4472(24);

    /* renamed from: ـˏ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16735 = new C4472(25);

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16745 = new C4472(26);

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16728 = new C4472(27);

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16739 = new C4472(28);

    /* renamed from: ˉـ, reason: contains not printable characters */
    public static final /* synthetic */ C4472 f16729 = new C4472(29);

    public /* synthetic */ C4472(int i) {
        this.f16746 = i;
    }

    public C4472(Context context) {
        this.f16746 = 3;
    }

    @Override // p372.InterfaceC4518
    public boolean next() {
        return false;
    }

    @Override // p372.InterfaceC4518
    /* renamed from: ʽ */
    public long mo7009() {
        throw new NoSuchElementException();
    }

    @Override // p366.InterfaceC4484
    /* renamed from: ˉˆ */
    public void mo8993(MediaExtractor mediaExtractor, Object obj) {
        mediaExtractor.setDataSource(new C4466((ByteBuffer) obj));
    }

    @Override // p447.InterfaceC5233
    /* renamed from: ⁱˊ */
    public Object mo8999() {
        switch (this.f16746) {
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return new Boolean(((Boolean) C0428.f2172.m1773()).booleanValue());
            case 9:
                List list = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l = (Long) C0283.f1864.m1773();
                l.getClass();
                return l;
            case 10:
                List list2 = AbstractC5321.f20168;
                C0459.f2216.get();
                return (String) C0283.f1870.m1773();
            case 11:
                List list3 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1807.m1773()).longValue());
            case 12:
                List list4 = AbstractC5321.f20168;
                C0459.f2216.get();
                return (String) C0283.f1860.m1773();
            case 13:
                List list5 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l2 = (Long) C0283.f1859.m1773();
                l2.getClass();
                return l2;
            case 14:
                List list6 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l3 = (Long) C0283.f1826.m1773();
                l3.getClass();
                return l3;
            case 15:
                List list7 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l4 = (Long) C0283.f1803.m1773();
                l4.getClass();
                return l4;
            case 16:
                List list8 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l5 = (Long) C0283.f1800.m1773();
                l5.getClass();
                return l5;
            case 17:
                List list9 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l6 = (Long) C0283.f1809.m1773();
                l6.getClass();
                return l6;
            case 18:
                List list10 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1830.m1773()).longValue());
            case 19:
                List list11 = AbstractC5321.f20168;
                C0459.f2216.get();
                return (String) C0283.f1857.m1773();
            case 20:
                List list12 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1837.m1773()).longValue());
            case 21:
                List list13 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l7 = (Long) C0283.f1849.m1773();
                l7.getClass();
                return l7;
            case 22:
                List list14 = AbstractC5321.f20168;
                C0459.f2216.get();
                return (String) C0283.f1812.m1773();
            case 23:
                List list15 = AbstractC5321.f20168;
                C0459.f2216.get();
                return (String) C0283.f1845.m1773();
            case 24:
                List list16 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1823.m1773()).longValue());
            case 25:
                List list17 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1850.m1773()).longValue());
            case 26:
                List list18 = AbstractC5321.f20168;
                Boolean bool = (Boolean) C0356.f2015.m1773();
                bool.getClass();
                return bool;
            case 27:
                List list19 = AbstractC5321.f20168;
                Boolean bool2 = (Boolean) C0293.f1906.m1773();
                bool2.getClass();
                return bool2;
            case 28:
                List list20 = AbstractC5321.f20168;
                C0334.f1985.get();
                Boolean bool3 = (Boolean) C0312.f1940.m1773();
                bool3.getClass();
                return bool3;
            default:
                List list21 = AbstractC5321.f20168;
                Boolean bool4 = (Boolean) C0415.f2151.m1773();
                bool4.getClass();
                return bool4;
        }
    }

    @Override // p372.InterfaceC4518
    /* renamed from: ﹳٴ */
    public long mo7010() {
        throw new NoSuchElementException();
    }

    @Override // p366.InterfaceC4484
    /* renamed from: ﾞʻ */
    public void mo9001(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        mediaMetadataRetriever.setDataSource(new C4466((ByteBuffer) obj));
    }

    @Override // p429.InterfaceC5083
    /* renamed from: ﾞᴵ */
    public Object mo9002(String str, Provider provider) {
        return provider == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, provider);
    }
}
