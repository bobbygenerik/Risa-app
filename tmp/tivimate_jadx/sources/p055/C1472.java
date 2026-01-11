package p055;

import j$.util.Objects;
import p305.AbstractC3712;

/* renamed from: ʽⁱ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1472 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f5759;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f5760;

    static {
        AbstractC3712.m7802(0);
        AbstractC3712.m7802(1);
    }

    public C1472(String str, String str2) {
        this.f5760 = AbstractC3712.m7786(str);
        this.f5759 = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1472.class == obj.getClass()) {
            C1472 c1472 = (C1472) obj;
            if (Objects.equals(this.f5760, c1472.f5760) && Objects.equals(this.f5759, c1472.f5759)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f5759.hashCode() * 31;
        String str = this.f5760;
        return hashCode + (str != null ? str.hashCode() : 0);
    }
}
