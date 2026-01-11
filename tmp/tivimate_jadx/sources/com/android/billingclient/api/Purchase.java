package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class Purchase {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final JSONObject f1606;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f1607;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f1608;

    public Purchase(String str, String str2) {
        this.f1608 = str;
        this.f1607 = str2;
        this.f1606 = new JSONObject(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        return TextUtils.equals(this.f1608, purchase.f1608) && TextUtils.equals(this.f1607, purchase.f1607);
    }

    public final int hashCode() {
        return this.f1608.hashCode();
    }

    public final String toString() {
        return "Purchase. Json: ".concat(String.valueOf(this.f1608));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList m1099() {
        ArrayList arrayList = new ArrayList();
        JSONObject jSONObject = this.f1606;
        if (jSONObject.has("productIds")) {
            JSONArray optJSONArray = jSONObject.optJSONArray("productIds");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    arrayList.add(optJSONArray.optString(i));
                }
            }
        } else if (jSONObject.has("productId")) {
            arrayList.add(jSONObject.optString("productId"));
        }
        return arrayList;
    }
}
