package p366;

import android.graphics.Bitmap;
import android.media.MediaDrmException;
import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.gms.internal.measurement.C0255;
import com.google.android.gms.internal.measurement.C0283;
import com.google.android.gms.internal.measurement.C0291;
import com.google.android.gms.internal.measurement.C0294;
import com.google.android.gms.internal.measurement.C0300;
import com.google.android.gms.internal.measurement.C0303;
import com.google.android.gms.internal.measurement.C0312;
import com.google.android.gms.internal.measurement.C0334;
import com.google.android.gms.internal.measurement.C0459;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import p003.C0783;
import p223.C3056;
import p229.C3125;
import p257.InterfaceC3396;
import p379.C4545;
import p395.C4716;
import p395.C4722;
import p395.InterfaceC4730;
import p419.InterfaceC4934;
import p421.InterfaceC5000;
import p429.InterfaceC5083;
import p447.AbstractC5321;
import p447.InterfaceC5233;
import p456.InterfaceC5377;
import p456.InterfaceC5378;
import p456.InterfaceC5379;
import p460.C5413;
import ᐧﹳ.ʽ;

/* renamed from: ᵔﹶ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4486 implements InterfaceC4474, InterfaceC5377, InterfaceC4730, InterfaceC4934, InterfaceC5083, InterfaceC5233 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f16829;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16822 = new C4486(9);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16809 = new C4486(10);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16812 = new C4486(11);

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16823 = new C4486(12);

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16815 = new C4486(13);

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16821 = new C4486(14);

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16814 = new C4486(15);

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16825 = new C4486(16);

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16820 = new C4486(17);

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16824 = new C4486(18);

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16826 = new C4486(19);

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16810 = new C4486(20);

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16827 = new C4486(21);

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16811 = new C4486(22);

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16818 = new C4486(23);

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16817 = new C4486(24);

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16816 = new C4486(25);

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16808 = new C4486(26);

    /* renamed from: ـˏ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16819 = new C4486(27);

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16828 = new C4486(28);

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public static final /* synthetic */ C4486 f16813 = new C4486(29);

    public C4486() {
        this.f16829 = 3;
        if (Build.VERSION.SDK_INT >= 35) {
        }
    }

    public /* synthetic */ C4486(int i) {
        this.f16829 = i;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static final boolean m9046() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void mo9047(byte[] bArr) {
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public C4722 mo9048(byte[] bArr, List list, int i, HashMap hashMap) {
        throw new IllegalStateException();
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo9049(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public byte[] mo9050() {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public byte[] mo9051(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // p456.InterfaceC5377
    /* renamed from: ˈ */
    public InterfaceC5379 mo8992(String str) {
        return new C3125(str);
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C4716 mo9052() {
        throw new IllegalStateException();
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public void mo9053(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ˏי, reason: contains not printable characters */
    public boolean mo9054(String str, byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // p366.InterfaceC4474
    /* renamed from: ˑﹳ */
    public void mo6836(Bitmap bitmap, InterfaceC3396 interfaceC3396) {
    }

    @Override // p456.InterfaceC5377
    /* renamed from: יـ */
    public C4545 mo8995() {
        C4545 c4545 = new C4545(2);
        try {
            c4545.f17030 = Cipher.getInstance("RC4");
            return c4545;
        } catch (NoSuchAlgorithmException | NoSuchProviderException | NoSuchPaddingException e) {
            throw new Exception(e);
        }
    }

    @Override // p366.InterfaceC4474
    /* renamed from: ـˆ */
    public void mo6838() {
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [ﾞˎ.ⁱˊ, ⁱʽ.ﹳٴ, java.lang.Object] */
    @Override // p456.InterfaceC5377
    /* renamed from: ٴﹶ */
    public InterfaceC5378 mo8996() {
        ?? obj = new Object();
        try {
            obj.f17126 = MessageDigest.getInstance("MD4");
            return obj;
        } catch (NoSuchAlgorithmException unused) {
            obj.f17126 = new C5413();
            return obj;
        } catch (NoSuchProviderException e) {
            throw new Exception(e);
        }
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Map mo9055(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // p419.InterfaceC4934
    /* renamed from: ᵔʾ */
    public long mo9045() {
        return SystemClock.elapsedRealtime();
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public void mo9056(ʽ r1) {
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int mo9057() {
        return 1;
    }

    @Override // p447.InterfaceC5233
    /* renamed from: ⁱˊ */
    public Object mo8999() {
        switch (this.f16829) {
            case 9:
                return new Boolean(((Boolean) C0303.f1927.m1773()).booleanValue());
            case 10:
                List list = AbstractC5321.f20168;
                Boolean bool = (Boolean) C0291.f1902.m1773();
                bool.getClass();
                return bool;
            case 11:
                List list2 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1853.m1773()).longValue());
            case 12:
                List list3 = AbstractC5321.f20168;
                C0459.f2216.get();
                return (String) C0283.f1858.m1773();
            case 13:
                List list4 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l = (Long) C0283.f1865.m1773();
                l.getClass();
                return l;
            case 14:
                List list5 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1817.m1773()).longValue());
            case 15:
                List list6 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l2 = (Long) C0283.f1871.m1773();
                l2.getClass();
                return l2;
            case 16:
                List list7 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l3 = (Long) C0283.f1802.m1773();
                l3.getClass();
                return l3;
            case 17:
                List list8 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l4 = (Long) C0283.f1827.m1773();
                l4.getClass();
                return l4;
            case 18:
                List list9 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l5 = (Long) C0283.f1821.m1773();
                l5.getClass();
                return l5;
            case 19:
                List list10 = AbstractC5321.f20168;
                C0300.f1923.get();
                Boolean bool2 = (Boolean) C0294.f1912.m1773();
                bool2.getClass();
                return bool2;
            case 20:
                List list11 = AbstractC5321.f20168;
                C0300.f1923.get();
                return Integer.valueOf((int) ((Long) C0294.f1909.m1773()).longValue());
            case 21:
                List list12 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1816.m1773()).longValue());
            case 22:
                List list13 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1804.m1773()).longValue());
            case 23:
                List list14 = AbstractC5321.f20168;
                C0459.f2216.get();
                return (String) C0283.f1819.m1773();
            case 24:
                List list15 = AbstractC5321.f20168;
                C0459.f2216.get();
                Long l6 = (Long) C0283.f1813.m1773();
                l6.getClass();
                return l6;
            case 25:
                List list16 = AbstractC5321.f20168;
                C0459.f2216.get();
                Boolean bool3 = (Boolean) C0283.f1805.m1773();
                bool3.getClass();
                return bool3;
            case 26:
                List list17 = AbstractC5321.f20168;
                C0459.f2216.get();
                return Integer.valueOf((int) ((Long) C0283.f1818.m1773()).longValue());
            case 27:
                List list18 = AbstractC5321.f20168;
                return Integer.valueOf((int) ((Long) C0255.f1752.m1773()).longValue());
            case 28:
                List list19 = AbstractC5321.f20168;
                C0334.f1985.get();
                Boolean bool4 = (Boolean) C0312.f1941.m1773();
                bool4.getClass();
                return bool4;
            default:
                List list20 = AbstractC5321.f20168;
                C0334.f1985.get();
                Boolean bool5 = (Boolean) C0312.f1939.m1773();
                bool5.getClass();
                return bool5;
        }
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void mo9058() {
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public InterfaceC5000 mo9059(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // p395.InterfaceC4730
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public /* synthetic */ void mo9060(byte[] bArr, C0783 c0783) {
    }

    @Override // p429.InterfaceC5083
    /* renamed from: ﾞᴵ */
    public Object mo9002(String str, Provider provider) {
        switch (this.f16829) {
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
            default:
                return provider == null ? MessageDigest.getInstance(str) : MessageDigest.getInstance(str, provider);
        }
    }
}
