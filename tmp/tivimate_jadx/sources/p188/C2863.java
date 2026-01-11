package p188;

import com.google.android.gms.internal.play_billing.י;
import com.google.android.material.button.MaterialButton;
import p283.C3569;

/* renamed from: ˋⁱ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2863 extends י {

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final int f10770;

    public C2863(int i) {
        this.f10770 = i;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m6367(InterfaceC2843 interfaceC2843, float f) {
        C2844 c2844 = (C2844) interfaceC2843;
        float[] fArr = c2844.f10670;
        if (fArr != null) {
            int i = this.f10770;
            if (fArr[i] != f) {
                fArr[i] = f;
                C3569 c3569 = c2844.f10664;
                if (c3569 != null) {
                    float m6328 = c2844.m6328();
                    MaterialButton materialButton = (MaterialButton) c3569.f13957;
                    int i2 = (int) (m6328 * 0.11f);
                    if (materialButton.f2635 != i2) {
                        materialButton.f2635 = i2;
                        materialButton.m2368();
                        materialButton.invalidate();
                    }
                }
                c2844.invalidateSelf();
            }
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final float m6368(InterfaceC2843 interfaceC2843) {
        float[] fArr = ((C2844) interfaceC2843).f10670;
        if (fArr != null) {
            return fArr[this.f10770];
        }
        return 0.0f;
    }
}
