package p188;

import android.graphics.RectF;
import java.util.Arrays;

/* renamed from: ˋⁱ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2846 implements InterfaceC2852 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float f10692;

    public C2846(float f) {
        this.f10692 = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2846) && this.f10692 == ((C2846) obj).f10692;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f10692)});
    }

    @Override // p188.InterfaceC2852
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float mo6342(RectF rectF) {
        float min = Math.min(rectF.width() / 2.0f, rectF.height() / 2.0f);
        float f = this.f10692;
        if (f < 0.0f) {
            return 0.0f;
        }
        return f > min ? min : f;
    }
}
