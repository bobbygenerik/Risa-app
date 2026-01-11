package p305;

import android.media.MediaFormat;
import android.net.Uri;
import android.opengl.EGL14;
import android.opengl.EGLDisplay;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.xmlpull.v1.XmlPullParser;
import p010.AbstractC0844;
import p275.ThreadFactoryC3523;
import p307.AbstractC3740;
import p392.C4675;

/* renamed from: ᐧˎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3731 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Object f14527 = new Object();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static ExecutorService f14528;

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static boolean m7839(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getEventType() == 3 && xmlPullParser.getName().equals(str);
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static void m7840(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static void m7841(C4675 c4675) {
        c4675.getClass();
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static void m7842(String str, String str2) {
        synchronized (f14527) {
            m7866(str2, null);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m7843(String str, boolean z) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(str));
        }
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static void m7844(MediaFormat mediaFormat, List list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer(AbstractC3740.m7932(i, "csd-"), ByteBuffer.wrap((byte[]) list.get(i)));
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static void m7845(String str, String str2) {
        synchronized (f14527) {
            m7866(str2, null);
        }
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static String m7846(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        int[] m7853 = m7853(str2);
        if (m7853[0] != -1) {
            sb.append(str2);
            m7864(sb, m7853[1], m7853[2]);
            return sb.toString();
        }
        int[] m78532 = m7853(str);
        if (m7853[3] == 0) {
            sb.append((CharSequence) str, 0, m78532[3]);
            sb.append(str2);
            return sb.toString();
        }
        if (m7853[2] == 0) {
            sb.append((CharSequence) str, 0, m78532[2]);
            sb.append(str2);
            return sb.toString();
        }
        int i = m7853[1];
        if (i != 0) {
            int i2 = m78532[0] + 1;
            sb.append((CharSequence) str, 0, i2);
            sb.append(str2);
            return m7864(sb, m7853[1] + i2, i2 + m7853[2]);
        }
        if (str2.charAt(i) == '/') {
            sb.append((CharSequence) str, 0, m78532[1]);
            sb.append(str2);
            int i3 = m78532[1];
            return m7864(sb, i3, m7853[2] + i3);
        }
        int i4 = m78532[0] + 2;
        int i5 = m78532[1];
        if (i4 >= i5 || i5 != m78532[2]) {
            int lastIndexOf = str.lastIndexOf(47, m78532[2] - 1);
            int i6 = lastIndexOf == -1 ? m78532[1] : lastIndexOf + 1;
            sb.append((CharSequence) str, 0, i6);
            sb.append(str2);
            return m7864(sb, m78532[1], i6 + m7853[2]);
        }
        sb.append((CharSequence) str, 0, i5);
        sb.append('/');
        sb.append(str2);
        int i7 = m78532[1];
        return m7864(sb, i7, m7853[2] + i7 + 1);
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static boolean m7847(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals(str);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static void m7848(String str, boolean z) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(str));
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m7849(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static void m7850(String str, String str2) {
        synchronized (f14527) {
            m7866(str2, null);
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m7851(Object obj, String str) {
        if (obj == null) {
            throw new IllegalStateException(str);
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static void m7852(String str, String str2) {
        synchronized (f14527) {
            m7866(str2, null);
        }
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static int[] m7853(String str) {
        int i;
        int[] iArr = new int[4];
        if (TextUtils.isEmpty(str)) {
            iArr[0] = -1;
            return iArr;
        }
        int length = str.length();
        int indexOf = str.indexOf(35);
        if (indexOf != -1) {
            length = indexOf;
        }
        int indexOf2 = str.indexOf(63);
        if (indexOf2 == -1 || indexOf2 > length) {
            indexOf2 = length;
        }
        int indexOf3 = str.indexOf(47);
        if (indexOf3 == -1 || indexOf3 > indexOf2) {
            indexOf3 = indexOf2;
        }
        int indexOf4 = str.indexOf(58);
        if (indexOf4 > indexOf3) {
            indexOf4 = -1;
        }
        int i2 = indexOf4 + 2;
        if (i2 < indexOf2 && str.charAt(indexOf4 + 1) == '/' && str.charAt(i2) == '/') {
            i = str.indexOf(47, indexOf4 + 3);
            if (i == -1 || i > indexOf2) {
                i = indexOf2;
            }
        } else {
            i = indexOf4 + 1;
        }
        iArr[0] = indexOf4;
        iArr[1] = i;
        iArr[2] = indexOf2;
        iArr[3] = length;
        return iArr;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m7854() {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                break;
            }
            if (z) {
                sb.append('\n');
            }
            String gluErrorString = GLU.gluErrorString(glGetError);
            if (gluErrorString == null) {
                gluErrorString = "error code: 0x" + Integer.toHexString(glGetError);
            }
            sb.append("glError: ");
            sb.append(gluErrorString);
            z = true;
        }
        if (z) {
            throw new Exception(sb.toString());
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static String m7855(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if (xmlPullParser.getAttributeName(i).equals(str)) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static boolean m7856(String str) {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        m7869("No EGL display.", !eglGetDisplay.equals(EGL14.EGL_NO_DISPLAY));
        m7869("Error in eglInitialize.", EGL14.eglInitialize(eglGetDisplay, new int[1], 0, new int[1], 0));
        m7854();
        String eglQueryString = EGL14.eglQueryString(eglGetDisplay, 12373);
        return eglQueryString != null && eglQueryString.contains(str);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m7857(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static Uri m7858(String str, String str2) {
        return Uri.parse(m7846(str, str2));
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static void m7859(String str, String str2, Throwable th) {
        synchronized (f14527) {
            m7866(str2, th);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m7860(int i, int i2) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException();
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static FloatBuffer m7861(float[] fArr) {
        return (FloatBuffer) ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr).flip();
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m7862(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static void m7863(String str, String str2, Throwable th) {
        synchronized (f14527) {
            m7866(str2, th);
        }
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static String m7864(StringBuilder sb, int i, int i2) {
        int i3;
        int i4;
        if (i >= i2) {
            return sb.toString();
        }
        if (sb.charAt(i) == '/') {
            i++;
        }
        int i5 = i;
        int i6 = i5;
        while (i5 <= i2) {
            if (i5 == i2) {
                i3 = i5;
            } else if (sb.charAt(i5) == '/') {
                i3 = i5 + 1;
            } else {
                i5++;
            }
            int i7 = i6 + 1;
            if (i5 == i7 && sb.charAt(i6) == '.') {
                sb.delete(i6, i3);
                i2 -= i3 - i6;
            } else {
                if (i5 == i6 + 2 && sb.charAt(i6) == '.' && sb.charAt(i7) == '.') {
                    i4 = sb.lastIndexOf("/", i6 - 2) + 1;
                    int i8 = i4 > i ? i4 : i;
                    sb.delete(i8, i3);
                    i2 -= i3 - i8;
                } else {
                    i4 = i5 + 1;
                }
                i6 = i4;
            }
            i5 = i6;
        }
        return sb.toString();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m7865(int i, int i2) {
        GLES20.glBindTexture(i, i2);
        m7854();
        GLES20.glTexParameteri(i, 10240, 9729);
        m7854();
        GLES20.glTexParameteri(i, 10241, 9729);
        m7854();
        GLES20.glTexParameteri(i, 10242, 33071);
        m7854();
        GLES20.glTexParameteri(i, 10243, 33071);
        m7854();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m7866(String str, Throwable th) {
        String replace;
        if (th != null) {
            synchronized (f14527) {
                Throwable th2 = th;
                while (true) {
                    if (th2 == null) {
                        replace = Log.getStackTraceString(th).trim().replace("\t", "    ");
                        break;
                    }
                    try {
                        if (th2 instanceof UnknownHostException) {
                            replace = "UnknownHostException (no network)";
                        } else {
                            th2 = th2.getCause();
                        }
                    } finally {
                    }
                }
            }
        } else {
            replace = null;
        }
        if (TextUtils.isEmpty(replace)) {
            return str;
        }
        StringBuilder m3017 = AbstractC0844.m3017(str, "\n  ");
        m3017.append(replace.replace("\n", "\n  "));
        m3017.append('\n');
        return m3017.toString();
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static synchronized Executor m7867() {
        ExecutorService executorService;
        synchronized (AbstractC3731.class) {
            try {
                if (f14528 == null) {
                    String str = AbstractC3712.f14481;
                    f14528 = Executors.newSingleThreadExecutor(new ThreadFactoryC3523(1, "ExoPlayer:BackgroundExecutor"));
                }
                executorService = f14528;
            } catch (Throwable th) {
                throw th;
            }
        }
        return executorService;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m7868(Object obj) {
        if (obj == null) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m7869(String str, boolean z) {
        if (!z) {
            throw new Exception(str);
        }
    }
}
