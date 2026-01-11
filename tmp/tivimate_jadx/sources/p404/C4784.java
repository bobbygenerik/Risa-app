package p404;

import j$.util.Objects;
import p071.C1631;
import p277.AbstractC3528;
import p330.C4171;
import p330.EnumC4150;

/* renamed from: ﹳʽ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4784 extends AbstractC3528 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4790 f18028;

    public C4784(C4790 c4790) {
        this.f18028 = c4790;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C4784)) {
            return false;
        }
        C4790 c4790 = ((C4784) obj).f18028;
        C4790 c47902 = this.f18028;
        EnumC4150 m8517 = ((C4171) c47902.f18034).m8517();
        C4171 c4171 = (C4171) c4790.f18034;
        C4171 c41712 = (C4171) c4790.f18034;
        return m8517.equals(c4171.m8517()) && ((C4171) c47902.f18034).m8519().equals(c41712.m8519()) && ((C4171) c47902.f18034).m8518().equals(c41712.m8518());
    }

    public final int hashCode() {
        C4790 c4790 = this.f18028;
        return Objects.hash((C4171) c4790.f18034, (C1631) c4790.f18036);
    }

    public final String toString() {
        C4790 c4790 = this.f18028;
        String m8519 = ((C4171) c4790.f18034).m8519();
        int ordinal = ((C4171) c4790.f18034).m8517().ordinal();
        return "(typeUrl=" + m8519 + ", outputPrefixType=" + (ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? "UNKNOWN" : "CRUNCHY" : "RAW" : "LEGACY" : "TINK") + ")";
    }

    @Override // p277.AbstractC3528
    /* renamed from: ﹳٴ */
    public final boolean mo6546() {
        return ((C4171) this.f18028.f18034).m8517() != EnumC4150.f15581;
    }
}
