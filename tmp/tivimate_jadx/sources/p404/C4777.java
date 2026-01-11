package p404;

import java.security.GeneralSecurityException;
import p071.C1631;
import p277.AbstractC3528;
import p330.EnumC4150;
import p330.EnumC4167;
import ﹳˋ.ʽʽ;

/* renamed from: ﹳʽ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4777 extends ʽʽ {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C4799 f18018;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C1631 f18019;

    public C4777(C4799 c4799) {
        C1631 m9577;
        ((EnumC4167) c4799.f18051).ordinal();
        this.f18018 = c4799;
        EnumC4150 enumC4150 = (EnumC4150) c4799.f18054;
        Integer num = (Integer) c4799.f18052;
        if (enumC4150.equals(EnumC4150.f15581)) {
            m9577 = C1631.m4412(new byte[0]);
        } else if (enumC4150.equals(EnumC4150.f15575)) {
            m9577 = AbstractC4793.m9576(num.intValue());
        } else {
            if (!enumC4150.equals(EnumC4150.f15576) && !enumC4150.equals(EnumC4150.f15578)) {
                throw new GeneralSecurityException("Unknown output prefix type");
            }
            m9577 = AbstractC4793.m9577(num.intValue());
        }
        this.f18019 = m9577;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static void m9548(C4799 c4799) {
        ((EnumC4167) c4799.f18051).ordinal();
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final AbstractC3528 m9549() {
        C4799 c4799 = this.f18018;
        return new C4805((String) c4799.f18050, (EnumC4150) c4799.f18054);
    }
}
