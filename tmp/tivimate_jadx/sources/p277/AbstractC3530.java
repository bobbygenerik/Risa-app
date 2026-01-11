package p277;

import java.nio.charset.Charset;
import p330.C4111;
import p330.C4132;
import p330.C4141;
import p330.C4156;
import p330.C4165;
import p330.C4186;
import p330.EnumC4126;
import p330.EnumC4150;

/* renamed from: ٴʻ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3530 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final /* synthetic */ int f13874 = 0;

    static {
        Charset.forName("UTF-8");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C4186 m7491(C4111 c4111) {
        C4141 m8569 = C4186.m8569();
        int m8366 = c4111.m8366();
        m8569.m2486();
        C4186.m8570((C4186) m8569.f2977, m8366);
        for (C4165 c4165 : c4111.m8364()) {
            C4156 m8415 = C4132.m8415();
            String m8430 = c4165.m8499().m8430();
            m8415.m2486();
            C4132.m8417((C4132) m8415.f2977, m8430);
            EnumC4126 m8502 = c4165.m8502();
            m8415.m2486();
            C4132.m8416((C4132) m8415.f2977, m8502);
            EnumC4150 m8501 = c4165.m8501();
            m8415.m2486();
            C4132.m8414((C4132) m8415.f2977, m8501);
            int m8503 = c4165.m8503();
            m8415.m2486();
            C4132.m8413((C4132) m8415.f2977, m8503);
            C4132 c4132 = (C4132) m8415.m2485();
            m8569.m2486();
            C4186.m8568((C4186) m8569.f2977, c4132);
        }
        return (C4186) m8569.m2485();
    }
}
