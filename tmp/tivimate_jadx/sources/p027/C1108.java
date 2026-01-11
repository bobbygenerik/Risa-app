package p027;

import org.json.JSONObject;

/* renamed from: ʼٴ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1108 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f4321;

    public C1108(JSONObject jSONObject) {
        jSONObject.optString("billingPeriod");
        jSONObject.optString("priceCurrencyCode");
        this.f4321 = jSONObject.optString("formattedPrice");
        jSONObject.optLong("priceAmountMicros");
        jSONObject.optInt("recurrenceMode");
        jSONObject.optInt("billingCycleCount");
    }
}
