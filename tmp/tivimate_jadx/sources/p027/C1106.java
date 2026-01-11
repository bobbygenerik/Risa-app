package p027;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
import ٴﾞ.ˆʾ;

/* renamed from: ʼٴ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1106 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayList f4316;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f4317;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final ˆʾ f4318;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f4319;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f4320;

    public C1106(JSONObject jSONObject) {
        this.f4320 = jSONObject.optString("formattedPrice");
        jSONObject.optLong("priceAmountMicros");
        jSONObject.optString("priceCurrencyCode");
        String optString = jSONObject.optString("offerIdToken");
        ˆʾ r3 = null;
        this.f4319 = true == optString.isEmpty() ? null : optString;
        jSONObject.optString("offerId").getClass();
        jSONObject.optString("purchaseOptionId").getClass();
        jSONObject.optInt("offerType");
        JSONArray optJSONArray = jSONObject.optJSONArray("offerTags");
        this.f4316 = new ArrayList();
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                this.f4316.add(optJSONArray.getString(i));
            }
        }
        if (jSONObject.has("fullPriceMicros")) {
            jSONObject.optLong("fullPriceMicros");
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("discountDisplayInfo");
        if (optJSONObject != null) {
            if (optJSONObject.has("percentageDiscount")) {
                optJSONObject.optInt("percentageDiscount");
            }
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("discountAmount");
            if (optJSONObject2 != null) {
                optJSONObject2.optString("formattedDiscountAmount");
                optJSONObject2.optLong("discountAmountMicros");
                optJSONObject2.optString("discountAmountCurrencyCode");
            }
        }
        JSONObject optJSONObject3 = jSONObject.optJSONObject("validTimeWindow");
        if (optJSONObject3 != null) {
            if (optJSONObject3.has("startTimeMillis")) {
                optJSONObject3.optLong("startTimeMillis");
            }
            if (optJSONObject3.has("endTimeMillis")) {
                optJSONObject3.optLong("endTimeMillis");
            }
        }
        JSONObject optJSONObject4 = jSONObject.optJSONObject("limitedQuantityInfo");
        if (optJSONObject4 != null) {
            optJSONObject4.getInt("maximumQuantity");
            optJSONObject4.getInt("remainingQuantity");
        }
        this.f4317 = jSONObject.optString("serializedDocid");
        JSONObject optJSONObject5 = jSONObject.optJSONObject("preorderDetails");
        if (optJSONObject5 != null) {
            optJSONObject5.getLong("preorderReleaseTimeMillis");
            optJSONObject5.getLong("preorderPresaleEndTimeMillis");
        }
        JSONObject optJSONObject6 = jSONObject.optJSONObject("rentalDetails");
        if (optJSONObject6 != null) {
            optJSONObject6.getString("rentalPeriod");
            optJSONObject6.optString("rentalExpirationPeriod").getClass();
        }
        JSONObject optJSONObject7 = jSONObject.optJSONObject("autoPayDetails");
        if (optJSONObject7 != null) {
            r3 = new ˆʾ(5);
            optJSONObject7.getString("type");
        }
        this.f4318 = r3;
        JSONArray optJSONArray2 = jSONObject.optJSONArray("pricingPhases");
        if (optJSONArray2 == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
            JSONObject optJSONObject8 = optJSONArray2.optJSONObject(i2);
            if (optJSONObject8 != null) {
                arrayList.add(new C1108(optJSONObject8));
            }
        }
    }
}
