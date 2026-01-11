package p360;

import j$.util.Objects;
import java.util.List;

/* renamed from: ᵔٴ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4370 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public List f16227;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String f16228;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public String f16229;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4370)) {
            return false;
        }
        C4370 c4370 = (C4370) obj;
        return Objects.equals(this.f16229, c4370.f16229) && Objects.equals(this.f16228, c4370.f16228) && Objects.equals(this.f16227, c4370.f16227);
    }

    public final int hashCode() {
        return Objects.hash(this.f16229, this.f16228, this.f16227);
    }
}
