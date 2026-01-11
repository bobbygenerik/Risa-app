package p188;

import android.graphics.RectF;
import java.util.Arrays;
import p035.AbstractC1220;

/* renamed from: ˋⁱ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2851 implements InterfaceC2852 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float f10714;

    public C2851(float f) {
        this.f10714 = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2851) && this.f10714 == ((C2851) obj).f10714;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f10714)});
    }

    public final String toString() {
        return AbstractC1220.m3782(new StringBuilder(), (int) (this.f10714 * 100.0f), "%");
    }

    @Override // p188.InterfaceC2852
    /* renamed from: ﹳٴ */
    public final float mo6342(RectF rectF) {
        return Math.min(rectF.width(), rectF.height()) * this.f10714;
    }
}
