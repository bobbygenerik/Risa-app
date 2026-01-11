package p188;

import ﹳˋ.ٴﹶ;

/* renamed from: ˋⁱ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2859 extends ٴﹶ {
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m6360(C2850 c2850, float f, float f2) {
        float f3 = f2 * f;
        c2850.m6353(f3, 180.0f, 90.0f);
        float f4 = f3 * 2.0f;
        C2855 c2855 = new C2855(0.0f, 0.0f, f4, f4);
        c2855.f10734 = 180.0f;
        c2855.f10732 = 90.0f;
        c2850.f10713.add(c2855);
        C2868 c2868 = new C2868(c2855);
        c2850.m6355(180.0f);
        c2850.f10710.add(c2868);
        c2850.f10708 = 270.0f;
        float f5 = (0.0f + f4) * 0.5f;
        float f6 = (f4 - 0.0f) / 2.0f;
        double d = 270.0f;
        c2850.f10711 = (((float) Math.cos(Math.toRadians(d))) * f6) + f5;
        c2850.f10707 = (f6 * ((float) Math.sin(Math.toRadians(d)))) + f5;
    }
}
