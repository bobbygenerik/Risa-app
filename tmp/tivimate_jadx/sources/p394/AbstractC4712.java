package p394;

import j$.util.DesugarCollections;
import j$.util.DesugarTimeZone;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import p035.AbstractC1220;
import p152.AbstractC2444;
import p164.C2571;
import p164.InterfaceC2588;
import p164.InterfaceC2592;
import p208.C2937;
import p208.C2940;
import p208.C2942;
import p208.C2950;
import p361.C4394;
import p430.C5097;
import p435.AbstractC5143;
import p435.AbstractC5154;

/* renamed from: ⁱᐧ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4712 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final TimeZone f17804 = DesugarTimeZone.getTimeZone("GMT");

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final String f17803 = AbstractC5143.m10121(AbstractC5143.m10115(C2937.class.getName(), "okhttp3."), "Client");

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final String m9441(C2940 c2940, boolean z) {
        int i = c2940.f11162;
        String str = c2940.f11161;
        if (AbstractC5143.m10116(str, ":", false)) {
            str = AbstractC1220.m3781(']', "[", str);
        }
        if (!z) {
            String str2 = c2940.f11166;
            if (i == (str2.equals("http") ? 80 : str2.equals("https") ? 443 : -1)) {
                return str;
            }
        }
        return str + ':' + i;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final void m9442(Socket socket) {
        try {
            socket.close();
        } catch (AssertionError e) {
            throw e;
        } catch (RuntimeException e2) {
            if (!AbstractC2444.m5562(e2.getMessage(), "bio == null")) {
                throw e2;
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final List m9443(List list) {
        return list.isEmpty() ? C5097.f19202 : list.size() == 1 ? Collections.singletonList(list.get(0)) : DesugarCollections.unmodifiableList(Arrays.asList(list.toArray()));
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final String m9444(String str, Object... objArr) {
        Locale locale = Locale.US;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        return String.format(locale, str, Arrays.copyOf(copyOf, copyOf.length));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final long m9445(C2942 c2942) {
        String m6485 = c2942.f11188.m6485("Content-Length");
        if (m6485 == null) {
            return -1L;
        }
        byte[] bArr = AbstractC4710.f17800;
        try {
            return Long.parseLong(m6485);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final List m9446(Object[] objArr) {
        return (objArr == null || objArr.length == 0) ? C5097.f19202 : objArr.length == 1 ? Collections.singletonList(objArr[0]) : DesugarCollections.unmodifiableList(Arrays.asList((Object[]) objArr.clone()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v3, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final boolean m9447(InterfaceC2588 interfaceC2588, int i) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long nanoTime = System.nanoTime();
        long mo5780 = interfaceC2588.mo5762().mo5781() ? interfaceC2588.mo5762().mo5780() - nanoTime : Long.MAX_VALUE;
        interfaceC2588.mo5762().mo5764(Math.min(mo5780, timeUnit.toNanos(i)) + nanoTime);
        try {
            ?? obj = new Object();
            while (interfaceC2588.mo5763(obj, 8192L) != -1) {
                obj.m5836();
            }
            if (mo5780 == Long.MAX_VALUE) {
                interfaceC2588.mo5762().mo5783();
                return true;
            }
            interfaceC2588.mo5762().mo5764(nanoTime + mo5780);
            return true;
        } catch (InterruptedIOException unused) {
            if (mo5780 == Long.MAX_VALUE) {
                interfaceC2588.mo5762().mo5783();
                return false;
            }
            interfaceC2588.mo5762().mo5764(nanoTime + mo5780);
            return false;
        } catch (Throwable th) {
            if (mo5780 == Long.MAX_VALUE) {
                interfaceC2588.mo5762().mo5783();
            } else {
                interfaceC2588.mo5762().mo5764(nanoTime + mo5780);
            }
            throw th;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C2950 m9448(List list) {
        ArrayList arrayList = new ArrayList(20);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C4394 c4394 = (C4394) it.next();
            C2571 c2571 = c4394.f16349;
            C2571 c25712 = c4394.f16348;
            String m5748 = c2571.m5748();
            String m57482 = c25712.m5748();
            arrayList.add(m5748);
            arrayList.add(AbstractC5143.m10114(m57482).toString());
        }
        return new C2950((String[]) arrayList.toArray(new String[0]));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final int m9449() {
        long millis = TimeUnit.MINUTES.toMillis(10L);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException("timeout".concat(" too large").toString());
        }
        if (millis != 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException("timeout".concat(" too small").toString());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final boolean m9450(C2940 c2940, C2940 c29402) {
        return AbstractC2444.m5562(c2940.f11161, c29402.f11161) && c2940.f11162 == c29402.f11162 && AbstractC2444.m5562(c2940.f11166, c29402.f11166);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final Charset m9451(InterfaceC2592 interfaceC2592, Charset charset) {
        int mo5800 = interfaceC2592.mo5800(AbstractC4710.f17799);
        if (mo5800 == -1) {
            return charset;
        }
        if (mo5800 == 0) {
            return AbstractC5154.f19435;
        }
        if (mo5800 == 1) {
            return AbstractC5154.f19434;
        }
        if (mo5800 == 2) {
            Charset charset2 = AbstractC5154.f19435;
            Charset charset3 = AbstractC5154.f19433;
            if (charset3 != null) {
                return charset3;
            }
            Charset forName = Charset.forName("UTF-32LE");
            AbstractC5154.f19433 = forName;
            return forName;
        }
        if (mo5800 == 3) {
            return AbstractC5154.f19431;
        }
        if (mo5800 != 4) {
            throw new AssertionError();
        }
        Charset charset4 = AbstractC5154.f19435;
        Charset charset5 = AbstractC5154.f19436;
        if (charset5 != null) {
            return charset5;
        }
        Charset forName2 = Charset.forName("UTF-32BE");
        AbstractC5154.f19436 = forName2;
        return forName2;
    }
}
