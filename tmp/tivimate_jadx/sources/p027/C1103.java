package p027;

import android.text.TextUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: ʼٴ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1103 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ArrayList f4304;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f4305;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f4306;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f4307;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String f4308;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final ArrayList f4309;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final JSONObject f4310;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f4311;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f4312;

    public C1103(String str) {
        this.f4311 = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f4310 = jSONObject;
        String optString = jSONObject.optString("productId");
        this.f4305 = optString;
        String optString2 = jSONObject.optString("type");
        this.f4306 = optString2;
        if (TextUtils.isEmpty(optString)) {
            throw new IllegalArgumentException("Product id cannot be empty.");
        }
        if (TextUtils.isEmpty(optString2)) {
            throw new IllegalArgumentException("Product type cannot be empty.");
        }
        this.f4307 = jSONObject.optString("title");
        jSONObject.optString("name");
        jSONObject.optString("description");
        jSONObject.optString("packageDisplayName");
        jSONObject.optString("iconUrl");
        this.f4312 = jSONObject.optString("skuDetailsToken");
        this.f4308 = jSONObject.optString("serializedDocid");
        JSONArray optJSONArray = jSONObject.optJSONArray("subscriptionOfferDetails");
        if (optJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                arrayList.add(new C1091(optJSONArray.getJSONObject(i)));
            }
            this.f4309 = arrayList;
        } else {
            this.f4309 = (optString2.equals("subs") || optString2.equals("play_pass_subs")) ? new ArrayList() : null;
        }
        JSONObject optJSONObject = this.f4310.optJSONObject("oneTimePurchaseOfferDetails");
        JSONArray optJSONArray2 = this.f4310.optJSONArray("oneTimePurchaseOfferDetailsList");
        ArrayList arrayList2 = new ArrayList();
        if (optJSONArray2 != null) {
            for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                arrayList2.add(new C1106(optJSONArray2.getJSONObject(i2)));
            }
            this.f4304 = arrayList2;
            return;
        }
        if (optJSONObject == null) {
            this.f4304 = null;
        } else {
            arrayList2.add(new C1106(optJSONObject));
            this.f4304 = arrayList2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1103) {
            return TextUtils.equals(this.f4311, ((C1103) obj).f4311);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4311.hashCode();
    }

    public final String toString() {
        return "ProductDetails{jsonString='" + this.f4311 + "', parsedJson=" + this.f4310.toString() + ", productId='" + this.f4305 + "', productType='" + this.f4306 + "', title='" + this.f4307 + "', productDetailsToken='" + this.f4312 + "', subscriptionOfferDetails=" + String.valueOf(this.f4309) + "}";
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1106 m3490() {
        ArrayList arrayList = this.f4304;
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        return (C1106) arrayList.get(0);
    }
}
