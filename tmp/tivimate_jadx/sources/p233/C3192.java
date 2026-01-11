package p233;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.Process;
import p347.AbstractC4278;

/* renamed from: ˑˊ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3192 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f12211;

    public C3192(Context context) {
        this.f12211 = context;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m7015() {
        String nameForUid;
        int callingUid = Binder.getCallingUid();
        int myUid = Process.myUid();
        Context context = this.f12211;
        if (callingUid == myUid) {
            return ﹳٴ.ﾞᴵ(context);
        }
        if (!AbstractC4278.m8657() || (nameForUid = context.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return context.getPackageManager().isInstantApp(nameForUid);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final PackageInfo m7016(int i, String str) {
        return this.f12211.getPackageManager().getPackageInfo(str, i);
    }
}
