package com.google.android.gms.internal.measurement;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p255.C3368;

/* renamed from: com.google.android.gms.internal.measurement.ᐧˉ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0425 implements InterfaceC0456 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0298 f2168 = new C0298(3);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f2169;

    public C0425(int i) {
        switch (i) {
            case 1:
                this.f2169 = new HashMap();
                return;
            default:
                C0464 c0464 = C0464.f2220;
                C0425 c0425 = new C0425(new InterfaceC0456[]{C0298.f1921, f2168});
                Charset charset = AbstractC0405.f2135;
                this.f2169 = c0425;
                return;
        }
    }

    public C0425(C0260 c0260) {
        Charset charset = AbstractC0405.f2135;
        this.f2169 = c0260;
        c0260.f1755 = this;
    }

    public /* synthetic */ C0425(Object obj) {
        this.f2169 = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [יـ.ﹳᐧ] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public Object m1850() {
        C0289 c0289 = (C0289) this.f2169;
        ContentResolver contentResolver = c0289.f1900;
        Uri uri = c0289.f1899;
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
        try {
            if (acquireUnstableContentProviderClient == null) {
                return Collections.EMPTY_MAP;
            }
            Cursor query = acquireUnstableContentProviderClient.query(uri, C0289.f1893, null, null, null);
            try {
                if (query == null) {
                    return Collections.EMPTY_MAP;
                }
                int count = query.getCount();
                if (count == 0) {
                    Map map = Collections.EMPTY_MAP;
                    query.close();
                    return map;
                }
                HashMap c3368 = count <= 256 ? new C3368(count) : new HashMap(count, 1.0f);
                while (query.moveToNext()) {
                    c3368.put(query.getString(0), query.getString(1));
                }
                if (query.isAfterLast()) {
                    query.close();
                    return c3368;
                }
                Map map2 = Collections.EMPTY_MAP;
                query.close();
                return map2;
            } finally {
            }
        } catch (RemoteException e) {
            return Collections.EMPTY_MAP;
        } finally {
            acquireUnstableContentProviderClient.release();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m1851(int i, Object obj, InterfaceC0363 interfaceC0363) {
        AbstractC0514 abstractC0514 = (AbstractC0514) obj;
        C0260 c0260 = (C0260) this.f2169;
        c0260.m1214((i << 3) | 2);
        c0260.m1214(abstractC0514.mo1234(interfaceC0363));
        interfaceC0363.mo1527(abstractC0514, c0260.f1755);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void m1852(int i, Object obj, InterfaceC0363 interfaceC0363) {
        C0260 c0260 = (C0260) this.f2169;
        c0260.m1212(i, 3);
        interfaceC0363.mo1527((AbstractC0514) obj, c0260.f1755);
        c0260.m1212(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0456
    /* renamed from: ⁱˊ */
    public C0423 mo1311(Class cls) {
        for (int i = 0; i < 2; i++) {
            InterfaceC0456 interfaceC0456 = ((InterfaceC0456[]) this.f2169)[i];
            if (interfaceC0456.mo1312(cls)) {
                return interfaceC0456.mo1311(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0456
    /* renamed from: ﹳٴ */
    public boolean mo1312(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (((InterfaceC0456[]) this.f2169)[i].mo1312(cls)) {
                return true;
            }
        }
        return false;
    }
}
