package p036;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.lifecycle.C0184;
import androidx.lifecycle.EnumC0199;
import androidx.lifecycle.InterfaceC0162;
import androidx.lifecycle.InterfaceC0183;
import com.bumptech.glide.ˈ;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import p035.AbstractC1220;
import p037.AbstractC1273;
import p037.AbstractC1275;
import p137.AbstractC2305;
import p151.InterfaceC2436;
import p229.C3101;
import p242.C3236;
import p242.C3237;
import p242.C3238;
import p242.C3240;
import p242.C3241;
import p242.InterfaceC3239;
import ʼⁱ.ˉٴ;
import ᐧﹳ.ʽ;

/* renamed from: ʽ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1271 {

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final /* synthetic */ AbstractActivityC1262 f4933;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f4935 = new HashMap();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final HashMap f4934 = new HashMap();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final HashMap f4929 = new HashMap();

    /* renamed from: ˈ, reason: contains not printable characters */
    public ArrayList f4930 = new ArrayList();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final transient HashMap f4931 = new HashMap();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final HashMap f4936 = new HashMap();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Bundle f4932 = new Bundle();

    public C1271(AbstractActivityC1262 abstractActivityC1262) {
        this.f4933 = abstractActivityC1262;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3236 m3862(String str, InterfaceC0162 interfaceC0162, ˈ r11, InterfaceC3239 interfaceC3239) {
        C0184 mo691 = interfaceC0162.mo691();
        if (mo691.f1076.m733(EnumC0199.f1102)) {
            throw new IllegalStateException("LifecycleOwner " + interfaceC0162 + " is attempting to register while current state is " + mo691.f1076 + ". LifecycleOwners must call register before they are STARTED.");
        }
        m3864(str);
        HashMap hashMap = this.f4929;
        C3241 c3241 = (C3241) hashMap.get(str);
        if (c3241 == null) {
            c3241 = new C3241(mo691);
        }
        C3101 c3101 = new C3101(this, str, interfaceC3239, r11, 1);
        c3241.f12370.m714(c3101);
        c3241.f12369.add(c3101);
        hashMap.put(str, c3241);
        return new C3236(this, str, r11, 0);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3236 m3863(String str, ˈ r4, InterfaceC3239 interfaceC3239) {
        m3864(str);
        this.f4931.put(str, new C3237(r4, interfaceC3239));
        HashMap hashMap = this.f4936;
        if (hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            hashMap.remove(str);
            interfaceC3239.mo3494(obj);
        }
        Bundle bundle = this.f4932;
        C3240 c3240 = (C3240) bundle.getParcelable(str);
        if (c3240 != null) {
            bundle.remove(str);
            interfaceC3239.mo3494(r4.ᴵˊ(c3240.f12368, c3240.f12367));
        }
        return new C3236(this, str, r4, 1);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m3864(String str) {
        HashMap hashMap = this.f4934;
        if (((Integer) hashMap.get(str)) != null) {
            return;
        }
        AbstractC1275 abstractC1275 = AbstractC1273.f4937;
        int nextInt = AbstractC1273.f4937.mo3868().nextInt(2147418112);
        while (true) {
            int i = nextInt + 65536;
            Integer valueOf = Integer.valueOf(i);
            HashMap hashMap2 = this.f4935;
            if (!hashMap2.containsKey(valueOf)) {
                hashMap2.put(Integer.valueOf(i), str);
                hashMap.put(str, Integer.valueOf(i));
                return;
            } else {
                AbstractC1275 abstractC12752 = AbstractC1273.f4937;
                nextInt = AbstractC1273.f4937.mo3868().nextInt(2147418112);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3865(int i, ˈ r10, Object obj) {
        Bundle bundle;
        int i2;
        AbstractActivityC1262 abstractActivityC1262 = this.f4933;
        ʽ r1 = r10.ʽﹳ(abstractActivityC1262, obj);
        if (r1 != null) {
            new Handler(Looper.getMainLooper()).post(new ˉٴ(this, i, r1, 1));
            return;
        }
        Intent intent = r10.ˉʿ(obj);
        if (intent.getExtras() != null && intent.getExtras().getClassLoader() == null) {
            intent.setExtrasClassLoader(abstractActivityC1262.getClassLoader());
        }
        if (intent.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            bundle = intent.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            intent.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
        } else {
            bundle = null;
        }
        Bundle bundle2 = bundle;
        if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(intent.getAction())) {
            String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            if (stringArrayExtra == null) {
                stringArrayExtra = new String[0];
            }
            HashSet hashSet = new HashSet();
            for (int i3 = 0; i3 < stringArrayExtra.length; i3++) {
                if (TextUtils.isEmpty(stringArrayExtra[i3])) {
                    throw new IllegalArgumentException(AbstractC1220.m3775(new StringBuilder("Permission request for permissions "), Arrays.toString(stringArrayExtra), " must not contain null or empty values"));
                }
                if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(stringArrayExtra[i3], "android.permission.POST_NOTIFICATIONS")) {
                    hashSet.add(Integer.valueOf(i3));
                }
            }
            int size = hashSet.size();
            String[] strArr = size > 0 ? new String[stringArrayExtra.length - size] : stringArrayExtra;
            if (size > 0) {
                if (size == stringArrayExtra.length) {
                    return;
                }
                int i4 = 0;
                for (int i5 = 0; i5 < stringArrayExtra.length; i5++) {
                    if (!hashSet.contains(Integer.valueOf(i5))) {
                        strArr[i4] = stringArrayExtra[i5];
                        i4++;
                    }
                }
            }
            if (abstractActivityC1262 instanceof InterfaceC2436) {
            }
            abstractActivityC1262.requestPermissions(stringArrayExtra, i);
            return;
        }
        if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(intent.getAction())) {
            abstractActivityC1262.startActivityForResult(intent, i, bundle2);
            return;
        }
        C3238 c3238 = (C3238) intent.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
        try {
            i2 = i;
            try {
                abstractActivityC1262.startIntentSenderForResult(c3238.f12364, i2, c3238.f12366, c3238.f12363, c3238.f12365, 0, bundle2);
            } catch (IntentSender.SendIntentException e) {
                e = e;
                new Handler(Looper.getMainLooper()).post(new ˉٴ(this, i2, e, 2));
            }
        } catch (IntentSender.SendIntentException e2) {
            e = e2;
            i2 = i;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m3866(int i, int i2, Intent intent) {
        String str = (String) this.f4935.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        C3237 c3237 = (C3237) this.f4931.get(str);
        if (c3237 != null) {
            InterfaceC3239 interfaceC3239 = c3237.f12362;
            if (this.f4930.contains(str)) {
                interfaceC3239.mo3494(c3237.f12361.ᴵˊ(intent, i2));
                this.f4930.remove(str);
                return true;
            }
        }
        this.f4936.remove(str);
        this.f4932.putParcelable(str, new C3240(intent, i2));
        return true;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m3867(String str) {
        Integer num;
        if (!this.f4930.contains(str) && (num = (Integer) this.f4934.remove(str)) != null) {
            this.f4935.remove(num);
        }
        this.f4931.remove(str);
        HashMap hashMap = this.f4936;
        if (hashMap.containsKey(str)) {
            StringBuilder m5370 = AbstractC2305.m5370("Dropping pending result for request ", str, ": ");
            m5370.append(hashMap.get(str));
            m5370.toString();
            hashMap.remove(str);
        }
        Bundle bundle = this.f4932;
        if (bundle.containsKey(str)) {
            StringBuilder m53702 = AbstractC2305.m5370("Dropping pending result for request ", str, ": ");
            m53702.append(bundle.getParcelable(str));
            m53702.toString();
            bundle.remove(str);
        }
        HashMap hashMap2 = this.f4929;
        C3241 c3241 = (C3241) hashMap2.get(str);
        if (c3241 != null) {
            ArrayList arrayList = c3241.f12369;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                c3241.f12370.m715((InterfaceC0183) obj);
            }
            arrayList.clear();
            hashMap2.remove(str);
        }
    }
}
