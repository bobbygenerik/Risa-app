package p319;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import java.io.File;
import java.util.concurrent.CopyOnWriteArraySet;
import p073.C1643;
import p073.C1644;
import p073.InterfaceC1648;
import p087.AbstractC1751;
import p087.InterfaceC1745;
import p296.AbstractC3659;
import ـˎ.ˈ;
import ﹳי.ʽ;

/* renamed from: ᴵˈ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3934 implements InterfaceC1745 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static C3934 f15214;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f15215;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public volatile Object f15216;

    public C3934() {
        this.f15215 = new CopyOnWriteArraySet();
    }

    public C3934(Context context) {
        this.f15215 = context.getApplicationContext();
    }

    public /* synthetic */ C3934(Object obj) {
        this.f15215 = obj;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final AbstractBinderC3933 m8102(PackageInfo packageInfo, AbstractBinderC3933... abstractBinderC3933Arr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null && signatureArr.length == 1) {
            BinderC3928 binderC3928 = new BinderC3928(packageInfo.signatures[0].toByteArray());
            for (int i = 0; i < abstractBinderC3933Arr.length; i++) {
                if (abstractBinderC3933Arr[i].equals(binderC3928)) {
                    return abstractBinderC3933Arr[i];
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0047 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0039  */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m8103(android.content.pm.PackageInfo r4, boolean r5) {
        /*
            r0 = 1
            r1 = 0
            if (r5 == 0) goto L27
            if (r4 == 0) goto L29
            java.lang.String r2 = "com.android.vending"
            java.lang.String r3 = r4.packageName
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L1a
            java.lang.String r2 = r4.packageName
            java.lang.String r3 = "com.google.android.gms"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L27
        L1a:
            android.content.pm.ApplicationInfo r5 = r4.applicationInfo
            if (r5 != 0) goto L20
        L1e:
            r5 = r1
            goto L27
        L20:
            int r5 = r5.flags
            r5 = r5 & 129(0x81, float:1.81E-43)
            if (r5 == 0) goto L1e
            r5 = r0
        L27:
            r2 = r4
            goto L2a
        L29:
            r2 = 0
        L2a:
            if (r4 == 0) goto L48
            android.content.pm.Signature[] r4 = r2.signatures
            if (r4 == 0) goto L48
            if (r5 == 0) goto L39
            ᴵˈ.ᵔʾ[] r4 = p319.AbstractC3923.f15188
            ᴵˈ.ᵔʾ r4 = m8102(r2, r4)
            goto L45
        L39:
            ᴵˈ.ᵔʾ[] r4 = p319.AbstractC3923.f15188
            r4 = r4[r1]
            ᴵˈ.ᵔʾ[] r5 = new p319.AbstractBinderC3933[r0]
            r5[r1] = r4
            ᴵˈ.ᵔʾ r4 = m8102(r2, r5)
        L45:
            if (r4 == 0) goto L48
            return r0
        L48:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p319.C3934.m8103(android.content.pm.PackageInfo, boolean):boolean");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3934 m8104(Context context) {
        AbstractC3659.m7687(context);
        synchronized (C3934.class) {
            try {
                if (f15214 == null) {
                    AbstractC3935.m8109(context);
                    f15214 = new C3934(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f15214;
    }

    @Override // p087.InterfaceC1745
    public Object get() {
        if (this.f15216 == null) {
            synchronized (this) {
                try {
                    if (this.f15216 == null) {
                        Object obj = ((InterfaceC1745) this.f15215).get();
                        AbstractC1751.m4711(obj, "Argument must not be null");
                        this.f15216 = obj;
                    }
                } finally {
                }
            }
        }
        return this.f15216;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x01d4 A[LOOP:0: B:6:0x001c->B:12:0x01d4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x01e7 A[EDGE_INSN: B:13:0x01e7->B:14:0x01e7 BREAK  A[LOOP:0: B:6:0x001c->B:12:0x01d4], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0133 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m8105(int r18) {
        /*
            Method dump skipped, instructions count: 517
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p319.C3934.m8105(int):boolean");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public InterfaceC1648 m8106() {
        if (((InterfaceC1648) this.f15216) == null) {
            synchronized (this) {
                try {
                    if (((InterfaceC1648) this.f15216) == null) {
                        File cacheDir = ((C1644) ((ʽ) this.f15215).ʾˋ).f6687.getCacheDir();
                        C1643 c1643 = null;
                        File file = cacheDir == null ? null : new File(cacheDir, "image_manager_disk_cache");
                        if (file != null && (file.isDirectory() || file.mkdirs())) {
                            c1643 = new C1643(file);
                        }
                        this.f15216 = c1643;
                    }
                    if (((InterfaceC1648) this.f15216) == null) {
                        this.f15216 = new ˈ(9);
                    }
                } finally {
                }
            }
        }
        return (InterfaceC1648) this.f15216;
    }
}
