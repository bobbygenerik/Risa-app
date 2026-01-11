package p055;

import java.util.Locale;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ʽⁱ.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1485 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1485 f5835 = new C1485(1.0f, 1.0f);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f5836;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float f5837;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float f5838;

    static {
        AbstractC3712.m7802(0);
        AbstractC3712.m7802(1);
    }

    public C1485(float f, float f2) {
        AbstractC3731.m7849(f > 0.0f);
        AbstractC3731.m7849(f2 > 0.0f);
        this.f5838 = f;
        this.f5837 = f2;
        this.f5836 = Math.round(f * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1485.class == obj.getClass()) {
            C1485 c1485 = (C1485) obj;
            if (this.f5838 == c1485.f5838 && this.f5837 == c1485.f5837) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f5837) + ((Float.floatToRawIntBits(this.f5838) + 527) * 31);
    }

    public final String toString() {
        Object[] objArr = {Float.valueOf(this.f5838), Float.valueOf(this.f5837)};
        String str = AbstractC3712.f14481;
        return String.format(Locale.US, "PlaybackParameters(speed=%.2f, pitch=%.2f)", objArr);
    }
}
