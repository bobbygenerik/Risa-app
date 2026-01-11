package p027;

import android.text.TextUtils;
import org.json.JSONObject;
import p035.AbstractC1220;

/* renamed from: ʼٴ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1109 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f4322;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f4323;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f4324;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f4325;

    public C1109(String str) {
        this.f4325 = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f4324 = jSONObject.optString("productId");
        String optString = jSONObject.optString("type");
        this.f4322 = optString;
        this.f4323 = jSONObject.has("statusCode") ? jSONObject.optInt("statusCode") : 0;
        if (TextUtils.isEmpty(optString)) {
            throw new IllegalArgumentException("Product type cannot be empty.");
        }
        jSONObject.optString("serializedDocid");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1109) {
            return TextUtils.equals(this.f4325, ((C1109) obj).f4325);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4325.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UnfetchedProduct{productId='");
        sb.append(this.f4324);
        sb.append("', productType='");
        sb.append(this.f4322);
        sb.append("', statusCode=");
        return AbstractC1220.m3782(sb, this.f4323, "}");
    }
}
