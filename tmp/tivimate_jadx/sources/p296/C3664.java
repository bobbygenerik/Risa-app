package p296;

import android.net.Uri;
import java.util.Arrays;

/* renamed from: ٴﾞ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3664 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final Uri f14342 = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f14343;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f14344;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f14345;

    public C3664(String str, boolean z) {
        AbstractC3659.m7680(str);
        this.f14345 = str;
        AbstractC3659.m7680("com.google.android.gms");
        this.f14344 = "com.google.android.gms";
        this.f14343 = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3664)) {
            return false;
        }
        C3664 c3664 = (C3664) obj;
        return AbstractC3659.m7679(this.f14345, c3664.f14345) && AbstractC3659.m7679(this.f14344, c3664.f14344) && AbstractC3659.m7679(null, null) && this.f14343 == c3664.f14343;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f14345, this.f14344, null, 4225, Boolean.valueOf(this.f14343)});
    }

    public final String toString() {
        String str = this.f14345;
        if (str != null) {
            return str;
        }
        AbstractC3659.m7687(null);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009c A[RETURN] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.content.Intent m7693(android.content.Context r6) {
        /*
            r5 = this;
            java.lang.String r0 = "ConnectionStatusConfig"
            r1 = 0
            java.lang.String r2 = r5.f14345
            if (r2 == 0) goto L9d
            boolean r3 = r5.f14343
            if (r3 == 0) goto L8e
            android.os.Bundle r3 = new android.os.Bundle
            r3.<init>()
            java.lang.String r4 = "serviceActionBundleKey"
            r3.putString(r4, r2)
            android.content.ContentResolver r6 = r6.getContentResolver()     // Catch: java.lang.IllegalArgumentException -> L34 android.os.RemoteException -> L36
            android.net.Uri r4 = p296.C3664.f14342     // Catch: java.lang.IllegalArgumentException -> L34 android.os.RemoteException -> L36
            android.content.ContentProviderClient r6 = r6.acquireUnstableContentProviderClient(r4)     // Catch: java.lang.IllegalArgumentException -> L34 android.os.RemoteException -> L36
            if (r6 == 0) goto L38
            java.lang.String r4 = "serviceIntentCall"
            android.os.Bundle r3 = r6.call(r4, r1, r3)     // Catch: java.lang.Throwable -> L2f
            r6.release()     // Catch: java.lang.IllegalArgumentException -> L2b android.os.RemoteException -> L2d
            goto L4c
        L2b:
            r6 = move-exception
            goto L41
        L2d:
            r6 = move-exception
            goto L41
        L2f:
            r3 = move-exception
            r6.release()     // Catch: java.lang.IllegalArgumentException -> L34 android.os.RemoteException -> L36
            throw r3     // Catch: java.lang.IllegalArgumentException -> L34 android.os.RemoteException -> L36
        L34:
            r6 = move-exception
            goto L40
        L36:
            r6 = move-exception
            goto L40
        L38:
            android.os.RemoteException r6 = new android.os.RemoteException     // Catch: java.lang.IllegalArgumentException -> L34 android.os.RemoteException -> L36
            java.lang.String r3 = "Failed to acquire ContentProviderClient"
            r6.<init>(r3)     // Catch: java.lang.IllegalArgumentException -> L34 android.os.RemoteException -> L36
            throw r6     // Catch: java.lang.IllegalArgumentException -> L34 android.os.RemoteException -> L36
        L40:
            r3 = r1
        L41:
            java.lang.String r4 = "Dynamic intent resolution failed: "
            java.lang.String r6 = r6.toString()
            java.lang.String r6 = r4.concat(r6)
        L4c:
            if (r3 == 0) goto L85
            java.lang.String r6 = "serviceResponseIntentKey"
            android.os.Parcelable r6 = r3.getParcelable(r6)
            r1 = r6
            android.content.Intent r1 = (android.content.Intent) r1
            if (r1 != 0) goto L85
            java.lang.String r6 = "serviceMissingResolutionIntentKey"
            android.os.Parcelable r6 = r3.getParcelable(r6)
            android.app.PendingIntent r6 = (android.app.PendingIntent) r6
            if (r6 != 0) goto L64
            goto L85
        L64:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "Dynamic lookup for intent failed for action "
            r1.<init>(r3)
            r1.append(r2)
            java.lang.String r2 = " but has possible resolution"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            com.google.android.gms.common.internal.zzaj r0 = new com.google.android.gms.common.internal.zzaj
            ᴵˈ.ⁱˊ r1 = new ᴵˈ.ⁱˊ
            r2 = 25
            r1.<init>(r2, r6)
            r0.<init>(r1)
            throw r0
        L85:
            if (r1 != 0) goto L8e
            java.lang.String r6 = "Dynamic lookup for intent failed for action: "
            java.lang.String r6 = r6.concat(r2)
        L8e:
            if (r1 != 0) goto L9c
            android.content.Intent r6 = new android.content.Intent
            r6.<init>(r2)
            java.lang.String r0 = r5.f14344
            android.content.Intent r6 = r6.setPackage(r0)
            return r6
        L9c:
            return r1
        L9d:
            android.content.Intent r6 = new android.content.Intent
            r6.<init>()
            android.content.Intent r6 = r6.setComponent(r1)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: p296.C3664.m7693(android.content.Context):android.content.Intent");
    }
}
