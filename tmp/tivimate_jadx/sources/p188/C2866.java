package p188;

import android.graphics.RectF;
import java.util.Arrays;

/* renamed from: ˋⁱ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2866 implements InterfaceC2852 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float f10777;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC2852 f10778;

    public C2866(float f, InterfaceC2852 interfaceC2852) {
        while (interfaceC2852 instanceof C2866) {
            interfaceC2852 = ((C2866) interfaceC2852).f10778;
            f += ((C2866) interfaceC2852).f10777;
        }
        this.f10778 = interfaceC2852;
        this.f10777 = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2866)) {
            return false;
        }
        C2866 c2866 = (C2866) obj;
        return this.f10778.equals(c2866.f10778) && this.f10777 == c2866.f10777;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f10778, Float.valueOf(this.f10777)});
    }

    @Override // p188.InterfaceC2852
    /* renamed from: ﹳٴ */
    public final float mo6342(RectF rectF) {
        return Math.max(0.0f, this.f10778.mo6342(rectF) + this.f10777);
    }
}
