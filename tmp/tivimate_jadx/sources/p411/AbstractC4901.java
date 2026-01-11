package p411;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Debug;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Scanner;

/* renamed from: ﹳˎ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4901 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final char[] f18281 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static String m9698(FileInputStream fileInputStream) {
        Scanner useDelimiter = new Scanner(fileInputStream).useDelimiter("\\A");
        try {
            String next = useDelimiter.hasNext() ? useDelimiter.next() : "";
            useDelimiter.close();
            return next;
        } catch (Throwable th) {
            if (useDelimiter != null) {
                try {
                    useDelimiter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m9699() {
        boolean m9706 = m9706();
        ?? r0 = m9706;
        if (m9702()) {
            r0 = (m9706 ? 1 : 0) | 2;
        }
        return (Debug.isDebuggerConnected() || Debug.waitingForDebugger()) ? r0 | 4 : r0;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m9700(Context context, String str, String str2) {
        String packageName;
        Resources resources = context.getResources();
        int i = context.getApplicationContext().getApplicationInfo().icon;
        if (i > 0) {
            try {
                packageName = context.getResources().getResourcePackageName(i);
                if ("android".equals(packageName)) {
                    packageName = context.getPackageName();
                }
            } catch (Resources.NotFoundException unused) {
                packageName = context.getPackageName();
            }
        } else {
            packageName = context.getPackageName();
        }
        return resources.getIdentifier(str, str2, packageName);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static String m9701(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            int i2 = i * 2;
            char[] cArr2 = f18281;
            cArr[i2] = cArr2[(b & 255) >>> 4];
            cArr[i2 + 1] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static boolean m9702() {
        boolean m9706 = m9706();
        String str = Build.TAGS;
        if ((m9706 || str == null || !str.contains("test-keys")) && !new File("/system/app/Superuser.apk").exists()) {
            return !m9706 && new File("/system/xbin/su").exists();
        }
        return true;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static String m9703(String str) {
        byte[] bytes = str.getBytes();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bytes);
            return m9701(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            return "";
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m9704(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static synchronized long m9705(Context context) {
        long j;
        synchronized (AbstractC4901.class) {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
            j = memoryInfo.totalMem;
        }
        return j;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static boolean m9706() {
        if (Build.PRODUCT.contains("sdk")) {
            return true;
        }
        String str = Build.HARDWARE;
        return str.contains("goldfish") || str.contains("ranchu");
    }
}
