package p433;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseIntArray;
import androidx.media3.datasource.HttpDataSource$InvalidResponseCodeException;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import com.google.android.gms.internal.measurement.C0344;
import com.google.android.gms.internal.measurement.ˏʻ;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p010.AbstractC0844;
import p012.C0894;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p022.C1036;
import p022.C1047;
import p027.C1090;
import p047.C1356;
import p047.C1368;
import p055.AbstractC1464;
import p055.C1474;
import p055.C1476;
import p055.C1486;
import p055.C1490;
import p055.C1495;
import p171.C2644;
import p171.InterfaceC2626;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p283.RunnableC3568;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p307.AbstractC3740;
import p364.C4441;
import p364.C4443;
import p364.C4448;
import p364.InterfaceC4436;
import p364.InterfaceC4445;
import p364.InterfaceC4453;
import p372.AbstractC4519;
import p384.C4603;
import p392.C4664;
import p392.C4676;
import p395.C4715;
import p395.InterfaceC4734;
import p420.C4936;
import p420.C4991;
import p420.InterfaceC4947;
import p420.InterfaceC4953;
import p428.InterfaceC5067;
import ᐧﹳ.ʽ;

/* renamed from: ﹶˎ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5125 implements InterfaceC4436, InterfaceC4453, InterfaceC4947, InterfaceC2646, InterfaceC4953 {

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public static final Set f19276 = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 5)));

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public int f19277;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public C1495 f19278;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final ArrayList f19279;

    /* renamed from: ʼـ, reason: contains not printable characters */
    public long f19280;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ʽ f19281;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public long f19282;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public boolean f19283;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f19284;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final SparseIntArray f19285;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public C5124 f19286;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final C0344 f19287;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final List f19288;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public C4936 f19289;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C5128 f19290;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public C5129[] f19291;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final HashSet f19292;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C4715 f19293;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C1495 f19294;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final Handler f19295;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public C1495 f19296;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final RunnableC5135 f19297;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public C1486 f19298;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public boolean f19299;

    /* renamed from: ˑ, reason: contains not printable characters */
    public boolean f19300;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public boolean f19301;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final RunnableC5135 f19302;

    /* renamed from: י, reason: contains not printable characters */
    public boolean f19303;

    /* renamed from: יﹳ, reason: contains not printable characters */
    public C5130 f19304;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final Map f19305;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public long f19306;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public boolean f19307;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C4441 f19308 = new C4441("Loader:HlsSampleStreamWrapper");

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final InterfaceC4734 f19309;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public boolean[] f19310;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public boolean f19311;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public boolean f19312;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public int f19313;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public int f19314;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f19315;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public int[] f19316;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C4443 f19317;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public boolean[] f19318;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final ʽﹳ f19319;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public int f19320;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C0894 f19321;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final int f19322;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final ArrayList f19323;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public AbstractC4519 f19324;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public int[] f19325;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public Set f19326;

    /* JADX WARN: Type inference failed for: r1v12, types: [ﹶˎ.ﾞʻ] */
    /* JADX WARN: Type inference failed for: r1v13, types: [ﹶˎ.ﾞʻ] */
    public C5125(String str, int i, ʽ r3, C5128 c5128, Map map, C4443 c4443, long j, C1495 c1495, InterfaceC4734 interfaceC4734, C4715 c4715, C0894 c0894, ʽﹳ r13, int i2) {
        this.f19284 = str;
        this.f19315 = i;
        this.f19281 = r3;
        this.f19290 = c5128;
        this.f19305 = map;
        this.f19317 = c4443;
        this.f19294 = c1495;
        this.f19309 = interfaceC4734;
        this.f19293 = c4715;
        this.f19321 = c0894;
        this.f19319 = r13;
        this.f19322 = i2;
        final int i3 = 0;
        C0344 c0344 = new C0344(5, false);
        c0344.f1997 = null;
        c0344.f2000 = false;
        c0344.f1999 = null;
        this.f19287 = c0344;
        this.f19316 = new int[0];
        Set set = f19276;
        this.f19292 = new HashSet(set.size());
        this.f19285 = new SparseIntArray(set.size());
        this.f19291 = new C5129[0];
        this.f19318 = new boolean[0];
        this.f19310 = new boolean[0];
        ArrayList arrayList = new ArrayList();
        this.f19323 = arrayList;
        this.f19288 = DesugarCollections.unmodifiableList(arrayList);
        this.f19279 = new ArrayList();
        this.f19302 = new Runnable(this) { // from class: ﹶˎ.ﾞʻ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ C5125 f19406;

            {
                this.f19406 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i3) {
                    case 0:
                        this.f19406.m10079();
                        return;
                    default:
                        C5125 c5125 = this.f19406;
                        c5125.f19311 = true;
                        c5125.m10079();
                        return;
                }
            }
        };
        final int i4 = 1;
        this.f19297 = new Runnable(this) { // from class: ﹶˎ.ﾞʻ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ C5125 f19406;

            {
                this.f19406 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i4) {
                    case 0:
                        this.f19406.m10079();
                        return;
                    default:
                        C5125 c5125 = this.f19406;
                        c5125.f19311 = true;
                        c5125.m10079();
                        return;
                }
            }
        };
        this.f19295 = AbstractC3712.m7759(null);
        this.f19306 = j;
        this.f19282 = j;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static int m10069(int i) {
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? 0 : 1;
        }
        return 3;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static C1495 m10070(C1495 c1495, C1495 c14952, boolean z) {
        String m4252;
        if (c1495 == null) {
            return c14952;
        }
        String str = c1495.f5924;
        String str2 = c14952.f5930;
        int m4250 = AbstractC1464.m4250(str2);
        if (AbstractC3712.m7754(m4250, str) == 1) {
            m4252 = AbstractC3712.m7785(m4250, str);
            str2 = AbstractC1464.m4257(m4252);
        } else {
            m4252 = AbstractC1464.m4252(str, str2);
        }
        C1490 m4300 = c14952.m4300();
        m4300.f5884 = c1495.f5937;
        m4300.f5883 = c1495.f5936;
        m4300.f5852 = AbstractC0993.m3264(c1495.f5903);
        m4300.f5859 = c1495.f5910;
        m4300.f5866 = c1495.f5919;
        m4300.f5887 = c1495.f5940;
        m4300.f5880 = z ? c1495.f5933 : -1;
        m4300.f5850 = z ? c1495.f5901 : -1;
        m4300.f5857 = m4252;
        if (m4250 == 2) {
            m4300.f5865 = c1495.f5905;
            m4300.f5854 = c1495.f5899;
            m4300.f5856 = c1495.f5900;
        }
        if (str2 != null) {
            m4300.f5861 = AbstractC1464.m4251(str2);
        }
        int i = c1495.f5916;
        if (i != -1 && m4250 == 1) {
            m4300.f5873 = i;
        }
        C1476 c1476 = c1495.f5939;
        if (c1476 != null) {
            C1476 c14762 = c14952.f5939;
            if (c14762 != null) {
                c1476 = c14762.m4281(c1476);
            }
            m4300.f5871 = c1476;
        }
        return new C1495(m4300);
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ʻٴ */
    public final void mo5121(long j) {
        C4441 c4441 = this.f19308;
        if (c4441.m8981() || m10074()) {
            return;
        }
        boolean m8979 = c4441.m8979();
        C5128 c5128 = this.f19290;
        List list = this.f19288;
        if (m8979) {
            this.f19324.getClass();
            if (c5128.f19343 != null ? false : c5128.f19348.mo9770(j, this.f19324, list)) {
                c4441.m8982();
                return;
            }
            return;
        }
        int size = list.size();
        while (size > 0 && c5128.m10087((C5130) list.get(size - 1)) == 2) {
            size--;
        }
        if (size < list.size()) {
            m10072(size);
        }
        int size2 = (c5128.f19343 != null || c5128.f19348.length() < 2) ? list.size() : c5128.f19348.mo9766(j, list);
        if (size2 < this.f19323.size()) {
            m10072(size2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p364.InterfaceC4436
    /* renamed from: ʼʼ */
    public final void mo4020(InterfaceC4445 interfaceC4445, long j, long j2) {
        AbstractC4519 abstractC4519 = (AbstractC4519) interfaceC4445;
        this.f19324 = null;
        if (abstractC4519 instanceof C5123) {
            C5123 c5123 = (C5123) abstractC4519;
            byte[] bArr = c5123.f19266;
            C5128 c5128 = this.f19290;
            c5128.f19337 = bArr;
            C4603 c4603 = c5128.f19335;
            Uri uri = c5123.f16905.f13577;
            byte[] bArr2 = c5123.f19268;
            bArr2.getClass();
            C1036 c1036 = (C1036) c4603.f17126;
            uri.getClass();
        }
        long j3 = abstractC4519.f16900;
        Uri uri2 = abstractC4519.f16907.f13539;
        C4991 c4991 = new C4991(j2);
        this.f19321.getClass();
        this.f19319.ˏי(c4991, abstractC4519.f16899, this.f19315, abstractC4519.f16901, abstractC4519.f16906, abstractC4519.f16903, abstractC4519.f16904, abstractC4519.f16902);
        if (this.f19299) {
            this.f19281.ﾞᴵ(this);
            return;
        }
        C4676 c4676 = new C4676();
        c4676.f17546 = this.f19306;
        mo5129(new C4664(c4676));
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m10071(int i) {
        int i2 = i;
        while (true) {
            ArrayList arrayList = this.f19323;
            if (i2 >= arrayList.size()) {
                C5130 c5130 = (C5130) arrayList.get(i);
                for (int i3 = 0; i3 < this.f19291.length; i3++) {
                    if (this.f19291[i3].m9818() > c5130.m10093(i3)) {
                        return false;
                    }
                }
                return true;
            }
            if (((C5130) arrayList.get(i2)).f19354) {
                return false;
            }
            i2++;
        }
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ʽﹳ */
    public final void mo4022(InterfaceC4445 interfaceC4445, long j, long j2, int i) {
        C4991 c4991;
        AbstractC4519 abstractC4519 = (AbstractC4519) interfaceC4445;
        if (i == 0) {
            long j3 = abstractC4519.f16900;
            c4991 = new C4991(abstractC4519.f16905);
        } else {
            long j4 = abstractC4519.f16900;
            Uri uri = abstractC4519.f16907.f13539;
            c4991 = new C4991(j2);
        }
        C4991 c49912 = c4991;
        this.f19319.ʾᵎ(c49912, abstractC4519.f16899, this.f19315, abstractC4519.f16901, abstractC4519.f16906, abstractC4519.f16903, abstractC4519.f16904, abstractC4519.f16902, i);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m10072(int i) {
        ArrayList arrayList;
        AbstractC3731.m7857(!this.f19308.m8979());
        while (true) {
            arrayList = this.f19323;
            if (i >= arrayList.size()) {
                i = -1;
                break;
            } else if (m10071(i)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        long j = m10078().f16902;
        C5130 c5130 = (C5130) arrayList.get(i);
        AbstractC3712.m7775(arrayList, i, arrayList.size());
        for (int i2 = 0; i2 < this.f19291.length; i2++) {
            this.f19291[i2].m9827(c5130.m10093(i2));
        }
        if (arrayList.isEmpty()) {
            this.f19282 = this.f19306;
        } else {
            ((C5130) AbstractC1004.m3281(arrayList)).f19381 = true;
        }
        this.f19283 = false;
        this.f19319.ˊʻ(this.f19320, c5130.f16904, j);
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final C4936 m10073(C1474[] c1474Arr) {
        for (int i = 0; i < c1474Arr.length; i++) {
            C1474 c1474 = c1474Arr[i];
            C1495[] c1495Arr = new C1495[c1474.f5770];
            for (int i2 = 0; i2 < c1474.f5770; i2++) {
                C1495 c1495 = c1474.f5767[i2];
                int mo8997 = this.f19309.mo8997(c1495);
                C1490 m4300 = c1495.m4300();
                m4300.f5879 = mo8997;
                c1495Arr[i2] = new C1495(m4300);
            }
            c1474Arr[i] = new C1474(c1474.f5769, c1495Arr);
        }
        return new C4936(c1474Arr);
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˈ */
    public final boolean mo5125() {
        return this.f19308.m8979();
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final boolean m10074() {
        return this.f19282 != -9223372036854775807L;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˉˆ */
    public final long mo5127() {
        if (this.f19283) {
            return Long.MIN_VALUE;
        }
        if (m10074()) {
            return this.f19282;
        }
        long j = this.f19306;
        C5130 m10078 = m10078();
        if (!m10078.f19370) {
            ArrayList arrayList = this.f19323;
            m10078 = arrayList.size() > 1 ? (C5130) AbstractC3740.m7939(2, arrayList) : null;
        }
        if (m10078 != null) {
            j = Math.max(j, m10078.f16902);
        }
        if (this.f19311) {
            for (C5129 c5129 : this.f19291) {
                j = Math.max(j, c5129.m9829());
            }
        }
        return j;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m10075() {
        for (C5129 c5129 : this.f19291) {
            c5129.m9824(this.f19312);
        }
        this.f19312 = false;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final void m10076() {
        this.f19308.mo7443();
        C5128 c5128 = this.f19290;
        BehindLiveWindowException behindLiveWindowException = c5128.f19343;
        if (behindLiveWindowException != null) {
            throw behindLiveWindowException;
        }
        Uri uri = c5128.f19338;
        if (uri == null || !uri.equals(c5128.f19333)) {
            return;
        }
        C1356 c1356 = c5128.f19342;
        C1368 c1368 = (C1368) c1356.f5215.get(c5128.f19338);
        c1368.f5367.mo7443();
        IOException iOException = c1368.f5365;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // p171.InterfaceC2646
    /* renamed from: ˑﹳ */
    public final void mo1133(InterfaceC2626 interfaceC2626) {
    }

    @Override // p420.InterfaceC4953
    /* renamed from: יـ */
    public final void mo9752() {
        this.f19295.post(this.f19302);
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ـˆ */
    public final C1047 mo4023(InterfaceC4445 interfaceC4445, long j, long j2, IOException iOException, int i) {
        boolean z;
        C1047 c1047;
        int i2;
        AbstractC4519 abstractC4519 = (AbstractC4519) interfaceC4445;
        boolean z2 = abstractC4519 instanceof C5130;
        if (z2 && !((C5130) abstractC4519).m10091() && (iOException instanceof HttpDataSource$InvalidResponseCodeException) && ((i2 = ((HttpDataSource$InvalidResponseCodeException) iOException).f1141) == 410 || i2 == 404)) {
            return C4441.f16590;
        }
        long j3 = abstractC4519.f16907.f13541;
        Uri uri = abstractC4519.f16907.f13539;
        C4991 c4991 = new C4991(j2);
        AbstractC3712.m7755(abstractC4519.f16904);
        AbstractC3712.m7755(abstractC4519.f16902);
        C1090 c1090 = new C1090(i, 11, iOException);
        C5128 c5128 = this.f19290;
        C4448 c4448 = ˏʻ.ⁱˊ(c5128.f19348);
        C0894 c0894 = this.f19321;
        c0894.getClass();
        C1047 m3142 = C0894.m3142(c4448, c1090);
        if (m3142 == null || m3142.f4127 != 2) {
            z = false;
        } else {
            long j4 = m3142.f4128;
            InterfaceC5067 interfaceC5067 = c5128.f19348;
            z = interfaceC5067.mo9761(interfaceC5067.mo9757(c5128.f19344.m4280(abstractC4519.f16901)), j4);
        }
        if (z) {
            if (z2 && j3 == 0) {
                ArrayList arrayList = this.f19323;
                AbstractC3731.m7857(((C5130) arrayList.remove(arrayList.size() - 1)) == abstractC4519);
                if (arrayList.isEmpty()) {
                    this.f19282 = this.f19306;
                } else {
                    ((C5130) AbstractC1004.m3281(arrayList)).f19381 = true;
                }
            }
            c1047 = C4441.f16592;
        } else {
            long m3143 = c0894.m3143(c1090);
            c1047 = m3143 != -9223372036854775807L ? new C1047(m3143, false, 0) : C4441.f16591;
        }
        C1047 c10472 = c1047;
        boolean m3386 = c10472.m3386();
        this.f19319.ʽﹳ(c4991, abstractC4519.f16899, this.f19315, abstractC4519.f16901, abstractC4519.f16906, abstractC4519.f16903, abstractC4519.f16904, abstractC4519.f16902, iOException, !m3386);
        if (!m3386) {
            this.f19324 = null;
        }
        if (z) {
            if (!this.f19299) {
                C4676 c4676 = new C4676();
                c4676.f17546 = this.f19306;
                mo5129(new C4664(c4676));
                return c10472;
            }
            this.f19281.ﾞᴵ(this);
        }
        return c10472;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m10077(C1474[] c1474Arr, int... iArr) {
        this.f19289 = m10073(c1474Arr);
        this.f19326 = new HashSet();
        for (int i : iArr) {
            this.f19326.add(this.f19289.m9741(i));
        }
        this.f19277 = 0;
        this.f19295.post(new RunnableC3568(16, this.f19281));
        this.f19299 = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0428  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x02e0  */
    @Override // p420.InterfaceC4947
    /* renamed from: ٴﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo5129(p392.C4664 r73) {
        /*
            Method dump skipped, instructions count: 1343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p433.C5125.mo5129(ⁱי.ˉٴ):boolean");
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C5130 m10078() {
        return (C5130) AbstractC3740.m7939(1, this.f19323);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m10079() {
        int i;
        if (!this.f19307 && this.f19325 == null && this.f19311) {
            int i2 = 0;
            for (C5129 c5129 : this.f19291) {
                if (c5129.m9820() == null) {
                    return;
                }
            }
            C4936 c4936 = this.f19289;
            if (c4936 != null) {
                int i3 = c4936.f18387;
                int[] iArr = new int[i3];
                this.f19325 = iArr;
                Arrays.fill(iArr, -1);
                for (int i4 = 0; i4 < i3; i4++) {
                    int i5 = 0;
                    while (true) {
                        C5129[] c5129Arr = this.f19291;
                        if (i5 < c5129Arr.length) {
                            C1495 m9820 = c5129Arr[i5].m9820();
                            AbstractC3731.m7868(m9820);
                            C1495 c1495 = this.f19289.m9741(i4).f5767[0];
                            String str = m9820.f5930;
                            String str2 = c1495.f5930;
                            int m4250 = AbstractC1464.m4250(str);
                            if (m4250 == 3) {
                                if (Objects.equals(str, str2)) {
                                    if ((!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) || m9820.f5927 == c1495.f5927) {
                                        break;
                                    }
                                } else {
                                    continue;
                                }
                                i5++;
                            } else if (m4250 == AbstractC1464.m4250(str2)) {
                                break;
                            } else {
                                i5++;
                            }
                        }
                    }
                    this.f19325[i4] = i5;
                }
                ArrayList arrayList = this.f19279;
                int size = arrayList.size();
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    ((C5127) obj).m10083();
                }
                return;
            }
            int length = this.f19291.length;
            int i6 = 0;
            int i7 = -1;
            int i8 = -2;
            while (true) {
                int i9 = 1;
                if (i6 >= length) {
                    break;
                }
                C1495 m98202 = this.f19291[i6].m9820();
                AbstractC3731.m7868(m98202);
                String str3 = m98202.f5930;
                if (AbstractC1464.m4256(str3)) {
                    i9 = 2;
                } else if (!AbstractC1464.m4258(str3)) {
                    i9 = AbstractC1464.m4260(str3) ? 3 : -2;
                }
                if (m10069(i9) > m10069(i8)) {
                    i7 = i6;
                    i8 = i9;
                } else if (i9 == i8 && i7 != -1) {
                    i7 = -1;
                }
                i6++;
            }
            C1474 c1474 = this.f19290.f19344;
            int i10 = c1474.f5770;
            this.f19277 = -1;
            this.f19325 = new int[length];
            for (int i11 = 0; i11 < length; i11++) {
                this.f19325[i11] = i11;
            }
            C1474[] c1474Arr = new C1474[length];
            int i12 = 0;
            while (i12 < length) {
                C1495 m98203 = this.f19291[i12].m9820();
                AbstractC3731.m7868(m98203);
                String str4 = this.f19284;
                C1495 c14952 = this.f19294;
                if (i12 == i7) {
                    C1495[] c1495Arr = new C1495[i10];
                    for (int i13 = i2; i13 < i10; i13++) {
                        C1495 c14953 = c1474.f5767[i13];
                        if (i8 == 1 && c14952 != null) {
                            c14953 = c14953.m4298(c14952);
                        }
                        c1495Arr[i13] = i10 == 1 ? m98203.m4298(c14953) : m10070(c14953, m98203, true);
                    }
                    c1474Arr[i12] = new C1474(str4, c1495Arr);
                    this.f19277 = i12;
                    i = 0;
                } else {
                    if (i8 != 2 || !AbstractC1464.m4258(m98203.f5930)) {
                        c14952 = null;
                    }
                    StringBuilder m3017 = AbstractC0844.m3017(str4, ":muxed:");
                    m3017.append(i12 < i7 ? i12 : i12 - 1);
                    i = 0;
                    c1474Arr[i12] = new C1474(m3017.toString(), m10070(c14952, m98203, false));
                }
                i12++;
                i2 = i;
            }
            int i14 = i2;
            this.f19289 = m10073(c1474Arr);
            AbstractC3731.m7857(this.f19326 == null ? 1 : i14);
            this.f19326 = Collections.EMPTY_SET;
            this.f19299 = true;
            this.f19281.ʽﹳ();
        }
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final boolean m10080(boolean z, long j) {
        C5130 c5130;
        boolean z2;
        boolean m9816;
        this.f19306 = j;
        if (m10074()) {
            this.f19282 = j;
            return true;
        }
        boolean z3 = this.f19290.f19345;
        ArrayList arrayList = this.f19323;
        if (z3) {
            for (int i = 0; i < arrayList.size(); i++) {
                c5130 = (C5130) arrayList.get(i);
                if (c5130.f16904 == j) {
                    break;
                }
            }
        }
        c5130 = null;
        if (this.f19311 && !z && !arrayList.isEmpty()) {
            int length = this.f19291.length;
            for (int i2 = 0; i2 < length; i2++) {
                C5129 c5129 = this.f19291[i2];
                if (c5130 != null) {
                    m9816 = c5129.m9821(c5130.m10093(i2));
                } else {
                    long mo5134 = mo5134();
                    m9816 = c5129.m9816(mo5134 == Long.MIN_VALUE || j < mo5134, j);
                }
                if (!m9816 && (this.f19318[i2] || !this.f19301)) {
                    z2 = false;
                    break;
                }
            }
            z2 = true;
            if (z2) {
                return false;
            }
        }
        this.f19282 = j;
        this.f19283 = false;
        arrayList.clear();
        C4441 c4441 = this.f19308;
        if (!c4441.m8979()) {
            c4441.f16593 = null;
            m10075();
            return true;
        }
        if (this.f19311) {
            for (C5129 c51292 : this.f19291) {
                c51292.m9822();
            }
        }
        c4441.m8982();
        return true;
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ᵎﹶ */
    public final void mo4024(InterfaceC4445 interfaceC4445, long j, long j2, boolean z) {
        AbstractC4519 abstractC4519 = (AbstractC4519) interfaceC4445;
        this.f19324 = null;
        long j3 = abstractC4519.f16900;
        Uri uri = abstractC4519.f16907.f13539;
        C4991 c4991 = new C4991(j2);
        this.f19321.getClass();
        this.f19319.ﹳᐧ(c4991, abstractC4519.f16899, this.f19315, abstractC4519.f16901, abstractC4519.f16906, abstractC4519.f16903, abstractC4519.f16904, abstractC4519.f16902);
        if (z) {
            return;
        }
        if (m10074() || this.f19314 == 0) {
            m10075();
        }
        if (this.f19314 > 0) {
            this.f19281.ﾞᴵ(this);
        }
    }

    @Override // p171.InterfaceC2646
    /* renamed from: ᵔᵢ */
    public final void mo1137() {
        this.f19300 = true;
        this.f19295.post(this.f19297);
    }

    @Override // p171.InterfaceC2646
    /* renamed from: ᵔﹳ */
    public final InterfaceC2639 mo1138(int i, int i2) {
        C5129[] c5129Arr;
        C5129 c5129;
        int i3 = 0;
        while (true) {
            c5129Arr = this.f19291;
            if (i3 >= c5129Arr.length) {
                c5129 = null;
                break;
            }
            if (this.f19316[i3] == i) {
                c5129 = c5129Arr[i3];
                break;
            }
            i3++;
        }
        if (c5129 == null) {
            if (this.f19300) {
                AbstractC3731.m7850("HlsSampleStreamWrapper", "Unmapped track with id " + i + " of type " + i2);
                return new C2644();
            }
            int length = c5129Arr.length;
            boolean z = i2 == 1 || i2 == 2;
            C5129 c51292 = new C5129(this.f19317, this.f19309, this.f19293, this.f19305);
            c51292.f18547 = this.f19306;
            if (z) {
                c51292.f19352 = this.f19298;
                c51292.f18559 = true;
            }
            long j = this.f19280;
            if (c51292.f18546 != j) {
                c51292.f18546 = j;
                c51292.f18559 = true;
            }
            if (this.f19304 != null) {
                c51292.f18537 = r4.f19375;
            }
            c51292.f18564 = this;
            int i4 = length + 1;
            int[] copyOf = Arrays.copyOf(this.f19316, i4);
            this.f19316 = copyOf;
            copyOf[length] = i;
            C5129[] c5129Arr2 = this.f19291;
            String str = AbstractC3712.f14481;
            Object[] copyOf2 = Arrays.copyOf(c5129Arr2, c5129Arr2.length + 1);
            copyOf2[c5129Arr2.length] = c51292;
            this.f19291 = (C5129[]) copyOf2;
            boolean[] copyOf3 = Arrays.copyOf(this.f19318, i4);
            this.f19318 = copyOf3;
            copyOf3[length] = z;
            this.f19301 |= z;
            this.f19292.add(Integer.valueOf(i2));
            this.f19285.append(i2, length);
            if (m10069(i2) > m10069(this.f19320)) {
                this.f19313 = length;
                this.f19320 = i2;
            }
            this.f19310 = Arrays.copyOf(this.f19310, i4);
            c5129 = c51292;
        }
        if (i2 != 5) {
            return c5129;
        }
        if (this.f19286 == null) {
            this.f19286 = new C5124(c5129, this.f19322);
        }
        return this.f19286;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m10081() {
        AbstractC3731.m7857(this.f19299);
        this.f19289.getClass();
        this.f19326.getClass();
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ﾞʻ */
    public final long mo5134() {
        if (m10074()) {
            return this.f19282;
        }
        if (this.f19283) {
            return Long.MIN_VALUE;
        }
        return m10078().f16902;
    }

    @Override // p364.InterfaceC4453
    /* renamed from: ﾞᴵ */
    public final void mo9004() {
        for (C5129 c5129 : this.f19291) {
            c5129.m9813();
        }
    }
}
