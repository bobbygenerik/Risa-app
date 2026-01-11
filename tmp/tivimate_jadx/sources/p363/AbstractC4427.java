package p363;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import p035.ExecutorC1212;
import p114.C1981;
import p255.C3367;
import p255.C3370;
import ʿʿ.ﹳٴ;

/* renamed from: ᵔᵢ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4427 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final ExecutorC1212 f16472 = new ExecutorC1212(new ﹳٴ(6));

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final int f16477 = -100;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static C1981 f16471 = null;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static C1981 f16473 = null;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static Boolean f16478 = null;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static boolean f16475 = false;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final C3370 f16476 = new C3370(0);

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final Object f16474 = new Object();

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final Object f16479 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m8933(Context context) {
        if (f16478 == null) {
            try {
                int i = AbstractServiceC4424.f16442;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) AbstractServiceC4424.class), Build.VERSION.SDK_INT >= 24 ? AbstractC4412.m8917() | 128 : 640).metaData;
                if (bundle != null) {
                    f16478 = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                f16478 = Boolean.FALSE;
            }
        }
        return f16478.booleanValue();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m8934(LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430) {
        synchronized (f16474) {
            try {
                C3370 c3370 = f16476;
                c3370.getClass();
                C3367 c3367 = new C3367(c3370);
                while (c3367.hasNext()) {
                    AbstractC4427 abstractC4427 = (AbstractC4427) ((WeakReference) c3367.next()).get();
                    if (abstractC4427 == layoutInflaterFactory2C4430 || abstractC4427 == null) {
                        c3367.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public abstract void mo8935(int i);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public abstract void mo8936(View view);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public abstract void mo8937();

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public abstract void mo8938(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public abstract boolean mo8939(int i);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public abstract void mo8940();

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public abstract void mo8941(CharSequence charSequence);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public abstract void mo8942();
}
