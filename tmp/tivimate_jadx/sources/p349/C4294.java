package p349;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p143.C2388;
import p143.C2395;
import p360.C4369;
import ﹳˋ.ʽʽ;
import ﹳˋ.ٴﹶ;

/* renamed from: ᵎⁱ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4294 extends ٴﹶ {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static Method f15893;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static boolean f15894;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static Class f15895;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static Constructor f15896;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static Method f15897;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public static void m8700() {
        Method method;
        Class<?> cls;
        Method method2;
        if (f15894) {
            return;
        }
        f15894 = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            e.getClass().getName();
            method = null;
            cls = null;
            method2 = null;
        }
        f15896 = constructor;
        f15895 = cls;
        f15893 = method2;
        f15897 = method;
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public static boolean m8701(Object obj, String str, int i, boolean z) {
        m8700();
        try {
            try {
                return ((Boolean) f15893.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
            } catch (InvocationTargetException e) {
                e = e;
                throw new RuntimeException(e);
            }
        } catch (IllegalAccessException | InvocationTargetException e2) {
            e = e2;
        }
    }

    /* renamed from: ˆʾ */
    public Typeface mo8686(Context context, C2388 c2388, Resources resources, int i) {
        m8700();
        try {
            Object newInstance = f15896.newInstance(null);
            for (C2395 c2395 : c2388.f9216) {
                File file = ʽʽ.ʼᐧ(context);
                if (file == null) {
                    return null;
                }
                try {
                    if (!ʽʽ.ˑﹳ(file, resources, c2395.f9256)) {
                        return null;
                    }
                    if (!m8701(newInstance, file.getPath(), c2395.f9254, c2395.f9251)) {
                        return null;
                    }
                    file.delete();
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    file.delete();
                }
            }
            m8700();
            try {
                Object newInstance2 = Array.newInstance((Class<?>) f15895, 1);
                Array.set(newInstance2, 0, newInstance);
                return (Typeface) f15897.invoke(null, newInstance2);
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new RuntimeException(e);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: ٴﹶ */
    public Typeface mo8688(Context context, C4369[] c4369Arr, int i) {
        File file;
        String readlink;
        if (c4369Arr.length >= 1) {
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(יـ(c4369Arr, i).f16225, "r", null);
                if (openFileDescriptor != null) {
                    try {
                        try {
                            readlink = Os.readlink("/proc/self/fd/" + openFileDescriptor.getFd());
                        } catch (Throwable th) {
                            try {
                                openFileDescriptor.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (ErrnoException unused) {
                    }
                    try {
                        if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                            file = new File(readlink);
                            if (file != null && file.canRead()) {
                                Typeface createFromFile = Typeface.createFromFile(file);
                                openFileDescriptor.close();
                                return createFromFile;
                            }
                            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                            Typeface typeface = ˉʿ(context, fileInputStream);
                            fileInputStream.close();
                            openFileDescriptor.close();
                            return typeface;
                        }
                        Typeface typeface2 = ˉʿ(context, fileInputStream);
                        fileInputStream.close();
                        openFileDescriptor.close();
                        return typeface2;
                    } finally {
                    }
                    file = null;
                    if (file != null) {
                        Typeface createFromFile2 = Typeface.createFromFile(file);
                        openFileDescriptor.close();
                        return createFromFile2;
                    }
                    FileInputStream fileInputStream2 = new FileInputStream(openFileDescriptor.getFileDescriptor());
                } else if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                    return null;
                }
            } catch (IOException unused2) {
            }
        }
        return null;
    }
}
