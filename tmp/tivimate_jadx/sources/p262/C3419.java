package p262;

import android.content.Context;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import p035.AbstractC1219;
import p035.AbstractC1220;
import p137.AbstractC2305;
import p137.C2282;
import p240.C3214;
import p240.C3216;
import p240.C3217;
import p240.C3220;
import p240.C3221;
import p240.C3229;
import p240.C3231;
import p286.AbstractC3586;
import p322.AbstractC3982;
import p322.C3959;
import p322.C3963;
import p322.C3977;
import p322.C3980;
import p322.EnumC3961;
import p324.AbstractC3999;
import p324.C4011;
import p352.InterfaceC4303;
import p430.AbstractC5099;
import p430.AbstractC5106;
import ᐧᵎ.ᵢי;

/* renamed from: ـʾ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3419 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C3216 f13424;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f13425;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C3221 f13426;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ᵢי f13427;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C4011 f13428;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3980 f13429;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ArrayList f13430;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final InterfaceC4303 f13431;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final WorkDatabase f13432;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Context f13433;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3231 f13434;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final String f13435;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C3959 f13436;

    public C3419(C2282 c2282) {
        C3231 c3231 = (C3231) c2282.f8930;
        this.f13434 = c3231;
        this.f13433 = (Context) c2282.f8929;
        String str = c3231.f12341;
        this.f13425 = str;
        this.f13427 = (ᵢי) c2282.f8924;
        C3980 c3980 = (C3980) c2282.f8928;
        this.f13429 = c3980;
        this.f13436 = c3980.f15339;
        this.f13431 = (InterfaceC4303) c2282.f8925;
        WorkDatabase workDatabase = (WorkDatabase) c2282.f8926;
        this.f13432 = workDatabase;
        this.f13424 = workDatabase.mo1026();
        this.f13426 = workDatabase.mo1028();
        ArrayList arrayList = (ArrayList) c2282.f8927;
        this.f13430 = arrayList;
        this.f13435 = AbstractC1220.m3775(AbstractC2305.m5370("Work [ id=", str, ", tags={ "), AbstractC5099.m10034(arrayList, ",", null, null, null, 62), " } ]");
        this.f13428 = AbstractC3999.m8161();
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0230, code lost:
    
        if (r0 == r1) goto L74;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    /* JADX WARN: Type inference failed for: r6v12, types: [androidx.work.WorkerParameters, java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m7311(final p262.C3419 r23, p316.AbstractC3902 r24) {
        /*
            Method dump skipped, instructions count: 660
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p262.C3419.m7311(ـʾ.ʾˋ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7312() {
        this.f13436.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        C3216 c3216 = this.f13424;
        AbstractC1219 abstractC1219 = c3216.f12275;
        String str = this.f13425;
        AbstractC3586.m7538(abstractC1219, false, true, new C3220(currentTimeMillis, str, 1));
        c3216.m7052(EnumC3961.f15274, str);
        ((Number) AbstractC3586.m7538(c3216.f12275, false, true, new C3214(12, str))).intValue();
        AbstractC3586.m7538(c3216.f12275, false, true, new C3217(this.f13434.f12320, 1, str));
        AbstractC3586.m7538(c3216.f12275, false, true, new C3214(13, str));
        c3216.m7056(str, -1L);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m7313(AbstractC3982 abstractC3982) {
        String str = this.f13425;
        ArrayList m10046 = AbstractC5106.m10046(str);
        while (true) {
            boolean isEmpty = m10046.isEmpty();
            C3216 c3216 = this.f13424;
            if (isEmpty) {
                C3977 c3977 = ((C3963) abstractC3982).f15281;
                AbstractC3586.m7538(c3216.f12275, false, true, new C3217(this.f13434.f12320, 1, str));
                AbstractC3586.m7538(c3216.f12275, false, true, new C3229(c3977, 6, str));
                return;
            }
            String str2 = (String) AbstractC5099.m10019(m10046);
            if (c3216.m7049(str2) != EnumC3961.f15276) {
                c3216.m7052(EnumC3961.f15275, str2);
            }
            m10046.addAll(this.f13426.m7057(str2));
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7314(int i) {
        C3216 c3216 = this.f13424;
        EnumC3961 enumC3961 = EnumC3961.f15274;
        String str = this.f13425;
        c3216.m7052(enumC3961, str);
        this.f13436.getClass();
        AbstractC3586.m7538(c3216.f12275, false, true, new C3220(System.currentTimeMillis(), str, 1));
        AbstractC3586.m7538(c3216.f12275, false, true, new C3217(this.f13434.f12320, 1, str));
        c3216.m7056(str, -1L);
        c3216.m7053(i, str);
    }
}
