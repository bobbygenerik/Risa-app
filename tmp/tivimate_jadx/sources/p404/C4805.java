package p404;

import p277.AbstractC3528;
import p330.EnumC4150;

/* renamed from: ﹳʽ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4805 extends AbstractC3528 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final EnumC4150 f18065;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f18066;

    public C4805(String str, EnumC4150 enumC4150) {
        this.f18066 = str;
        this.f18065 = enumC4150;
    }

    public final String toString() {
        int ordinal = this.f18065.ordinal();
        return "(typeUrl=" + this.f18066 + ", outputPrefixType=" + (ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? "UNKNOWN" : "CRUNCHY" : "RAW" : "LEGACY" : "TINK") + ")";
    }

    @Override // p277.AbstractC3528
    /* renamed from: ﹳٴ */
    public final boolean mo6546() {
        return this.f18065 != EnumC4150.f15581;
    }
}
