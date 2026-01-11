package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public enum EnumC0349 implements InterfaceC0361 {
    /* JADX INFO: Fake field, exist only in values array */
    EF0("IAB_TCF_PURPOSE_UNKNOWN"),
    f2008("IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE"),
    f2002("IAB_TCF_PURPOSE_SELECT_BASIC_ADS"),
    f2003("IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE"),
    f2009("IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS"),
    /* JADX INFO: Fake field, exist only in values array */
    EF10("IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_CONTENT_PROFILE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF12("IAB_TCF_PURPOSE_SELECT_PERSONALISED_CONTENT"),
    f2005("IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF1("IAB_TCF_PURPOSE_MEASURE_CONTENT_PERFORMANCE"),
    f2007("IAB_TCF_PURPOSE_APPLY_MARKET_RESEARCH_TO_GENERATE_AUDIENCE_INSIGHTS"),
    f2004("IAB_TCF_PURPOSE_DEVELOP_AND_IMPROVE_PRODUCTS"),
    /* JADX INFO: Fake field, exist only in values array */
    EF9("IAB_TCF_PURPOSE_USE_LIMITED_DATA_TO_SELECT_CONTENT"),
    f2010("UNRECOGNIZED");


    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f2011;

    EnumC0349(String str) {
        this.f2011 = r2;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f2011);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0361
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int mo1636() {
        if (this != f2010) {
            return this.f2011;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
