package p229;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.bumptech.glide.ˈ;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import p013.C0913;
import p021.AbstractC1031;
import p242.C3238;
import p242.C3240;
import p430.AbstractC5096;
import p430.AbstractC5103;
import p430.AbstractC5114;
import p430.C5110;
import ᐧﹳ.ʽ;

/* renamed from: ˑʼ.ʼˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3076 extends ˈ {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final /* synthetic */ int f11692;

    public /* synthetic */ C3076(int i) {
        this.f11692 = i;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public ʽ m6634(Context context, Object obj) {
        switch (this.f11692) {
            case 1:
                String[] strArr = (String[]) obj;
                if (strArr.length == 0) {
                    return new ʽ(29, C5110.f19215);
                }
                for (String str : strArr) {
                    if (AbstractC1031.m3366(context, str) != 0) {
                        return null;
                    }
                }
                int m10040 = AbstractC5103.m10040(strArr.length);
                if (m10040 < 16) {
                    m10040 = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(m10040);
                for (String str2 : strArr) {
                    linkedHashMap.put(str2, Boolean.TRUE);
                }
                return new ʽ(29, linkedHashMap);
            case 2:
                if (AbstractC1031.m3366(context, (String) obj) == 0) {
                    return new ʽ(29, Boolean.TRUE);
                }
                return null;
            default:
                return super.ʽﹳ(context, obj);
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final Intent m6635(Object obj) {
        Bundle bundleExtra;
        switch (this.f11692) {
            case 0:
                C3238 c3238 = (C3238) obj;
                Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
                Intent intent2 = c3238.f12366;
                if (intent2 != null && (bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                    intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                    intent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    if (intent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                        c3238 = new C3238(c3238.f12364, null, c3238.f12363, c3238.f12365);
                    }
                }
                intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", c3238);
                if (C3085.m6654(2)) {
                    String str = "CreateIntent created the following intent: " + intent;
                }
                return intent;
            case 1:
                return new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", (String[]) obj);
            case 2:
                return new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", new String[]{(String) obj});
            case 3:
                return (Intent) obj;
            default:
                return new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", (C3238) obj);
        }
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object m6636(Intent intent, int i) {
        switch (this.f11692) {
            case 0:
                return new C3240(intent, i);
            case 1:
                if (i == -1 && intent != null) {
                    String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                    int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                    if (intArrayExtra != null && stringArrayExtra != null) {
                        ArrayList arrayList = new ArrayList(intArrayExtra.length);
                        for (int i2 : intArrayExtra) {
                            arrayList.add(Boolean.valueOf(i2 == 0));
                        }
                        ArrayList m9997 = AbstractC5096.m9997(stringArrayExtra);
                        Iterator it = m9997.iterator();
                        Iterator it2 = arrayList.iterator();
                        ArrayList arrayList2 = new ArrayList(Math.min(AbstractC5114.m10060(m9997, 10), AbstractC5114.m10060(arrayList, 10)));
                        while (it.hasNext() && it2.hasNext()) {
                            arrayList2.add(new C0913(it.next(), it2.next()));
                        }
                        return AbstractC5103.m10039(arrayList2);
                    }
                }
                return C5110.f19215;
            case 2:
                if (intent == null || i != -1) {
                    return Boolean.FALSE;
                }
                int[] intArrayExtra2 = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                boolean z = false;
                if (intArrayExtra2 != null) {
                    int length = intArrayExtra2.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length) {
                            if (intArrayExtra2[i3] == 0) {
                                z = true;
                            } else {
                                i3++;
                            }
                        }
                    }
                }
                return Boolean.valueOf(z);
            case 3:
                return new C3240(intent, i);
            default:
                return new C3240(intent, i);
        }
    }
}
