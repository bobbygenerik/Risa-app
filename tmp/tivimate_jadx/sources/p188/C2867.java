package p188;

import android.graphics.RectF;
import java.util.Arrays;

/* renamed from: ˋⁱ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2867 implements InterfaceC2852 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float f10779;

    public C2867(float f) {
        this.f10779 = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2867) && this.f10779 == ((C2867) obj).f10779;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f10779)});
    }

    public final String toString() {
        return this.f10779 + "px";
    }

    @Override // p188.InterfaceC2852
    /* renamed from: ﹳٴ */
    public final float mo6342(RectF rectF) {
        return this.f10779;
    }
}
