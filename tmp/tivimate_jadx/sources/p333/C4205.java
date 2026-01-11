package p333;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import p013.C0913;
import p229.C3125;
import p363.AbstractActivityC4410;
import p430.AbstractC5099;
import ˉᵎ.ⁱˊ;

/* renamed from: ᵎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4205 implements InterfaceC4202 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f15647;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f15648;

    public C4205(C3125 c3125) {
        this.f15648 = 0;
        this.f15647 = new LinkedHashSet();
        c3125.m6832("androidx.savedstate.Restarter", this);
    }

    public C4205(AbstractActivityC4410 abstractActivityC4410) {
        this.f15648 = 1;
        this.f15647 = abstractActivityC4410;
    }

    @Override // p333.InterfaceC4202
    /* renamed from: ﹳٴ */
    public final Bundle mo738() {
        switch (this.f15648) {
            case 0:
                Bundle bundle = ⁱˊ.ﹳٴ((C0913[]) Arrays.copyOf(new C0913[0], 0));
                List m10020 = AbstractC5099.m10020((LinkedHashSet) this.f15647);
                bundle.putStringArrayList("classes_to_restore", m10020 instanceof ArrayList ? (ArrayList) m10020 : new ArrayList<>(m10020));
                return bundle;
            default:
                Bundle bundle2 = new Bundle();
                ((AbstractActivityC4410) this.f15647).m8911().getClass();
                return bundle2;
        }
    }
}
