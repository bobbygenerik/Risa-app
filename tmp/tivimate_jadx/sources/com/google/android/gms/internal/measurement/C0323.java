package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0323 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final /* synthetic */ int f1967 = 0;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f1968;

    public C0323(int i) {
        this.f1968 = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0323)) {
            return false;
        }
        int i = ((C0323) obj).f1968;
        int i2 = this.f1968;
        if (i2 != 0) {
            return i2 == i;
        }
        throw null;
    }

    public final int hashCode() {
        int i = this.f1968;
        if (i != 0) {
            return ((i ^ (-485106924)) * 583896283) ^ 1;
        }
        throw null;
    }

    public final String toString() {
        int i = this.f1968;
        String str = i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "NO_CHECKS" : "SKIP_SECURITY_CHECK" : "SKIP_COMPLIANCE_CHECK" : "ALL_CHECKS";
        StringBuilder sb = new StringBuilder("READ_AND_WRITE".length() + str.length() + "".length() + 73 + 91 + 1);
        sb.append("FileComplianceOptions{fileOwner=, hasDifferentDmaOwner=false, fileChecks=");
        sb.append(str);
        sb.append(", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose=");
        sb.append("READ_AND_WRITE");
        sb.append("}");
        return sb.toString();
    }
}
