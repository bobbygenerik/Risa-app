package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ᵢᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public enum EnumC0477 implements InterfaceC0361 {
    f2235("PURPOSE_RESTRICTION_NOT_ALLOWED"),
    f2231("PURPOSE_RESTRICTION_REQUIRE_CONSENT"),
    f2232("PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST"),
    f2236("PURPOSE_RESTRICTION_UNDEFINED"),
    f2233("UNRECOGNIZED");


    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f2237;

    EnumC0477(String str) {
        this.f2237 = r2;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f2237);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0361
    /* renamed from: ⁱˊ */
    public final int mo1636() {
        if (this != f2233) {
            return this.f2237;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
