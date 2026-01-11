package p047;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p012.C0894;
import p017.C0987;
import p022.C1047;
import p027.C1090;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p305.AbstractC3712;
import p364.C4441;
import p364.C4449;
import p364.InterfaceC4436;
import p364.InterfaceC4445;
import p420.C4991;
import p433.C5122;
import ʻʿ.ᵔﹳ;
import ᐧﹳ.ʽ;

/* renamed from: ʽˑ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1356 implements InterfaceC4436 {

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static final ᵔﹳ f5211 = new ᵔﹳ(23);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C0894 f5212;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ʽ f5213;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f5214;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public Handler f5216;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public ʽﹳ f5217;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C1360 f5218;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public C4441 f5219;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC1370 f5220;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public Uri f5222;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C5122 f5223;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public C1371 f5224;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f5221 = new CopyOnWriteArrayList();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final HashMap f5215 = new HashMap();

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public long f5225 = -9223372036854775807L;

    public C1356(ʽ r1, C0894 c0894, InterfaceC1370 interfaceC1370) {
        this.f5213 = r1;
        this.f5220 = interfaceC1370;
        this.f5212 = c0894;
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final void mo4020(InterfaceC4445 interfaceC4445, long j, long j2) {
        C1360 c1360;
        C4449 c4449 = (C4449) interfaceC4445;
        AbstractC1355 abstractC1355 = (AbstractC1355) c4449.f16661;
        boolean z = abstractC1355 instanceof C1371;
        if (z) {
            String str = abstractC1355.f5210;
            C1360 c13602 = C1360.f5244;
            Uri parse = Uri.parse(str);
            C1490 c1490 = new C1490();
            c1490.f5884 = "0";
            c1490.f5886 = AbstractC1464.m4251("application/x-mpegURL");
            List singletonList = Collections.singletonList(new C1365(parse, new C1495(c1490), null, null, null, null));
            List list = Collections.EMPTY_LIST;
            c1360 = new C1360("", list, singletonList, list, list, list, list, null, null, false, Collections.EMPTY_MAP, list);
        } else {
            c1360 = (C1360) abstractC1355;
        }
        this.f5218 = c1360;
        this.f5222 = ((C1365) c1360.f5248.get(0)).f5281;
        this.f5221.add(new C1369(this));
        List list2 = c1360.f5247;
        int size = list2.size();
        for (int i = 0; i < size; i++) {
            Uri uri = (Uri) list2.get(i);
            this.f5215.put(uri, new C1368(this, uri));
        }
        Uri uri2 = c4449.f16660.f13539;
        C4991 c4991 = new C4991(j2);
        C1368 c1368 = (C1368) this.f5215.get(this.f5222);
        if (z) {
            c1368.m4049((C1371) abstractC1355, c4991);
        } else {
            c1368.m4045(false);
        }
        this.f5212.getClass();
        this.f5217.יـ(c4991, 4);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m4021(Uri uri) {
        int i;
        C1368 c1368 = (C1368) this.f5215.get(uri);
        if (c1368.f5362 == null) {
            return false;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long max = Math.max(30000L, AbstractC3712.m7755(c1368.f5362.f5376));
        C1371 c1371 = c1368.f5362;
        return c1371.f5380 || (i = c1371.f5378) == 2 || i == 1 || c1368.f5368 + max > elapsedRealtime;
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void mo4022(InterfaceC4445 interfaceC4445, long j, long j2, int i) {
        C4991 c4991;
        C4449 c4449 = (C4449) interfaceC4445;
        if (i == 0) {
            long j3 = c4449.f16659;
            c4991 = new C4991(c4449.f16662);
        } else {
            long j4 = c4449.f16659;
            Uri uri = c4449.f16660.f13539;
            c4991 = new C4991(j2);
        }
        this.f5217.ʾᵎ(c4991, c4449.f16658, -1, (C1495) null, 0, (Object) null, -9223372036854775807L, -9223372036854775807L, i);
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ـˆ, reason: contains not printable characters */
    public final C1047 mo4023(InterfaceC4445 interfaceC4445, long j, long j2, IOException iOException, int i) {
        C4449 c4449 = (C4449) interfaceC4445;
        long j3 = c4449.f16659;
        Uri uri = c4449.f16660.f13539;
        C4991 c4991 = new C4991(j2);
        int i2 = c4449.f16658;
        long m3143 = this.f5212.m3143(new C1090(i, 11, iOException));
        boolean z = m3143 == -9223372036854775807L;
        this.f5217.ʻٴ(c4991, i2, iOException, z);
        return z ? C4441.f16591 : new C1047(m3143, false, 0);
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo4024(InterfaceC4445 interfaceC4445, long j, long j2, boolean z) {
        C4449 c4449 = (C4449) interfaceC4445;
        long j3 = c4449.f16659;
        Uri uri = c4449.f16660.f13539;
        C4991 c4991 = new C4991(j2);
        this.f5212.getClass();
        this.f5217.ﹳᐧ(c4991, 4, -1, (C1495) null, 0, (Object) null, -9223372036854775807L, -9223372036854775807L);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Uri m4025(Uri uri) {
        C1366 c1366;
        C1371 c1371 = this.f5224;
        if (c1371 == null || !c1371.f5373.f5272 || (c1366 = (C1366) ((C0987) c1371.f5381).get(uri)) == null) {
            return uri;
        }
        Uri.Builder buildUpon = uri.buildUpon();
        buildUpon.appendQueryParameter("_HLS_msn", String.valueOf(c1366.f5284));
        int i = c1366.f5283;
        if (i != -1) {
            buildUpon.appendQueryParameter("_HLS_part", String.valueOf(i));
        }
        return buildUpon.build();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1371 m4026(Uri uri, boolean z) {
        HashMap hashMap = this.f5215;
        C1371 c1371 = ((C1368) hashMap.get(uri)).f5362;
        if (c1371 != null && z) {
            if (!uri.equals(this.f5222)) {
                List list = this.f5218.f5248;
                int i = 0;
                while (true) {
                    if (i >= list.size()) {
                        break;
                    }
                    if (uri.equals(((C1365) list.get(i)).f5281)) {
                        C1371 c13712 = this.f5224;
                        if (c13712 == null || !c13712.f5380) {
                            this.f5222 = uri;
                            C1368 c1368 = (C1368) hashMap.get(uri);
                            C1371 c13713 = c1368.f5362;
                            if (c13713 == null || !c13713.f5380) {
                                c1368.m4047(m4025(uri));
                            } else {
                                this.f5224 = c13713;
                                this.f5223.m10068(c13713);
                            }
                        }
                    } else {
                        i++;
                    }
                }
            }
            C1368 c13682 = (C1368) hashMap.get(uri);
            C1371 c13714 = c13682.f5362;
            if (!c13682.f5369) {
                c13682.f5369 = true;
                if (c13714 != null && !c13714.f5380) {
                    c13682.m4045(true);
                }
            }
        }
        return c1371;
    }
}
