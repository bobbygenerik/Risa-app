package p349;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;
import p143.C2388;
import p143.C2395;
import p255.C3368;
import p360.C4369;
import ﹳˋ.ʽʽ;
import ﹳˋ.ٴﹶ;

/* renamed from: ᵎⁱ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4290 extends ٴﹶ {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static final Method f15876;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static final Class f15877;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static final Constructor f15878;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static final Method f15879;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            e.getClass().getName();
            cls = null;
            method = null;
            method2 = null;
        }
        f15878 = constructor;
        f15877 = cls;
        f15876 = method2;
        f15879 = method;
    }

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public static Typeface m8681(Object obj) {
        try {
            Object newInstance = Array.newInstance((Class<?>) f15877, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f15879.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public static boolean m8682(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f15876.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Typeface m8683(Context context, C2388 c2388, Resources resources, int i) {
        Object obj;
        int i2;
        MappedByteBuffer mappedByteBuffer;
        FileInputStream fileInputStream;
        try {
            obj = f15878.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj != null) {
            for (C2395 c2395 : c2388.f9216) {
                int i3 = c2395.f9256;
                File file = ʽʽ.ʼᐧ(context);
                if (file != null) {
                    try {
                        if (ʽʽ.ˑﹳ(file, resources, i3)) {
                            try {
                                fileInputStream = new FileInputStream(file);
                            } catch (IOException unused2) {
                                mappedByteBuffer = null;
                            }
                            try {
                                FileChannel channel = fileInputStream.getChannel();
                                mappedByteBuffer = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                                fileInputStream.close();
                                i2 = (mappedByteBuffer != null && m8682(obj, mappedByteBuffer, c2395.f9253, c2395.f9254, c2395.f9251)) ? i2 + 1 : 0;
                            } finally {
                                break;
                            }
                        }
                    } finally {
                        file.delete();
                    }
                }
                mappedByteBuffer = null;
                if (mappedByteBuffer != null) {
                }
            }
            return m8681(obj);
        }
        return null;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Typeface m8684(Context context, C4369[] c4369Arr, int i) {
        Object obj;
        try {
            obj = f15878.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj != null) {
            int i2 = 0;
            C3368 c3368 = new C3368(0);
            int length = c4369Arr.length;
            while (true) {
                if (i2 < length) {
                    C4369 c4369 = c4369Arr[i2];
                    Uri uri = c4369.f16225;
                    ByteBuffer byteBuffer = (ByteBuffer) c3368.get(uri);
                    if (byteBuffer == null) {
                        byteBuffer = ʽʽ.יـ(context, uri);
                        c3368.put(uri, byteBuffer);
                    }
                    if (byteBuffer == null || !m8682(obj, byteBuffer, c4369.f16224, c4369.f16221, c4369.f16222)) {
                        break;
                    }
                    i2++;
                } else {
                    Typeface m8681 = m8681(obj);
                    if (m8681 != null) {
                        return Typeface.create(m8681, i);
                    }
                }
            }
        }
        return null;
    }
}
