package com.google.android.gms.internal.measurement;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import p137.C2282;

/* renamed from: com.google.android.gms.internal.measurement.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0371 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f2031;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f2032;

    public C0371(int i) {
        switch (i) {
            case 3:
                this.f2032 = new TreeMap();
                this.f2031 = new TreeMap();
                return;
            default:
                this.f2032 = new HashMap();
                this.f2031 = new C0392(6);
                C0392 c0392 = new C0392(0);
                EnumC0401 enumC0401 = EnumC0401.f2086;
                ArrayList arrayList = c0392.f2056;
                arrayList.add(enumC0401);
                arrayList.add(EnumC0401.f2104);
                arrayList.add(EnumC0401.f2085);
                arrayList.add(EnumC0401.f2118);
                arrayList.add(EnumC0401.f2102);
                arrayList.add(EnumC0401.f2116);
                arrayList.add(EnumC0401.f2119);
                m1700(c0392);
                C0392 c03922 = new C0392(1);
                EnumC0401 enumC04012 = EnumC0401.f2112;
                ArrayList arrayList2 = c03922.f2056;
                arrayList2.add(enumC04012);
                arrayList2.add(EnumC0401.f2128);
                arrayList2.add(EnumC0401.f2126);
                arrayList2.add(EnumC0401.f2066);
                arrayList2.add(EnumC0401.f2093);
                arrayList2.add(EnumC0401.f2114);
                arrayList2.add(EnumC0401.f2099);
                arrayList2.add(EnumC0401.f2092);
                m1700(c03922);
                C0392 c03923 = new C0392(2);
                EnumC0401 enumC04013 = EnumC0401.f2082;
                ArrayList arrayList3 = c03923.f2056;
                arrayList3.add(enumC04013);
                arrayList3.add(EnumC0401.f2079);
                arrayList3.add(EnumC0401.f2120);
                arrayList3.add(EnumC0401.f2080);
                arrayList3.add(EnumC0401.f2098);
                arrayList3.add(EnumC0401.f2089);
                arrayList3.add(EnumC0401.f2124);
                arrayList3.add(EnumC0401.f2076);
                arrayList3.add(EnumC0401.f2105);
                arrayList3.add(EnumC0401.f2075);
                arrayList3.add(EnumC0401.f2067);
                arrayList3.add(EnumC0401.f2077);
                arrayList3.add(EnumC0401.f2125);
                m1700(c03923);
                C0392 c03924 = new C0392(3);
                EnumC0401 enumC04014 = EnumC0401.f2071;
                ArrayList arrayList4 = c03924.f2056;
                arrayList4.add(enumC04014);
                arrayList4.add(EnumC0401.f2074);
                arrayList4.add(EnumC0401.f2090);
                m1700(c03924);
                C0392 c03925 = new C0392(4);
                EnumC0401 enumC04015 = EnumC0401.f2078;
                ArrayList arrayList5 = c03925.f2056;
                arrayList5.add(enumC04015);
                arrayList5.add(EnumC0401.f2117);
                arrayList5.add(EnumC0401.f2109);
                arrayList5.add(EnumC0401.f2107);
                arrayList5.add(EnumC0401.f2091);
                arrayList5.add(EnumC0401.f2110);
                arrayList5.add(EnumC0401.f2068);
                arrayList5.add(EnumC0401.f2100);
                m1700(c03925);
                C0392 c03926 = new C0392(5);
                EnumC0401 enumC04016 = EnumC0401.f2111;
                ArrayList arrayList6 = c03926.f2056;
                arrayList6.add(enumC04016);
                arrayList6.add(EnumC0401.f2083);
                arrayList6.add(EnumC0401.f2072);
                arrayList6.add(EnumC0401.f2108);
                arrayList6.add(EnumC0401.f2095);
                arrayList6.add(EnumC0401.f2096);
                arrayList6.add(EnumC0401.f2073);
                arrayList6.add(EnumC0401.f2121);
                arrayList6.add(EnumC0401.f2106);
                arrayList6.add(EnumC0401.f2115);
                m1700(c03926);
                C0392 c03927 = new C0392(7);
                EnumC0401 enumC04017 = EnumC0401.f2113;
                ArrayList arrayList7 = c03927.f2056;
                arrayList7.add(enumC04017);
                arrayList7.add(EnumC0401.f2094);
                arrayList7.add(EnumC0401.f2087);
                arrayList7.add(EnumC0401.f2069);
                arrayList7.add(EnumC0401.f2084);
                arrayList7.add(EnumC0401.f2088);
                arrayList7.add(EnumC0401.f2101);
                arrayList7.add(EnumC0401.f2081);
                arrayList7.add(EnumC0401.f2070);
                arrayList7.add(EnumC0401.f2097);
                arrayList7.add(EnumC0401.f2122);
                arrayList7.add(EnumC0401.f2065);
                arrayList7.add(EnumC0401.f2127);
                m1700(c03927);
                return;
        }
    }

    public /* synthetic */ C0371(Object obj, Object obj2) {
        this.f2032 = obj;
        this.f2031 = obj2;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public InterfaceC0457 m1698(ˏˆ.ﹳٴ r4, InterfaceC0457 interfaceC0457) {
        ˉᵎ.ⁱˊ.ʿᵢ(r4);
        if (!(interfaceC0457 instanceof C0330)) {
            return interfaceC0457;
        }
        C0330 c0330 = (C0330) interfaceC0457;
        ArrayList arrayList = c0330.f1982;
        String str = c0330.f1981;
        HashMap hashMap = (HashMap) this.f2032;
        return (hashMap.containsKey(str) ? (C0392) hashMap.get(str) : (C0392) this.f2031).m1783(str, r4, arrayList);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m1699(ˏˆ.ﹳٴ r10, ᵢ.ﹳٴ r11) {
        C0351 c0351 = new C0351(r11);
        TreeMap treeMap = (TreeMap) this.f2032;
        for (Integer num : treeMap.keySet()) {
            C0484 clone = ((C0484) r11.ʽʽ).clone();
            InterfaceC0457 mo1199 = ((C0329) treeMap.get(num)).mo1199(r10, Collections.singletonList(c0351));
            int i = mo1199 instanceof C0453 ? ˉᵎ.ⁱˊ.ˈⁱ(((C0453) mo1199).f2204.doubleValue()) : -1;
            if (i == 2 || i == -1) {
                r11.ʽʽ = clone;
            }
        }
        TreeMap treeMap2 = (TreeMap) this.f2031;
        Iterator it = treeMap2.keySet().iterator();
        while (it.hasNext()) {
            InterfaceC0457 mo11992 = ((C0329) treeMap2.get((Integer) it.next())).mo1199(r10, Collections.singletonList(c0351));
            if (mo11992 instanceof C0453) {
                ˉᵎ.ⁱˊ.ˈⁱ(((C0453) mo11992).f2204.doubleValue());
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m1700(C0392 c0392) {
        ArrayList arrayList = c0392.f2056;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((HashMap) this.f2032).put(Integer.valueOf(((EnumC0401) obj).f2129).toString(), c0392);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Object m1701() {
        Uri uri;
        ContentProviderClient acquireUnstableContentProviderClient;
        String str;
        C0344 c0344 = (C0344) this.f2032;
        String str2 = (String) this.f2031;
        Context context = (Context) c0344.f1997;
        context.getClass();
        ContentResolver contentResolver = context.getContentResolver();
        C2282 c2282 = AbstractC0357.f2016;
        if (contentResolver == null) {
            c2282.getClass();
            throw new IllegalStateException("ContentResolver needed with GservicesDelegateSupplier.init()");
        }
        synchronized (c2282) {
            try {
                if (((HashMap) c2282.f8928) == null) {
                    ((AtomicBoolean) c2282.f8929).set(false);
                    c2282.f8928 = new HashMap(16, 1.0f);
                    c2282.f8927 = new Object();
                    contentResolver.registerContentObserver(AbstractC0246.f1731, true, new C0396(c2282));
                } else if (((AtomicBoolean) c2282.f8929).getAndSet(false)) {
                    ((HashMap) c2282.f8928).clear();
                    ((HashMap) c2282.f8924).clear();
                    ((HashMap) c2282.f8925).clear();
                    ((HashMap) c2282.f8926).clear();
                    ((HashMap) c2282.f8930).clear();
                    c2282.f8927 = new Object();
                }
                Object obj = c2282.f8927;
                String str3 = null;
                if (((HashMap) c2282.f8928).containsKey(str2)) {
                    String str4 = (String) ((HashMap) c2282.f8928).get(str2);
                    if (str4 != null) {
                        str3 = str4;
                    }
                    return str3;
                }
                try {
                    uri = AbstractC0246.f1731;
                    acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
                } catch (zzjk unused) {
                }
                try {
                    if (acquireUnstableContentProviderClient == null) {
                        throw new Exception("Unable to acquire ContentProviderClient");
                    }
                    try {
                        Cursor query = acquireUnstableContentProviderClient.query(uri, null, null, new String[]{str2}, null);
                        try {
                            if (query == null) {
                                throw new Exception("ContentProvider query returned null cursor");
                            }
                            if (query.moveToFirst()) {
                                str = query.getString(1);
                                query.close();
                            } else {
                                query.close();
                                str = null;
                            }
                            if (str != null && str.equals(null)) {
                                str = null;
                            }
                            synchronized (c2282) {
                                try {
                                    if (obj == c2282.f8927) {
                                        ((HashMap) c2282.f8928).put(str2, str);
                                    }
                                } finally {
                                }
                            }
                            if (str != null) {
                                return str;
                            }
                            return null;
                        } finally {
                        }
                    } catch (RemoteException e) {
                        throw new Exception("ContentProvider query failed", e);
                    }
                } finally {
                    acquireUnstableContentProviderClient.release();
                }
            } finally {
            }
        }
    }
}
