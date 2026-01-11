package p420;

import android.content.Context;
import android.net.Uri;
import androidx.leanback.widget.C0121;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p000.C0754;
import p012.C0894;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.AbstractC1464;
import p055.C1443;
import p055.C1444;
import p055.C1450;
import p055.C1451;
import p055.C1452;
import p055.C1473;
import p055.C1480;
import p055.C1482;
import p055.C1484;
import p055.C1490;
import p055.C1491;
import p055.C1495;
import p171.C2631;
import p229.C3125;
import p266.InterfaceC3452;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p395.InterfaceC4721;
import ˋⁱ.ﾞᴵ;

/* renamed from: ﹳᵢ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4982 implements InterfaceC4937 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f18594;

    /* renamed from: ʽ, reason: contains not printable characters */
    public ﾞᴵ f18595;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f18596;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f18597;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final float f18598;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final float f18599;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3125 f18600;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0754 f18601;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f18602;

    /* JADX WARN: Type inference failed for: r4v1, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    public C4982(Context context, C2631 c2631) {
        C3125 c3125 = new C3125(context, new C0121(6));
        this.f18600 = c3125;
        ?? obj = new Object();
        this.f18595 = obj;
        C0754 c0754 = new C0754(c2631, obj);
        this.f18601 = c0754;
        if (c3125 != ((C3125) c0754.f3123)) {
            c0754.f3123 = c3125;
            ((HashMap) c0754.f3117).clear();
            ((HashMap) c0754.f3118).clear();
        }
        this.f18596 = -9223372036854775807L;
        this.f18597 = -9223372036854775807L;
        this.f18602 = -9223372036854775807L;
        this.f18598 = -3.4028235E38f;
        this.f18599 = -3.4028235E38f;
        this.f18594 = true;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static InterfaceC4937 m9834(Class cls, InterfaceC3452 interfaceC3452) {
        try {
            return (InterfaceC4937) cls.getConstructor(InterfaceC3452.class).newInstance(interfaceC3452);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [ʼʻ.ᵎⁱ] */
    /* JADX WARN: Type inference failed for: r12v0, types: [ʽⁱ.ˏי, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v39, types: [ʽⁱ.ʻٴ, ʽⁱ.ʽﹳ] */
    @Override // p420.InterfaceC4937
    /* renamed from: ʽ */
    public final InterfaceC4975 mo788(C1480 c1480) {
        int i;
        int i2;
        C1480 c14802;
        C1452 c1452;
        Uri uri;
        String str;
        List list;
        C0956 c0956;
        long j;
        c1480.f5781.getClass();
        String scheme = c1480.f5781.f5629.getScheme();
        if (scheme != null && scheme.equals("ssai")) {
            throw null;
        }
        if (Objects.equals(c1480.f5781.f5628, "application/x-image-uri")) {
            long j2 = c1480.f5781.f5627;
            String str2 = AbstractC3712.f14481;
            throw null;
        }
        C1444 c1444 = c1480.f5781;
        Uri uri2 = c1444.f5629;
        String str3 = c1444.f5628;
        if (str3 != null) {
            char c = 65535;
            switch (str3.hashCode()) {
                case -979127466:
                    if (str3.equals("application/x-mpegURL")) {
                        c = 0;
                        break;
                    }
                    break;
                case -156749520:
                    if (str3.equals("application/vnd.ms-sstr+xml")) {
                        c = 1;
                        break;
                    }
                    break;
                case 64194685:
                    if (str3.equals("application/dash+xml")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1154777587:
                    if (str3.equals("application/x-rtsp")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    i = 2;
                    break;
                case 1:
                    i = 1;
                    break;
                case 2:
                    i = 0;
                    break;
                case 3:
                    i = 3;
                    break;
                default:
                    i = 4;
                    break;
            }
        } else {
            i = AbstractC3712.m7801(uri2);
        }
        if (c1480.f5781.f5627 != -9223372036854775807L) {
            C2631 c2631 = (C2631) this.f18601.f3116;
            synchronized (c2631) {
                c2631.f9976 = 1;
            }
        }
        try {
            InterfaceC4937 m2749 = this.f18601.m2749(i);
            C1473 m4242 = c1480.f5778.m4242();
            C1452 c14522 = c1480.f5778;
            if (c14522.f5651 == -9223372036854775807L) {
                m4242.f5765 = this.f18596;
            }
            if (c14522.f5648 == -3.4028235E38f) {
                m4242.f5762 = this.f18598;
            }
            if (c14522.f5649 == -3.4028235E38f) {
                m4242.f5763 = this.f18599;
            }
            if (c14522.f5650 == -9223372036854775807L) {
                m4242.f5764 = this.f18597;
            }
            if (c14522.f5647 == -9223372036854775807L) {
                m4242.f5761 = this.f18602;
            }
            C1452 c14523 = new C1452(m4242);
            if (c14523.equals(c1480.f5778)) {
                i2 = 1;
                c14802 = c1480;
            } else {
                new C1484();
                List list2 = Collections.EMPTY_LIST;
                C0956 c09562 = C0956.f3901;
                C1491 c1491 = C1491.f5888;
                C1443 c1443 = c1480.f5780;
                ?? obj = new Object();
                obj.f5751 = c1443.f5646;
                String str4 = c1480.f5782;
                C1482 c1482 = c1480.f5779;
                c1480.f5778.m4242();
                C1491 c14912 = c1480.f5783;
                C1444 c14442 = c1480.f5781;
                if (c14442 != null) {
                    String str5 = c14442.f5628;
                    Uri uri3 = c14442.f5629;
                    List list3 = c14442.f5625;
                    ?? r10 = c14442.f5626;
                    new C1484();
                    i2 = 1;
                    c1452 = c14523;
                    str = str5;
                    j = c14442.f5627;
                    uri = uri3;
                    list = list3;
                    c0956 = r10;
                } else {
                    i2 = 1;
                    c1452 = c14523;
                    uri = null;
                    str = null;
                    list = list2;
                    c0956 = c09562;
                    j = -9223372036854775807L;
                }
                C1473 m42422 = c1452.m4242();
                C1444 c14443 = uri != null ? new C1444(uri, str, null, list, c0956, j) : null;
                if (str4 == null) {
                    str4 = "";
                }
                String str6 = str4;
                ?? c1450 = new C1450(obj);
                C1452 c14524 = new C1452(m42422);
                if (c1482 == null) {
                    c1482 = C1482.f5805;
                }
                c14802 = new C1480(str6, c1450, c14443, c14524, c1482, c14912);
            }
            InterfaceC4975 mo788 = m2749.mo788(c14802);
            AbstractC0993 abstractC0993 = c14802.f5781.f5626;
            if (!abstractC0993.isEmpty()) {
                InterfaceC4975[] interfaceC4975Arr = new InterfaceC4975[abstractC0993.size() + 1];
                interfaceC4975Arr[0] = mo788;
                if (abstractC0993.size() > 0) {
                    if (!this.f18594) {
                        this.f18600.getClass();
                        C1451 c1451 = (C1451) abstractC0993.get(0);
                        int i3 = i2;
                        new ArrayList(i3);
                        new HashSet(i3);
                        new CopyOnWriteArrayList();
                        new CopyOnWriteArrayList();
                        C0982 c0982 = AbstractC0993.f3977;
                        C0956 c09563 = C0956.f3901;
                        List list4 = Collections.EMPTY_LIST;
                        C0956 c09564 = C0956.f3901;
                        C1491 c14913 = C1491.f5888;
                        Uri uri4 = Uri.EMPTY;
                        c1451.getClass();
                        throw null;
                    }
                    C1490 c1490 = new C1490();
                    ((C1451) abstractC0993.get(0)).getClass();
                    ArrayList arrayList = AbstractC1464.f5725;
                    c1490.f5861 = null;
                    ((C1451) abstractC0993.get(0)).getClass();
                    c1490.f5859 = null;
                    ((C1451) abstractC0993.get(0)).getClass();
                    c1490.f5866 = 0;
                    ((C1451) abstractC0993.get(0)).getClass();
                    c1490.f5887 = 0;
                    ((C1451) abstractC0993.get(0)).getClass();
                    c1490.f5883 = null;
                    ((C1451) abstractC0993.get(0)).getClass();
                    c1490.f5884 = null;
                    C1495 c1495 = new C1495(c1490);
                    if (this.f18595.ﹳٴ(c1495)) {
                        C1490 m4300 = c1495.m4300();
                        m4300.f5861 = AbstractC1464.m4251("application/x-media3-cues");
                        m4300.f5857 = c1495.f5930;
                        m4300.f5874 = this.f18595.ᵎﹶ(c1495);
                        new C1495(m4300);
                    }
                    ((C1451) abstractC0993.get(0)).getClass();
                    throw null;
                }
                mo788 = new C4978(interfaceC4975Arr);
            }
            C1443 c14432 = c14802.f5780;
            if (c14432.f5646 != Long.MIN_VALUE) {
                C4950 c4950 = new C4950(mo788);
                AbstractC3731.m7857(!c4950.f18421);
                long j3 = c14432.f5646;
                AbstractC3731.m7857(!c4950.f18421);
                c4950.f18422 = j3;
                AbstractC3731.m7857(!c4950.f18421);
                c4950.f18420 = true;
                AbstractC3731.m7857(!c4950.f18421);
                AbstractC3731.m7857(!c4950.f18421);
                AbstractC3731.m7857(!c4950.f18421);
                c4950.f18421 = true;
                mo788 = new C4993(c4950);
            }
            c14802.f5781.getClass();
            c14802.f5781.getClass();
            return mo788;
        } catch (ClassNotFoundException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ˈ */
    public final InterfaceC4937 mo789(InterfaceC4721 interfaceC4721) {
        AbstractC3731.m7862(interfaceC4721, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
        C0754 c0754 = this.f18601;
        c0754.f3121 = interfaceC4721;
        Iterator it = ((HashMap) c0754.f3118).values().iterator();
        while (it.hasNext()) {
            ((InterfaceC4937) it.next()).mo789(interfaceC4721);
        }
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ˑﹳ */
    public final InterfaceC4937 mo790(C0894 c0894) {
        AbstractC3731.m7862(c0894, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        C0754 c0754 = this.f18601;
        c0754.f3120 = c0894;
        Iterator it = ((HashMap) c0754.f3118).values().iterator();
        while (it.hasNext()) {
            ((InterfaceC4937) it.next()).mo790(c0894);
        }
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ⁱˊ */
    public final InterfaceC4937 mo791() {
        C0754 c0754 = this.f18601;
        c0754.getClass();
        synchronized (((C2631) c0754.f3116)) {
        }
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ﹳٴ */
    public final InterfaceC4937 mo792(boolean z) {
        this.f18594 = z;
        C0754 c0754 = this.f18601;
        c0754.f3122 = z;
        C2631 c2631 = (C2631) c0754.f3116;
        synchronized (c2631) {
            c2631.f9972 = z;
        }
        Iterator it = ((HashMap) c0754.f3118).values().iterator();
        while (it.hasNext()) {
            ((InterfaceC4937) it.next()).mo792(z);
        }
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ﾞᴵ */
    public final InterfaceC4937 mo793(ﾞᴵ r3) {
        this.f18595 = r3;
        C0754 c0754 = this.f18601;
        c0754.f3119 = r3;
        C2631 c2631 = (C2631) c0754.f3116;
        synchronized (c2631) {
            c2631.f9973 = r3;
        }
        Iterator it = ((HashMap) c0754.f3118).values().iterator();
        while (it.hasNext()) {
            ((InterfaceC4937) it.next()).mo793(r3);
        }
        return this;
    }
}
