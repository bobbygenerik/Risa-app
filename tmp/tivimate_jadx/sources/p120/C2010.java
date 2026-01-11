package p120;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import androidx.leanback.widget.ﾞʻ;
import com.google.android.gms.dynamite.DynamiteModule$LoadingException;
import com.google.android.gms.internal.measurement.AbstractC0292;
import com.parse.ˑ;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import p012.C0888;
import p088.BinderC1753;
import p088.InterfaceC1754;
import p296.AbstractC3659;
import p319.C3940;
import ˋⁱ.ﾞᴵ;
import ٴﾞ.ˆʾ;
import ᵎˉ.ⁱˊ;
import ﹳˋ.ʼˎ;

/* renamed from: ˈˆ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2010 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static Boolean f7889 = null;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static C2007 f7893 = null;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static Boolean f7894 = null;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static boolean f7896 = false;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static C2009 f7897 = null;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int f7898 = -1;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static String f7901;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f7902;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final ThreadLocal f7891 = new ThreadLocal();

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final ˑ f7895 = new ˑ(4);

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final ˆʾ f7900 = new ˆʾ(12);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final ⁱˊ f7899 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final ʼˎ f7890 = new ʼˎ(12);

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final ﾞᴵ f7892 = new Object();

    public C2010(Context context) {
        this.f7902 = context;
    }

    /* JADX WARN: Type inference failed for: r11v0, types: [ˈˆ.ᵔᵢ, java.lang.Object] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public static C2010 m4991(Context context, InterfaceC2008 interfaceC2008, String str) {
        long j;
        C2010 c2010;
        Boolean bool;
        InterfaceC1754 m4985;
        C2010 c20102;
        C2009 c2009;
        boolean z;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new Exception("null application Context");
        }
        ThreadLocal threadLocal = f7891;
        C2013 c2013 = (C2013) threadLocal.get();
        ?? obj = new Object();
        threadLocal.set(obj);
        ˑ r12 = f7895;
        Long l = (Long) r12.get();
        long longValue = l.longValue();
        try {
            r12.set(Long.valueOf(SystemClock.uptimeMillis()));
            C0888 m4988 = interfaceC2008.m4988(context, str, f7900);
            j = longValue;
            try {
                String str2 = "Considering local module " + str + ":" + m4988.f3755 + " and remote module " + str + ":" + m4988.f3754;
                int i = m4988.f3753;
                if (i != 0) {
                    if (i == -1) {
                        if (m4988.f3755 != 0) {
                            i = -1;
                        }
                    }
                    if (i != 1 || m4988.f3754 != 0) {
                        if (i == -1) {
                            "Selected local version of ".concat(str);
                            c2010 = new C2010(applicationContext);
                        } else {
                            if (i != 1) {
                                throw new Exception("VersionPolicy returned invalid code:" + i);
                            }
                            try {
                                int i2 = m4988.f3754;
                                try {
                                    synchronized (C2010.class) {
                                        if (!m4994(context)) {
                                            throw new Exception("Remote loading disabled");
                                        }
                                        bool = f7894;
                                    }
                                    if (bool == null) {
                                        throw new Exception("Failed to determine which loading route to use.");
                                    }
                                    if (bool.booleanValue()) {
                                        String str3 = "Selected remote version of " + str + ", version >= " + i2;
                                        synchronized (C2010.class) {
                                            c2009 = f7897;
                                        }
                                        if (c2009 == null) {
                                            throw new Exception("DynamiteLoaderV2 was not cached.");
                                        }
                                        C2013 c20132 = (C2013) threadLocal.get();
                                        if (c20132 == null || c20132.f7904 == null) {
                                            throw new Exception("No result cursor");
                                        }
                                        Context applicationContext2 = context.getApplicationContext();
                                        Cursor cursor = c20132.f7904;
                                        new BinderC1753(null);
                                        synchronized (C2010.class) {
                                            z = f7898 >= 2;
                                        }
                                        Context context2 = (Context) BinderC1753.m4715(z ? c2009.m4989(new BinderC1753(applicationContext2), str, i2, new BinderC1753(cursor)) : c2009.m4990(new BinderC1753(applicationContext2), str, i2, new BinderC1753(cursor)));
                                        if (context2 == null) {
                                            throw new Exception("Failed to get module context");
                                        }
                                        c20102 = new C2010(context2);
                                    } else {
                                        String str4 = "Selected remote version of " + str + ", version >= " + i2;
                                        C2007 m4995 = m4995(context);
                                        if (m4995 == null) {
                                            throw new Exception("Failed to create IDynamiteLoader.");
                                        }
                                        Parcel m1301 = m4995.m1301(m4995.m1305(), 6);
                                        int readInt = m1301.readInt();
                                        m1301.recycle();
                                        if (readInt >= 3) {
                                            C2013 c20133 = (C2013) threadLocal.get();
                                            if (c20133 == null) {
                                                throw new Exception("No cached result cursor holder");
                                            }
                                            m4985 = m4995.m4986(new BinderC1753(context), str, i2, new BinderC1753(c20133.f7904));
                                        } else {
                                            m4985 = readInt == 2 ? m4995.m4985(new BinderC1753(context), str, i2) : m4995.m4987(new BinderC1753(context), str, i2);
                                        }
                                        Object m4715 = BinderC1753.m4715(m4985);
                                        if (m4715 == null) {
                                            throw new Exception("Failed to load remote module.");
                                        }
                                        c20102 = new C2010((Context) m4715);
                                    }
                                    c2010 = c20102;
                                } catch (RemoteException e) {
                                    throw new Exception("Failed to load remote module.", e);
                                } catch (DynamiteModule$LoadingException e2) {
                                    throw e2;
                                } catch (Throwable th) {
                                    throw new Exception("Failed to load remote module.", th);
                                }
                            } catch (DynamiteModule$LoadingException e3) {
                                String str5 = "Failed to load remote module: " + e3.getMessage();
                                int i3 = m4988.f3755;
                                if (i3 == 0 || interfaceC2008.m4988(context, str, new ﾞʻ(i3, 5)).f3753 != -1) {
                                    throw new Exception("Remote load failed. No local fallback found.", e3);
                                }
                                "Selected local version of ".concat(str);
                                c2010 = new C2010(applicationContext);
                            }
                        }
                        if (j == 0) {
                            f7895.remove();
                        } else {
                            f7895.set(l);
                        }
                        Cursor cursor2 = obj.f7904;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        f7891.set(c2013);
                        return c2010;
                    }
                }
                throw new Exception("No acceptable module " + str + " found. Local version is " + m4988.f3755 + " and remote version is " + m4988.f3754 + ".");
            } catch (Throwable th2) {
                th = th2;
                if (j == 0) {
                    f7895.remove();
                } else {
                    f7895.set(l);
                }
                Cursor cursor3 = obj.f7904;
                if (cursor3 != null) {
                    cursor3.close();
                }
                f7891.set(c2013);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            j = longValue;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0178, code lost:
    
        if (r2 != false) goto L102;
     */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m4992(android.content.Context r11, java.lang.String r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p120.C2010.m4992(android.content.Context, java.lang.String, boolean):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0134, code lost:
    
        if (r5 != false) goto L93;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m4993(android.content.Context r12, java.lang.String r13, boolean r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p120.C2010.m4993(android.content.Context, java.lang.String, boolean, boolean):int");
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static boolean m4994(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f7889)) {
            return true;
        }
        boolean z = false;
        if (f7889 == null) {
            ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", Build.VERSION.SDK_INT >= 29 ? 268435456 : 0);
            if (C3940.f15236.m8112(context, 10000000) == 0 && resolveContentProvider != null && "com.google.android.gms".equals(resolveContentProvider.packageName)) {
                z = true;
            }
            f7889 = Boolean.valueOf(z);
            if (z && (applicationInfo = resolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                f7896 = true;
            }
        }
        if (!z) {
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static C2007 m4995(Context context) {
        C2007 c2007;
        synchronized (C2010.class) {
            C2007 c20072 = f7893;
            if (c20072 != null) {
                return c20072;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    c2007 = 0;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    c2007 = queryLocalInterface instanceof C2007 ? (C2007) queryLocalInterface : new AbstractC0292(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader", 2);
                }
                if (c2007 != 0) {
                    f7893 = c2007;
                    return c2007;
                }
            } catch (Exception e) {
                String str = "Failed to load IDynamiteLoader from GmsCore: " + e.getMessage();
            }
            return null;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m4996(Context context, String str) {
        try {
            Class<?> loadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (AbstractC3659.m7679(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            String str2 = "Module descriptor id '" + String.valueOf(declaredField.get(null)) + "' didn't match expected id '" + str + "'";
            return 0;
        } catch (ClassNotFoundException unused) {
            String str3 = "Local module descriptor class for " + str + " not found.";
            return 0;
        } catch (Exception e) {
            "Failed to load module descriptor class: ".concat(String.valueOf(e.getMessage()));
            return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.measurement.ʾᵎ] */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m4997(ClassLoader classLoader) {
        try {
            C2009 c2009 = null;
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(null).newInstance(null);
            if (iBinder != null) {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                c2009 = queryLocalInterface instanceof C2009 ? (C2009) queryLocalInterface : new AbstractC0292(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2", 2);
            }
            f7897 = c2009;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new Exception("Failed to instantiate dynamite loader", e);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final IBinder m4998(String str) {
        try {
            return (IBinder) this.f7902.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            throw new Exception("Failed to instantiate module class: ".concat(str), e);
        }
    }
}
