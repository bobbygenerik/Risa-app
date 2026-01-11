package p449;

import com.google.android.gms.internal.measurement.C0344;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.LinkedBlockingQueue;
import org.slf4j.ILoggerFactory;
import org.slf4j.impl.StaticLoggerBinder;
import p050.C1384;
import p050.C1385;
import p050.C1386;
import p426.C5054;
import ʽٴ.ˈ;
import ٴﾞ.ˆʾ;

/* renamed from: ﾞʼ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5359 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final boolean f20395;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final String[] f20396;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static volatile int f20398;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final String f20399;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0344 f20397 = new C0344(2);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final ˆʾ f20394 = new ˆʾ(7);

    static {
        String str;
        try {
            str = System.getProperty("slf4j.detectLoggerNameMismatch");
        } catch (SecurityException unused) {
            str = null;
        }
        f20395 = str == null ? false : str.equalsIgnoreCase("true");
        f20396 = new String[]{"1.6", "1.7"};
        f20399 = "org/slf4j/impl/StaticLoggerBinder.class";
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static void m10746(LinkedHashSet linkedHashSet) {
        if (linkedHashSet == null || linkedHashSet.size() <= 1) {
            return;
        }
        ˈ.ـˆ("Actual binding is of type [" + StaticLoggerBinder.getSingleton().getLoggerFactoryClassStr() + "]");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m10747() {
        C0344 c0344 = f20397;
        synchronized (c0344) {
            try {
                c0344.f2000 = true;
                ArrayList arrayList = new ArrayList(((HashMap) c0344.f1997).values());
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    C1385 c1385 = (C1385) obj;
                    c1385.f5441 = m10756(c1385.f5437);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static void m10748(LinkedHashSet linkedHashSet) {
        if (linkedHashSet.size() > 1) {
            ˈ.ـˆ("Class path contains multiple SLF4J bindings.");
            Iterator it = linkedHashSet.iterator();
            while (it.hasNext()) {
                ˈ.ـˆ("Found binding in [" + ((URL) it.next()) + "]");
            }
            ˈ.ـˆ("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static ILoggerFactory m10749() {
        if (f20398 == 0) {
            synchronized (AbstractC5359.class) {
                try {
                    if (f20398 == 0) {
                        f20398 = 1;
                        m10755();
                        if (f20398 == 3) {
                            m10751();
                        }
                    }
                } finally {
                }
            }
        }
        int i = f20398;
        if (i == 1) {
            return f20397;
        }
        if (i == 2) {
            throw new IllegalStateException("org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit");
        }
        if (i == 3) {
            return StaticLoggerBinder.getSingleton().getLoggerFactory();
        }
        if (i == 4) {
            return f20394;
        }
        throw new IllegalStateException("Unreachable code");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.SecurityManager] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static InterfaceC5360 m10750(Class cls) {
        int i;
        C1384 c1384;
        InterfaceC5360 m10756 = m10756(cls.getName());
        if (f20395) {
            C1384 c13842 = ˈ.ﹳٴ;
            Class cls2 = null;
            C1384 c13843 = c13842;
            if (c13842 == null) {
                if (ˈ.ⁱˊ) {
                    c13843 = null;
                } else {
                    try {
                        c1384 = new SecurityManager();
                    } catch (SecurityException unused) {
                        c1384 = null;
                    }
                    ˈ.ﹳٴ = c1384;
                    ˈ.ⁱˊ = true;
                    c13843 = c1384;
                }
            }
            if (c13843 != null) {
                Class[] classContext = c13843.getClassContext();
                String name = ˈ.class.getName();
                int i2 = 0;
                while (i2 < classContext.length && !name.equals(classContext[i2].getName())) {
                    i2++;
                }
                if (i2 >= classContext.length || (i = i2 + 2) >= classContext.length) {
                    throw new IllegalStateException("Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen");
                }
                cls2 = classContext[i];
            }
            if (cls2 != null && !cls2.isAssignableFrom(cls)) {
                ˈ.ـˆ("Detected logger name mismatch. Given name: \"" + m10756.getName() + "\"; computed name: \"" + cls2.getName() + "\".");
                ˈ.ـˆ("See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation");
            }
        }
        return m10756;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final void m10751() {
        try {
            String str = StaticLoggerBinder.REQUESTED_API_VERSION;
            boolean z = false;
            for (String str2 : f20396) {
                if (str.startsWith(str2)) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            ˈ.ـˆ("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(f20396).toString());
            ˈ.ـˆ("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
        } catch (NoSuchFieldError unused) {
        } catch (Throwable th) {
            System.err.println("Unexpected problem occured during version sanity check");
            System.err.println("Reported exception:");
            th.printStackTrace();
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static boolean m10752() {
        String str;
        try {
            str = System.getProperty("java.vendor.url");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str == null) {
            return false;
        }
        return str.toLowerCase().contains("android");
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m10753() {
        LinkedBlockingQueue linkedBlockingQueue = (LinkedBlockingQueue) f20397.f1999;
        int size = linkedBlockingQueue.size();
        ArrayList arrayList = new ArrayList(128);
        int i = 0;
        while (linkedBlockingQueue.drainTo(arrayList, 128) != 0) {
            int size2 = arrayList.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj = arrayList.get(i2);
                i2++;
                C5054 c5054 = (C5054) obj;
                if (c5054 != null) {
                    C1385 c1385 = c5054.f19018;
                    String str = c1385.f5437;
                    if (c1385.f5441 == null) {
                        throw new IllegalStateException("Delegate logger cannot be null at this state.");
                    }
                    if (!(c1385.f5441 instanceof C1386)) {
                        if (!c1385.m4089()) {
                            ˈ.ـˆ(str);
                        } else if (c1385.m4089()) {
                            try {
                                c1385.f5438.invoke(c1385.f5441, c5054);
                            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
                            }
                        }
                    }
                }
                int i3 = i + 1;
                if (i == 0) {
                    if (c5054.f19018.m4089()) {
                        ˈ.ـˆ("A number (" + size + ") of logging calls during the initialization phase have been intercepted and are");
                        ˈ.ـˆ("now being replayed. These are subject to the filtering rules of the underlying logging system.");
                        ˈ.ـˆ("See also http://www.slf4j.org/codes.html#replay");
                    } else if (!(c5054.f19018.f5441 instanceof C1386)) {
                        ˈ.ـˆ("The following set of substitute loggers may have been accessed");
                        ˈ.ـˆ("during the initialization phase. Logging calls during this");
                        ˈ.ـˆ("phase were not honored. However, subsequent logging calls to these");
                        ˈ.ـˆ("loggers will work as normally expected.");
                        ˈ.ـˆ("See also http://www.slf4j.org/codes.html#substituteLogger");
                    }
                }
                i = i3;
            }
            arrayList.clear();
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static LinkedHashSet m10754() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            ClassLoader classLoader = AbstractC5359.class.getClassLoader();
            String str = f20399;
            Enumeration<URL> systemResources = classLoader == null ? ClassLoader.getSystemResources(str) : classLoader.getResources(str);
            while (systemResources.hasMoreElements()) {
                linkedHashSet.add(systemResources.nextElement());
            }
            return linkedHashSet;
        } catch (IOException e) {
            System.err.println("Error getting resources from path");
            System.err.println("Reported exception:");
            e.printStackTrace();
            return linkedHashSet;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final void m10755() {
        LinkedHashSet linkedHashSet;
        try {
            if (m10752()) {
                linkedHashSet = null;
            } else {
                linkedHashSet = m10754();
                m10748(linkedHashSet);
            }
            StaticLoggerBinder.getSingleton();
            f20398 = 3;
            m10746(linkedHashSet);
            m10747();
            m10753();
            C0344 c0344 = f20397;
            ((HashMap) c0344.f1997).clear();
            ((LinkedBlockingQueue) c0344.f1999).clear();
        } catch (Exception e) {
            f20398 = 2;
            System.err.println("Failed to instantiate SLF4J LoggerFactory");
            System.err.println("Reported exception:");
            e.printStackTrace();
            throw new IllegalStateException("Unexpected initialization failure", e);
        } catch (NoClassDefFoundError e2) {
            String message = e2.getMessage();
            if (message == null || !(message.contains("org/slf4j/impl/StaticLoggerBinder") || message.contains("org.slf4j.impl.StaticLoggerBinder"))) {
                f20398 = 2;
                System.err.println("Failed to instantiate SLF4J LoggerFactory");
                System.err.println("Reported exception:");
                e2.printStackTrace();
                throw e2;
            }
            f20398 = 4;
            ˈ.ـˆ("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
            ˈ.ـˆ("Defaulting to no-operation (NOP) logger implementation");
            ˈ.ـˆ("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
        } catch (NoSuchMethodError e3) {
            String message2 = e3.getMessage();
            if (message2 != null && message2.contains("org.slf4j.impl.StaticLoggerBinder.getSingleton()")) {
                f20398 = 2;
                ˈ.ـˆ("slf4j-api 1.6.x (or later) is incompatible with this binding.");
                ˈ.ـˆ("Your binding is version 1.5.5 or earlier.");
                ˈ.ـˆ("Upgrade your binding to version 1.6.x.");
            }
            throw e3;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static InterfaceC5360 m10756(String str) {
        return m10749().mo1594(str);
    }
}
