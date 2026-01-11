package p275;

import android.content.pm.PackageManager;
import android.content.pm.Signature;
import ٴﾞ.ˆʾ;

/* renamed from: ـﹶ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3505 extends ˆʾ {
    /* renamed from: ـˆ, reason: contains not printable characters */
    public final Signature[] m7450(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }
}
