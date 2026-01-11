package p188;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;

/* renamed from: ˋⁱ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2850 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public float f10707;

    /* renamed from: ˈ, reason: contains not printable characters */
    public float f10708;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public float f10709;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public float f10711;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public float f10712;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ArrayList f10713 = new ArrayList();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ArrayList f10710 = new ArrayList();

    public C2850() {
        m6353(0.0f, 270.0f, 0.0f);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˋⁱ.ʽﹳ, ˋⁱ.ʻٴ, java.lang.Object] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m6352(float f, float f2) {
        ?? abstractC2842 = new AbstractC2842();
        abstractC2842.f10698 = f;
        abstractC2842.f10697 = f2;
        this.f10713.add(abstractC2842);
        C2857 c2857 = new C2857(abstractC2842, this.f10711, this.f10707);
        float m6358 = c2857.m6358() + 270.0f;
        float m63582 = c2857.m6358() + 270.0f;
        m6355(m6358);
        this.f10710.add(c2857);
        this.f10708 = m63582;
        this.f10711 = f;
        this.f10707 = f2;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m6353(float f, float f2, float f3) {
        this.f10712 = f;
        this.f10711 = 0.0f;
        this.f10707 = f;
        this.f10708 = f2;
        this.f10709 = (f2 + f3) % 360.0f;
        this.f10713.clear();
        this.f10710.clear();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6354(Matrix matrix, Path path) {
        ArrayList arrayList = this.f10713;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC2842) arrayList.get(i)).mo6313(matrix, path);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6355(float f) {
        float f2 = this.f10708;
        if (f2 == f) {
            return;
        }
        float f3 = ((f - f2) + 360.0f) % 360.0f;
        if (f3 > 180.0f) {
            return;
        }
        float f4 = this.f10711;
        float f5 = this.f10707;
        C2855 c2855 = new C2855(f4, f5, f4, f5);
        c2855.f10734 = this.f10708;
        c2855.f10732 = f3;
        this.f10710.add(new C2868(c2855));
        this.f10708 = f;
    }
}
