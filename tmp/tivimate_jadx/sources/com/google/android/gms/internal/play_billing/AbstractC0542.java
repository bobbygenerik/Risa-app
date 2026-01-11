package com.google.android.gms.internal.play_billing;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.media.session.AbstractC0001;
import android.text.TextUtils;
import android.util.Log;
import com.android.billingclient.api.Purchase;
import java.util.ArrayList;
import org.json.JSONException;
import p027.C1095;
import p027.C1099;
import p027.C1115;

/* renamed from: com.google.android.gms.internal.play_billing.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0542 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int f2317 = Runtime.getRuntime().availableProcessors();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static void m2091(String str, String str2, Throwable th) {
        try {
            if (Log.isLoggable(str, 5) && th == null) {
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static Bundle m2092(C1115 c1115, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("RESPONSE_CODE", c1115.f4368);
        bundle.putString("DEBUG_MESSAGE", c1115.f4366);
        bundle.putInt("LOG_REASON", AbstractC0001.m7(i));
        return bundle;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static Purchase m2093(String str, String str2) {
        if (str == null || str2 == null) {
            m2096("BillingHelper", "Received a null purchase data.");
            return null;
        }
        try {
            return new Purchase(str, str2);
        } catch (JSONException e) {
            m2097("BillingHelper", "Got JSONException while parsing purchase data: ".concat(e.toString()));
            return null;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static Bundle m2094(String str, String str2, ArrayList arrayList, C0539 c0539, long j) {
        Bundle bundle = new Bundle();
        m2098(j, bundle, str, str2);
        bundle.putBoolean("enablePendingPurchases", true);
        bundle.putString("SKU_DETAILS_RESPONSE_FORMAT", "PRODUCT_DETAILS");
        C0628 c0628 = AbstractC0592.f2396;
        Object[] objArr = {"subs", "inapp"};
        ʼ.ᵎﹶ.ٴᵢ(2, objArr);
        bundle.putStringArrayList("PRODUCT_TYPES_TO_RETURN_MULTIPLE_OFFERS", new ArrayList<>(AbstractC0592.m2186(2, objArr)));
        Object[] objArr2 = {"inapp"};
        ʼ.ᵎﹶ.ٴᵢ(1, objArr2);
        bundle.putStringArrayList("PRODUCT_TYPES_TO_RETURN_RENT_OFFERS", new ArrayList<>(AbstractC0592.m2186(1, objArr2)));
        bundle.putBoolean("SHOULD_RETURN_UNFETCHED_PRODUCTS", true);
        ArrayList<String> arrayList2 = new ArrayList<>();
        ArrayList<String> arrayList3 = new ArrayList<>();
        ArrayList<String> arrayList4 = new ArrayList<>();
        int size = arrayList.size();
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            C1095 c1095 = (C1095) arrayList.get(i);
            arrayList2.add(null);
            z |= !TextUtils.isEmpty(null);
            arrayList4.add(null);
            z2 |= !TextUtils.isEmpty(null);
            if (c1095.f4277.equals("first_party")) {
                throw new NullPointerException("Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products.");
            }
        }
        if (z) {
            bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
        }
        if (!arrayList3.isEmpty()) {
            bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList3);
        }
        if (!TextUtils.isEmpty(null)) {
            bundle.putString("accountName", null);
        }
        if (z2) {
            bundle.putStringArrayList("SKU_DYNAMIC_PRODUCT_TOKEN_LIST", arrayList4);
        }
        return bundle;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C1115 m2095(Intent intent, String str) {
        if (intent != null) {
            C1099 m3527 = C1115.m3527();
            m3527.f4291 = m2099(str, intent.getExtras());
            m3527.f4289 = m2100(str, intent.getExtras());
            return m3527.m3485();
        }
        m2097("BillingHelper", "Got null intent!");
        C1099 m35272 = C1115.m3527();
        m35272.f4291 = 6;
        m35272.f4289 = "An internal error occurred.";
        return m35272.m3485();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m2096(String str, String str2) {
        if (!Log.isLoggable(str, 2) || str2.isEmpty()) {
            return;
        }
        int i = 40000;
        while (!str2.isEmpty() && i > 0) {
            int min = Math.min(str2.length(), Math.min(4000, i));
            str2.substring(0, min);
            str2 = str2.substring(min);
            i -= min;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m2097(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m2098(long j, Bundle bundle, String str, String str2) {
        bundle.putString("playBillingLibraryVersion", str);
        if (str2 != null) {
            bundle.putString("playBillingLibraryWrapperVersion", str2);
        }
        bundle.putLong("billingClientSessionId", j);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m2099(String str, Bundle bundle) {
        if (bundle == null) {
            m2097(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            m2096(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        m2097(str, "Unexpected type for bundle response code: ".concat(obj.getClass().getName()));
        return 6;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static String m2100(String str, Bundle bundle) {
        if (bundle == null) {
            m2097(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            m2096(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return "";
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        m2097(str, "Unexpected type for debug message: ".concat(obj.getClass().getName()));
        return "";
    }
}
